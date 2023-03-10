import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/routes/app_router.dart';
import 'package:next_starter/presentation/theme/color_schemes.dart';
import 'package:next_starter/presentation/theme/theme.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:next_starter/common/extensions/extensions.dart';

class LoginPage extends StatefulWidget {
  final bool isInstitution;

  const LoginPage({
    super.key,
    this.isInstitution = false,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _form = FormGroup({
    'email': FormControl<String>(validators: [
      Validators.required,
      Validators.email,
    ]),
    'password': FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(8),
    ]),
  });

  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: !widget.isInstitution
          ? context.theme
          : context.theme.copyWith(
              colorScheme: context.theme.colorScheme.copyWith(
                primary: ColorSchemes.rawSecondaryColor,
              ),
            ),
      child: Builder(builder: (context) => _buildContent(context)),
    );
  }

  Scaffold _buildContent(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 100,
              fit: BoxFit.contain,
            ),
            41.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Please enter your email and password to continue.",
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            42.verticalSpace,
            ReactiveForm(
              formGroup: _form,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    ReactiveTextField(
                      formControlName: "email",
                      decoration: FormTheme.outlinedInput.copyWith(
                        labelText:
                            "${widget.isInstitution ? 'Institution ' : ''}Email",
                        hintText: 'example@gmail.com',
                      ),
                      validationMessages: {
                        'required': (error) => "Email can't be empty!",
                        'email': (error) => "Invalid email format!"
                      },
                    ),
                    24.verticalSpace,
                    ReactiveTextField(
                      formControlName: "password",
                      decoration: FormTheme.outlinedInput.copyWith(
                        labelText: "Password",
                        hintText: '*********',
                        suffixIcon: GestureDetector(
                          onTap: () => setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          }),
                          child: Icon(
                            _isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                      ),
                      obscureText: !_isPasswordVisible,
                      autocorrect: false,
                      enableSuggestions: false,
                      validationMessages: {
                        'required': (error) => "Password can't be empty!",
                        'minLength': (error) =>
                            "Password needs to be at least 8 characters",
                      },
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Forgot Password?"),
                ),
              ),
            ),
            42.verticalSpace,
            SizedBox(
              width: 280,
              child: FilledButton(
                onPressed: () {
                  // locator<AppRouter>().push(const LoginRoute());
                },
                child: const Text("Login"),
              ),
            ),
            28.verticalSpace,
            SizedBox(
              width: 180,
              child: Row(
                children: [
                  const Expanded(child: Divider()),
                  20.horizontalSpace,
                  const Text("or"),
                  20.horizontalSpace,
                  const Expanded(child: Divider()),
                ],
              ),
            ),
            28.verticalSpace,
            SizedBox(
              width: 280,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: context.colorScheme.primary,
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icon/google_icon.png',
                      width: 18,
                      height: 18,
                      fit: BoxFit.contain,
                    ),
                    8.horizontalSpace,
                    const Text("Login with Google"),
                  ],
                ),
              ),
            ),
            42.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account yet? "),
                TextButton(
                  child: const Text("Register Now"),
                  onPressed: () {
                    final destination = widget.isInstitution
                        ? const RegisterInstitutionRoute()
                        : const RegisterVolunteerRoute();

                    locator<AppRouter>().push(destination);
                  },
                ),
              ],
            ),
            42.verticalSpace
          ],
        ),
      ),
    );
  }
}
