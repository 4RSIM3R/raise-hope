import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:next_starter/common/extensions/extensions.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/routes/app_router.dart';
import 'package:next_starter/presentation/theme/color_schemes.dart';

class RegisterCongratulationPage extends StatelessWidget {
  final bool isInstitution;

  const RegisterCongratulationPage({
    super.key,
    this.isInstitution = false,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: context.theme.copyWith(
        colorScheme: context.colorScheme.copyWith(
          primary: isInstitution
              ? ColorSchemes.rawSecondaryColor
              : context.colorScheme.primary,
          secondary: isInstitution
              ? context.colorScheme.primary
              : context.colorScheme.secondary,
        ),
      ),
      child: Builder(builder: _buildPage),
    );
  }

  Scaffold _buildPage(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 290),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/abstract_background.png',
                      width: double.infinity,
                      fit: BoxFit.contain,
                      color: context.colorScheme.primary,
                      colorBlendMode: BlendMode.srcATop,
                    )
                        .animate(delay: NumExtensionX(500).milliseconds)
                        .fadeIn(
                          duration: NumExtensionX(1).seconds,
                        )
                        .slideY(
                          duration: NumExtensionX(1).seconds,
                          begin: 0.1,
                          curve: Curves.easeInOut,
                        ),
                    Positioned.fill(
                      child: Center(
                        child: LayoutBuilder(
                          builder: (_, constraints) => Image.asset(
                            'assets/images/logo.png',
                            width: constraints.maxWidth * 0.5,
                            fit: BoxFit.cover,
                          )
                              .animate()
                              .fadeIn(
                                duration: NumExtensionX(1).seconds,
                              )
                              .slideY(
                                duration: NumExtensionX(1).seconds,
                                begin: 0.1,
                                curve: Curves.easeOut,
                              ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            32.verticalSpace,
            Text(
              'Congratulation!',
              style: context.textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.w700,
                color: context.colorScheme.primary,
              ),
            ),
            6.verticalSpace,
            Text(
              'Your account is now created and ready to use',
              style: context.textTheme.bodyLarge!.copyWith(
                color: context.colorScheme.primary,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                child: Text(
                  isInstitution
                      ? 'Search for Volunteer!'
                      : 'Start Your Mission!',
                ),
                onPressed: () => locator<AppRouter>().pushAndPopUntil(
                  const HomeRoute(),
                  predicate: (route) => route.isFirst,
                ),
              ),
            ),
            32.verticalSpace,
          ],
        ),
      ),
    );
  }
}
