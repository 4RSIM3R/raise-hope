import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:next_starter/common/extensions/extensions.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _form = FormGroup({
    'fullName': FormControl<String>(validators: [
      Validators.required,
    ]),
    'email': FormControl<String>(validators: [
      Validators.required,
      Validators.email,
    ]),
    'phone': FormControl<String>(validators: [
      Validators.required,
    ]),
    'password': FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(8),
    ]),
    'confirmPassword': FormControl<String>(validators: [
      Validators.required,
      Validators.mustMatch("confirmPassword", "password")
    ])
  });

  bool _isPasswordVisible = false;
  bool _isPasswordConfirmationVisible = false;

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
                    "Register as Volunteer",
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
                            formControlName: "fullName",
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Full Name",
                            ),
                            validationMessages: {
                              'required': (error) => "Full Name can't be empty!"
                            },
                          ),
                          24.verticalSpace,
                          ReactiveTextField(
                            formControlName: "email",
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Email",
                            ),
                            validationMessages: {
                              'required': (error) => "Email can't be empty!",
                              'email': (error) => "Invalid email format!"
                            },
                          ),
                          24.verticalSpace,
                          ReactiveTextField(
                            formControlName: "phone",
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Phone",
                            ),
                            validationMessages: {
                              'required': (error) => "Phone can't be empty!"
                            },
                          ),
                          24.verticalSpace,
                          ReactiveTextField(
                            formControlName: "password",
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
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
                          24.verticalSpace,
                          ReactiveTextField(
                            formControlName: "confirmPassword",
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              labelText: "Confirm Password",
                              suffixIcon: GestureDetector(
                                onTap: () => setState(() {
                                  _isPasswordVisible = !_isPasswordVisible;
                                }),
                                child: Icon(_isPasswordConfirmationVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                            ),
                            obscureText: !_isPasswordConfirmationVisible,
                            autocorrect: false,
                            enableSuggestions: false,
                            validationMessages: {
                              'required': (error) =>
                                  "Password confirmation can't be empty!",
                              'mustMatch': (error) => "Password didn't match!",
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  42.verticalSpace,
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        context.colorScheme.primary,
                      ),
                      foregroundColor: MaterialStateProperty.all(
                        Colors.white,
                      ),
                      minimumSize: MaterialStateProperty.all(
                        const Size(280, 0),
                      ),
                      maximumSize: MaterialStateProperty.all(
                        const Size(280, double.infinity),
                      ),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                          vertical: 16,
                        ),
                      ),
                    ),
                    child: const Text("Register"),
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
                  TextButton(
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
                      minimumSize: MaterialStateProperty.all(
                        const Size(280, 0),
                      ),
                      maximumSize: MaterialStateProperty.all(
                        const Size(280, double.infinity),
                      ),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                          vertical: 16,
                        ),
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
                        const Text("Register with Google"),
                      ],
                    ),
                  ),
                  42.verticalSpace,
                  RichText(
                    text: TextSpan(
                      style: context.textTheme.labelMedium?.copyWith(
                        color: Colors.black87,
                      ),
                      children: [
                        const TextSpan(text: "Already have an account? "),
                        TextSpan(
                          style: context.textTheme.labelMedium?.copyWith(
                            color: context.colorScheme.primary,
                          ),
                          text: "Login Now",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // locator<AppRouter>().push();
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
