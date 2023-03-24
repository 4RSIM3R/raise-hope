import 'dart:async';

import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:loop_page_view/loop_page_view.dart';
import 'package:next_starter/common/extensions/extensions.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/hooks/loop_page_controller.dart';
import 'package:next_starter/presentation/routes/app_router.dart';

class OnboardingData {
  final String title;
  final String description;
  final String image;

  const OnboardingData({
    required this.title,
    required this.description,
    required this.image,
  });
}

class OnboardingPage extends HookWidget {
  const OnboardingPage({super.key});

  final List<OnboardingData> _onboardingData = const [
    OnboardingData(
      title: "Make a difference",
      description:
          "Helping others in need and contributing to a greater cause are two of the most fulfilling and rewarding experiences a person can have",
      image: "assets/images/onboarding/1.png",
    ),
    OnboardingData(
      title: "Connect with others",
      description: "Meet like-minded individuals and build meaningful connections in your community",
      image: "assets/images/onboarding/2.png",
    ),
    OnboardingData(
      title: "Build skills",
      description: "Gain new skills and experiences that can help you in your personal and professional life.",
      image: "assets/images/onboarding/3.png",
    ),
  ];

  static final _animationDelay = 4.seconds;
  static final _animationDuration = 500.milliseconds;

  @override
  Widget build(BuildContext context) {
    final controller = useLoopPageController(initialPage: 0);
    final currentPage = useState(0);

    useEffect(() {
      final timer = Timer.periodic(
        _animationDelay,
        (timer) => controller.animateToPage(
          currentPage.value + 1,
          duration: _animationDuration,
          curve: Curves.easeInOut,
        ),
      );
      return timer.cancel;
    }, [controller]);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 1,
              child: LoopPageView.builder(
                controller: controller,
                itemCount: _onboardingData.length,
                onPageChanged: (index) => currentPage.value = index,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 54),
                  child: Image.asset(
                    _onboardingData[index].image,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          19.verticalSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    _onboardingData.length,
                    (index) => AnimatedContainer(
                      duration: _animationDuration,
                      width: currentPage.value == index ? 13 : 5,
                      height: 5,
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      decoration: BoxDecoration(
                        color: currentPage.value == index
                            ? context.theme.colorScheme.primary
                            : context.theme.colorScheme.onBackground.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                19.verticalSpace,
                AnimatedSwitcher(
                  duration: _animationDuration,
                  child: Column(
                    key: ValueKey(currentPage.value),
                    children: [
                      Text(
                        _onboardingData[currentPage.value].title,
                        style: context.theme.textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      13.verticalSpace,
                      Text(
                        _onboardingData[currentPage.value].description,
                        style: context.theme.textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                38.verticalSpace,
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {
                      locator<AppRouter>().push(LoginRoute());
                    },
                    child: const Text("Join as Volunteer"),
                  ),
                ),
                22.verticalSpace,
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      locator<AppRouter>().push(LoginRoute(
                        isInstitution: true,
                      ));
                    },
                    child: const Text("Join as Institution / Organization"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
