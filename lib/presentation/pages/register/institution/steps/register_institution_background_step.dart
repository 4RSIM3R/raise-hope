import 'dart:async';

import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:next_starter/common/enums/organization_size.dart';
import 'package:next_starter/common/enums/organization_types.dart';
import 'package:next_starter/common/enums/type_of_help.dart';
import 'package:next_starter/common/extensions/extensions.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/pages/register/institution/cubit/register_institution_cubit.dart';
import 'package:next_starter/presentation/routes/app_router.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RegisterInstitutionBackgroundStep extends StatefulWidget {
  const RegisterInstitutionBackgroundStep({super.key});

  @override
  State<RegisterInstitutionBackgroundStep> createState() =>
      _RegisterVolunterPersonalDataStepState();
}

class _RegisterVolunterPersonalDataStepState
    extends State<RegisterInstitutionBackgroundStep> {
  final _form = FormGroup({
    'organizationType': FormControl<OrganizationType>(validators: [
      Validators.required,
    ]),
    'organizationSize': FormControl<OrganizationSize>(validators: [
      Validators.required,
    ]),
    'typeOfHelp': FormGroup({
      for (final typeOfHelp in TypeOfHelp.values)
        typeOfHelp.name: FormControl<bool>(value: false),
    }),
  });

  late final StreamSubscription _formValueChangesSubscription;

  @override
  void initState() {
    super.initState();

    final currentData = context.read<RegisterInstitutionCubit>().state.data;

    _form.control('organizationType').value = currentData.organizationType;
    _form.control('organizationSize').value = currentData.organizationSize;

    for (final TypeOfHelp typeOfHelp in currentData.typeOfHelp ?? []) {
      _form.control('typeOfHelp.${typeOfHelp.name}').value = true;
    }

    _formValueChangesSubscription =
        _form.valueChanges.listen((value) => _save());
  }

  @override
  void dispose() {
    _formValueChangesSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<RegisterInstitutionCubit>().previousStep();
        return false;
      },
      child: ReactiveForm(
        formGroup: _form,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            6.verticalSpace, // to fix floating label clipping
            DropdownSearch<OrganizationType>(
              selectedItem: _form.control('organizationType').value,
              items: OrganizationType.values,
              itemAsString: kGetOrganizationTypeName,
              onChanged: (value) {
                _form.control('organizationType').value = value;
                _save();
              },
              popupProps: const PopupProps.menu(
                showSearchBox: true,
              ),
              dropdownDecoratorProps: const DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  labelText: "Organization Type",
                  hintText: "Select Organization Type",
                ),
              ),
            ),
            20.verticalSpace,
            Text(
              "Organization Size",
              style: context.textTheme.bodySmall,
            ),
            ReactiveRadioListTile(
              formControlName: 'organizationSize',
              title: RichText(
                text: TextSpan(
                  text: 'Small',
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: const [
                    TextSpan(
                      text: ' (1-10) employees/volunteers',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              value: OrganizationSize.small,
            ),
            ReactiveRadioListTile(
              formControlName: 'organizationSize',
              title: RichText(
                text: TextSpan(
                  text: 'Medium',
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: const [
                    TextSpan(
                      text: ' (11-50) employees/volunteers',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              value: OrganizationSize.medium,
            ),
            ReactiveRadioListTile(
              formControlName: 'organizationSize',
              title: RichText(
                text: TextSpan(
                  text: 'Large',
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: const [
                    TextSpan(
                      text: ' (50+) employees/volunteers',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              value: OrganizationSize.large,
            ),
            20.verticalSpace,
            Text(
              "Type of Help",
              style: context.textTheme.bodySmall,
            ),
            ...TypeOfHelp.values.map((e) {
              return ReactiveCheckboxListTile(
                formControlName: 'typeOfHelp.${e.name}',
                title: Text(e.name.titleCase),
              );
            }).toList(),

            43.verticalSpace,
            _buildButton(),
          ],
        ),
      ),
    );
  }

  Row _buildButton() {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: () => _save().previousStep(),
            child: const Text("Back"),
          ),
        ),
        16.horizontalSpace,
        Expanded(
          child: FilledButton(
            onPressed: () {
              _save();
              locator<AppRouter>().push(
                RegisterCongratulationRoute(
                  isInstitution: true,
                ),
              );
            },
            child: const Text("Submit"),
          ),
        ),
      ],
    );
  }

  RegisterInstitutionCubit _save() {
    final List<TypeOfHelp> typeOfHelps = [];

    for (final typeOfHelp in TypeOfHelp.values) {
      if (_form.control('typeOfHelp.${typeOfHelp.name}').value) {
        typeOfHelps.add(typeOfHelp);
      }
    }

    return context.read<RegisterInstitutionCubit>()
      ..updateBackground(
        organizationType: _form.control('organizationType').value,
        organizationSize: _form.control('organizationSize').value,
        typeOfHelp: typeOfHelps,
      );
  }
}
