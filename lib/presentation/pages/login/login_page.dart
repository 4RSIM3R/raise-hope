import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/routes/app_router.dart';
import 'package:next_starter/presentation/theme/theme.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:next_starter/common/extensions/extensions.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

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
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.only(top: 48),
        child: Container(
          color: Colors.white,
          child: SizedBox.expand(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 150,
                    height: 150,
                    fit: BoxFit.contain,
                  ),
                  Text(
                    "Login as Volunteer",
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
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
                              labelText: "Email",
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
                              suffixIcon: GestureDetector(
                                onTap: () => setState(() {
                                  _isPasswordVisible = !_isPasswordVisible;
                                }),
                                child: Icon(_isPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off),
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
                  42.verticalSpace,
                  SizedBox(
                    width: 280,
                    child: ElevatedButton(
                      onPressed: () {
                        locator<AppRouter>().push(const HomeRoute());
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          context.colorScheme.primary,
                        ),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                            vertical: 16,
                          ),
                        ),
                      ),
                      child: const Text("Login"),
                    ),
                  ),
                  16.verticalSpace,
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
                  16.verticalSpace,
                  SizedBox(
                    width: 280,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.white,
                        ),
                        foregroundColor: MaterialStateProperty.all(
                          context.colorScheme.primary,
                        ),
                        side: MaterialStateProperty.all(
                          BorderSide(color: context.colorScheme.primary),
                        ),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(vertical: 16),
                        ),
                      ),
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
                  RichText(
                    text: TextSpan(
                      style: context.textTheme.labelMedium?.copyWith(
                        color: Colors.black87,
                      ),
                      children: [
                        const TextSpan(text: "Don't have an account yet? "),
                        TextSpan(
                          style: context.textTheme.labelMedium?.copyWith(
                            color: context.colorScheme.primary,
                          ),
                          text: "Register Now",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              locator<AppRouter>()
                                  .push(const RegisterInstitutionRoute());
                            },
                        )
                      ],
                    ),
                  ),
                  42.verticalSpace
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
