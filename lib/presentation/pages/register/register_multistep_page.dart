import 'dart:math';

import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/presentation/theme/theme.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:next_starter/common/extensions/extensions.dart';

class RegisterMultiStepPage extends StatefulWidget {
  const RegisterMultiStepPage({super.key});

  @override
  State<RegisterMultiStepPage> createState() => _RegisterMultiStepPageState();
}

class _RegisterMultiStepPageState extends State<RegisterMultiStepPage> {
  final _form = FormGroup({
    'fullName': FormControl<String>(validators: [
      Validators.required,
    ]),
    'address': FormControl<String>(validators: [
      Validators.required,
    ])
  });

  final _maxStep = 2;
  int _currentStep = 0;

  void _nextStep() {
    setState(() {
      _currentStep = min(_maxStep, _currentStep + 1);
    });
  }

  void _previousStep() {
    setState(() {
      _currentStep = max(0, _currentStep - 1);
    });
  }

  void _jumpToStep(int step) {
    setState(() {
      _currentStep = step;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.only(top: 48),
        child: Container(
          color: Colors.white,
          child: SizedBox.expand(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                42.verticalSpace,
                Text(
                  "Register as Volunteer",
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Expanded(
                  child: Stepper(
                    elevation: 0,
                    type: StepperType.horizontal,
                    currentStep: _currentStep,
                    physics: const BouncingScrollPhysics(),
                    onStepContinue: _nextStep,
                    onStepCancel: _previousStep,
                    onStepTapped: _jumpToStep,
                    controlsBuilder:
                        (BuildContext context, ControlsDetails details) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          top: 16,
                          // add 8 to left and right since we can't customise
                          // the default stepper padding
                          left: 16,
                          right: 16,
                        ),
                        child: Row(
                          children: [
                            _currentStep != 0
                                ? Expanded(
                                    child: TextButton(
                                      onPressed: details.onStepCancel,
                                      style: ButtonStyle(
                                        side: MaterialStateProperty.all(
                                          BorderSide(
                                            color: context
                                                .colorScheme.onSurfaceVariant,
                                          ),
                                        ),
                                        padding: MaterialStateProperty.all(
                                          const EdgeInsets.symmetric(
                                              vertical: 16),
                                        ),
                                      ),
                                      child: const Text("Previous"),
                                    ),
                                  )
                                : const Spacer(),
                            16.horizontalSpace,
                            Expanded(
                              child: TextButton(
                                onPressed: details.onStepContinue,
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    context.colorScheme.primary,
                                  ),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  padding: MaterialStateProperty.all(
                                    const EdgeInsets.symmetric(vertical: 16),
                                  ),
                                ),
                                child: const Text("Next"),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    steps: [
                      Step(
                        title: const SizedBox.shrink(),
                        label: Text(
                          "Personal Data",
                          style: context.textTheme.labelSmall,
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep > 0
                            ? StepState.complete
                            : _currentStep == 0
                                ? StepState.editing
                                : StepState.disabled,
                        content: ReactiveForm(
                          formGroup: _form,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              children: [
                                ReactiveTextField(
                                  formControlName: "fullName",
                                  decoration: FormTheme.outlinedInput.copyWith(
                                    labelText: "Full Name",
                                  ),
                                  validationMessages: {
                                    'required': (error) =>
                                        "Full Name can't be empty!",
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Step(
                        title: const SizedBox.shrink(),
                        label: Text(
                          "Address Information",
                          style: context.textTheme.labelSmall,
                        ),
                        isActive: _currentStep >= 1,
                        state: _currentStep > 1
                            ? StepState.complete
                            : _currentStep == 1
                                ? StepState.editing
                                : StepState.disabled,
                        content: ReactiveForm(
                          formGroup: _form,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              children: [
                                ReactiveTextField(
                                  formControlName: "address",
                                  decoration: FormTheme.outlinedInput.copyWith(
                                    labelText: "Address",
                                  ),
                                  validationMessages: {
                                    'required': (error) =>
                                        "Address can't be empty!",
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Step(
                        title: const SizedBox.shrink(),
                        label: Text(
                          "Background",
                          style: context.textTheme.labelSmall,
                        ),
                        isActive: _currentStep >= 2,
                        state: _currentStep > 2
                            ? StepState.complete
                            : _currentStep == 2
                                ? StepState.editing
                                : StepState.disabled,
                        content: ReactiveForm(
                          formGroup: _form,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              children: [
                                ReactiveTextField(
                                  formControlName: "background",
                                  decoration: FormTheme.outlinedInput.copyWith(
                                    labelText: "Background",
                                  ),
                                  validationMessages: {
                                    'required': (error) =>
                                        "Background can't be empty!",
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                42.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
