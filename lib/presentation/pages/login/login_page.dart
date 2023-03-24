import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/common/extensions/extensions.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/routes/app_router.dart';
import 'package:next_starter/presentation/theme/color_schemes.dart';
import 'package:next_starter/presentation/theme/theme.dart';
import 'package:reactive_forms/reactive_forms.dart';

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
  bool _isLoading = false;

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
      child: Builder(builder: _buildContent),
    );
  }

  Scaffold _buildContent(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 48),
        child: ReactiveForm(
          formGroup: _form,
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
              Padding(
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
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
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
                      textInputAction: TextInputAction.done,
                      keyboardType: _isPasswordVisible
                          ? TextInputType.visiblePassword
                          : TextInputType.text,
                    ),
                  ],
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
              ReactiveFormConsumer(
                builder: (context, form, _) => SizedBox(
                  width: 280,
                  child: FilledButton(
                      onPressed: form.valid ? _login : null,
                      child: _isLoading
                          ? SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: context.colorScheme.onPrimary,
                              ),
                            )
                          : const Text("Login")),
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
      ),
    );
  }

  Future<void> _login() async {
    setState(() => _isLoading = true);
    final auth = locator<FirebaseAuth>();
    final router = locator<AppRouter>();

    try {
      await auth.signInWithEmailAndPassword(
        email: _form.control('email').value,
        password: _form.control('password').value,
      );

      router.replace(const HomeRoute());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        context.showSnackbar(
          title: 'User not found!',
          message: 'No user found for that email.',
        );
      } else if (e.code == 'wrong-password') {
        context.showSnackbar(
          title: 'Wrong password!',
          message: 'Wrong password provided for that user.',
        );
      } else {
        context.showSnackbar(
          title: 'Whoops!',
          message: e.message ?? 'Something went wrong.',
        );
      }
    } finally {
      setState(() => _isLoading = false);
    }
  }
}
