import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:next_starter/presentation/pages/register/volunteer/cubit/register_volunteer_cubit.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RegisterVolunterPersonalDataStep extends StatefulWidget {
  const RegisterVolunterPersonalDataStep({super.key});

  @override
  State<RegisterVolunterPersonalDataStep> createState() =>
      _RegisterVolunterPersonalDataStepState();
}

class _RegisterVolunterPersonalDataStepState
    extends State<RegisterVolunterPersonalDataStep> {
  final _form = FormGroup({
    'fullName': FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(3),
    ]),
    'email': FormControl<String>(validators: [
      Validators.required,
      Validators.email,
    ]),
    'phoneNumber': FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(10),
    ]),
    'address': FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(3),
    ]),
    'password': FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(8),
    ]),
  });

  @override
  void initState() {
    super.initState();

    final currentData = context.read<RegisterVolunteerCubit>().state.data;

    _form.control('fullName').value = currentData.fullName;
    _form.control('email').value = currentData.email;
    _form.control('phoneNumber').value = currentData.phoneNumber;
    _form.control('address').value = currentData.address;
    _form.control('password').value = currentData.password;
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: _form,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          6.verticalSpace, // to fix floating label clipping
          ReactiveTextField(
            formControlName: 'fullName',
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              labelText: 'Full Name',
              hintText: 'Enter your full name',
            ),
          ),
          33.verticalSpace,
          ReactiveTextField(
            formControlName: 'email',
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email address',
            ),
          ),
          33.verticalSpace,
          ReactiveTextField(
            formControlName: 'phoneNumber',
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              labelText: 'Phone Number',
              hintText: 'Enter your phone number',
            ),
          ),
          33.verticalSpace,
          ReactiveTextField(
            formControlName: 'address',
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              labelText: 'Address',
              hintText: 'Enter your address',
            ),
          ),
          33.verticalSpace,
          ReactiveTextField(
            formControlName: 'password',
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              labelText: 'Password',
              hintText: 'Enter your password',
            ),
          ),
          43.verticalSpace,
          _buildButton(),
        ],
      ),
    );
  }

  Row _buildButton() {
    return Row(
      children: [
        const Spacer(),
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: ReactiveFormBuilder(
              form: () => _form,
              builder: (context, form, child) {
                return FilledButton(
                  // TODO: disable button when form is invalid
                  onPressed: true
                      ? () {
                          _save().nextStep();
                        }
                      : null,
                  child: const Text('Submit'),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  RegisterVolunteerCubit _save() {
    return context.read<RegisterVolunteerCubit>()
      ..updatePersonalData(
        fullName: _form.control('fullName').value,
        email: _form.control('email').value,
        phoneNumber: _form.control('phoneNumber').value,
        address: _form.control('address').value,
        password: _form.control('password').value,
      );
  }
}
