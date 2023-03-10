import 'dart:async';

import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:dropdown_search/dropdown_search.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:next_starter/application/country_state_city/city_provider.dart';
import 'package:next_starter/application/country_state_city/country_provider.dart';
import 'package:next_starter/application/country_state_city/province_provider.dart';
import 'package:next_starter/data/models/countrystatecity/city.dart';
import 'package:next_starter/data/models/countrystatecity/country.dart';
import 'package:next_starter/data/models/countrystatecity/province.dart';
import 'package:next_starter/presentation/pages/register/institution/cubit/register_institution_cubit.dart';
import 'package:next_starter/presentation/pages/register/institution/provider/selected_location_provider.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RegisterInstitutiondAddressInformationStep
    extends ConsumerStatefulWidget {
  const RegisterInstitutiondAddressInformationStep({super.key});

  @override
  ConsumerState<RegisterInstitutiondAddressInformationStep> createState() =>
      _RegisterVolunterdAddressInformationStepState();
}

class _RegisterVolunterdAddressInformationStepState
    extends ConsumerState<RegisterInstitutiondAddressInformationStep> {
  final _form = FormGroup({
    'country': FormControl<Country>(validators: [
      Validators.required,
    ]),
    'province': FormControl<Province>(
      validators: [
        Validators.required,
      ],
      disabled: true,
    ),
    'city': FormControl<City>(
      validators: [
        Validators.required,
      ],
      disabled: true,
    ),
    'address': FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(3),
    ]),
    'postalCode': FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(3),
    ]),
  });

  late final StreamSubscription _countrySubscription;
  late final StreamSubscription _provinceSubscription;
  late final StreamSubscription _citySubscription;

  @override
  void initState() {
    super.initState();

    final currentData = context.read<RegisterInstitutionCubit>().state.data;

    _form.control('country').value = currentData.country;
    _form.control('province').value = currentData.province;
    _form.control('city').value = currentData.city;
    _form.control('address').value = currentData.address;
    _form.control('postalCode').value = currentData.postalCode;

    _listenValueChangees();
  }

  void _listenValueChangees() {
    final notifier = ref.read(selectedLocationProvider.notifier);

    _countrySubscription = _form
        .control('country')
        .valueChanges
        .listen((country) => notifier.setCountry(country));

    _provinceSubscription = _form
        .control('province')
        .valueChanges
        .listen((province) => notifier.setProvince(province));

    _citySubscription = _form
        .control('city')
        .valueChanges
        .listen((city) => notifier.setCity(city));
  }

  @override
  void dispose() {
    _countrySubscription.cancel();
    _provinceSubscription.cancel();
    _citySubscription.cancel();
    super.dispose();
  }

  String? country, state, city;

  @override
  Widget build(BuildContext context) {
    ref.listen(selectedLocationProvider, _updateFormState);

    return WillPopScope(
      onWillPop: () async {
        context.read<RegisterInstitutionCubit>().previousStep();
        return false;
      },
      child: ReactiveForm(
        formGroup: _form,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            6.verticalSpace, // to fix floating label clipping
            Consumer(builder: (context, ref, _) {
              final country = ref.watch(countryProvider);

              final countries = country.maybeWhen<List<Country>>(
                data: (countries) => countries,
                orElse: () => [],
              );

              return DropdownSearch<Country>(
                selectedItem: _form.control('country').value,
                asyncItems: (String filter) async => countries
                    .where((country) => country.name
                        .toLowerCase()
                        .contains(filter.toLowerCase()))
                    .toList(),
                itemAsString: (Country? u) => u?.name ?? '-',
                onChanged: (value) => _form.control('country').value = value,
                popupProps: const PopupProps.menu(
                  showSearchBox: true,
                ),
                dropdownDecoratorProps: const DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    labelText: "City",
                    hintText: "City",
                  ),
                ),
              );
            }),
            33.verticalSpace,
            Consumer(builder: (context, ref, _) {
              final country = ref.watch(
                selectedLocationProvider.select((value) => value.country),
              );

              final province = ref.watch(
                provinceProvider(
                  ProvinceFamily(country: country),
                ),
              );

              final provinces = province.maybeWhen<List<Province>>(
                data: (provinces) => provinces,
                orElse: () => [],
              );

              if (provinces.isEmpty && country != null) {
                provinces.add(Province(
                  name: country.name,
                  id: country.id,
                  countryId: country.id,
                ));
              }

              return DropdownSearch<Province>(
                enabled: country != null,
                selectedItem: _form.control('province').value,
                asyncItems: (String filter) async => provinces
                    .where((province) => province.name
                        .toLowerCase()
                        .contains(filter.toLowerCase()))
                    .toList(),
                itemAsString: (Province? u) => u?.name ?? '-',
                onChanged: (value) => _form.control('province').value = value,
                popupProps: const PopupProps.menu(
                  showSearchBox: true,
                ),
                dropdownDecoratorProps: const DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    labelText: "Province",
                    hintText: "Province",
                  ),
                ),
              );
            }),
            33.verticalSpace,
            Consumer(builder: (context, ref, _) {
              final country = ref.watch(
                selectedLocationProvider.select((value) => value.country),
              );
              final province = ref.watch(
                selectedLocationProvider.select((value) => value.province),
              );

              final city = ref.watch(
                cityProvider(
                  CityFamily(
                    country: country,
                    province: province,
                  ),
                ),
              );

              final cities = city.maybeWhen<List<City>>(
                data: (cities) => cities,
                orElse: () => [],
              );

              if (cities.isEmpty && province != null) {
                cities.add(City(
                  name: province.name,
                  id: province.id,
                  provinceId: province.id,
                ));
              }

              return DropdownSearch<City>(
                enabled: country != null && province != null,
                selectedItem: _form.control('city').value,
                asyncItems: (String filter) async => cities
                    .where((city) =>
                        city.name.toLowerCase().contains(filter.toLowerCase()))
                    .toList(),
                itemAsString: (City? u) => u?.name ?? '-',
                onChanged: (value) => _form.control('city').value = value,
                popupProps: const PopupProps.menu(
                  showSearchBox: true,
                ),
                dropdownDecoratorProps: const DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    labelText: "City",
                    hintText: "City",
                  ),
                ),
              );
            }),
            33.verticalSpace,
            ReactiveTextField(
              formControlName: 'address',
              decoration: const InputDecoration(
                labelText: 'Address',
                hintText: 'Address',
              ),
            ),
            33.verticalSpace,
            ReactiveTextField(
              formControlName: 'postalCode',
              decoration: const InputDecoration(
                labelText: 'Postal Code',
                hintText: 'Postal Code',
              ),
            ),
            43.verticalSpace,
            _buildButton(),
          ],
        ),
      ),
    );
  }

  // reset form if country or province is changed
  void _updateFormState(oldState, state) {
    if (oldState.country != state.country) {
      _form.control('province').value = null;
      _form.control('city').value = null;
    }
    if (oldState.province != state.province) {
      _form.control('city').value = null;
    }

    _save();
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
            onPressed: () => _save().nextStep(),
            child: const Text("Next"),
          ),
        ),
      ],
    );
  }

  RegisterInstitutionCubit _save() {
    return context.read<RegisterInstitutionCubit>()
      ..updateAddressInformation(
        country: _form.control('country').value,
        province: _form.control('province').value,
        city: _form.control('city').value,
        address: _form.control('address').value,
        postalCode: _form.control('postalCode').value,
      );
  }
}
