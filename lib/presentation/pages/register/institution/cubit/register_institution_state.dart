part of 'register_institution_cubit.dart';

@freezed
class RegisterInstitutionState with _$RegisterInstitutionState {
  const factory RegisterInstitutionState.personalData(
    RegisterInstitutionData data,
  ) = _PersonalData;
  const factory RegisterInstitutionState.addressInformation(
    RegisterInstitutionData data,
  ) = _AddressInformation;
  const factory RegisterInstitutionState.background(
    RegisterInstitutionData data,
  ) = _Background;
}

@freezed
class RegisterInstitutionData with _$RegisterInstitutionData {
  const factory RegisterInstitutionData({
    String? name,
    String? email,
    String? website,
    String? phoneNumber,
    String? password,
    Country? country,
    Province? province,
    City? city,
    String? address,
    String? postalCode,
    OrganizationType? organizationType,
    OrganizationSize? organizationSize,
    List<TypeOfHelp>? typeOfHelp,
  }) = _RegisterInstitutionData;
}
