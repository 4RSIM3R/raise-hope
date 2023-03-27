import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:next_starter/common/extensions/extensions.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/pages/register/components/custom_stepper.dart';
import 'package:next_starter/presentation/pages/register/volunteer/steps/register_volunter_availability.dart';
import 'package:next_starter/presentation/pages/register/volunteer/steps/register_volunter_interest.dart';
import 'package:next_starter/presentation/pages/register/volunteer/steps/register_volunter_personal_data_step.dart';

import 'cubit/register_volunteer_cubit.dart';

class RegisterVolunteerPage extends StatefulWidget {
  final GoogleSignInAccount? googleAccount;
  final String? validIdToken;

  const RegisterVolunteerPage({
    super.key,
    this.googleAccount,
    this.validIdToken,
  }) : assert(googleAccount == null || validIdToken != null);

  @override
  State<RegisterVolunteerPage> createState() => _RegisterVolunteerPageState();
}

class _RegisterVolunteerPageState extends State<RegisterVolunteerPage> {
  final ScrollController _scrollController = ScrollController();
  final PageController _pageController = PageController();

  final List<Widget> _steps = [
    const RegisterVolunterPersonalDataStep(),
    const RegisterVolunteerAvailability(),
    const RegisterVolunteerInterest(),
  ];

  RegisterVolunteerState? _previousState;

  int _mapStateToIndex(RegisterVolunteerState state) => state.when(
        personalData: (_) => 0,
        availability: (_) => 1,
        interest: (_) => 2,
      );

  @override
  void dispose() {
    _pageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) {
          final cubit = locator<RegisterVolunteerCubit>();

          if (widget.googleAccount != null) {
            cubit.initializeGoogleSignIn(
              widget.googleAccount!,
              widget.validIdToken!,
            );
          }

          return cubit;
        },
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 100,
              backgroundColor: context.colorScheme.background,
              surfaceTintColor: context.colorScheme.background,
              shadowColor: context.colorScheme.onBackground.withOpacity(0.2),
              elevation: 1,
              flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1,
                title: Text(
                  "Register as Volunteer",
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                centerTitle: true,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Text(
                    //   "Register as Volunteer",
                    //   style: context.textTheme.titleLarge?.copyWith(
                    //     fontWeight: FontWeight.w700,
                    //   ),
                    // ),
                    // 14.verticalSpace,
                    const Text(
                      "Register now to join our community of volunteers and make a difference in people's lives!",
                      textAlign: TextAlign.center,
                    ),
                    32.verticalSpace,
                    BlocBuilder<RegisterVolunteerCubit, RegisterVolunteerState>(
                        builder: (context, state) {
                      return CustomStepper(
                        steps: const [
                          CustomStepperStep(
                            icon: Icons.person,
                            title: "Personal Data",
                          ),
                          CustomStepperStep(
                            icon: Icons.home,
                            title: "Availability",
                          ),
                          CustomStepperStep(
                            icon: Icons.work,
                            title: "Interest",
                          ),
                        ],
                        currentStep: _mapStateToIndex(state),
                      );
                    }),
                    52.verticalSpace,
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child:
                  BlocListener<RegisterVolunteerCubit, RegisterVolunteerState>(
                listener: _onRegisterStateChanges,
                child: ExpandablePageView.builder(
                  controller: _pageController,
                  itemCount: _steps.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: _steps[index],
                    );
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: 43.verticalSpace,
            ),
          ],
        ),
      ),
    );
  }

  void _onRegisterStateChanges(context, RegisterVolunteerState state) {
    if (_previousState != null &&
        _mapStateToIndex(_previousState!) == _mapStateToIndex(state)) {
      return;
    }

    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    _pageController.animateToPage(
      _mapStateToIndex(state),
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );

    _previousState = state;
  }
}
