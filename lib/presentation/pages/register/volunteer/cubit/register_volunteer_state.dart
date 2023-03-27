part of 'register_volunteer_cubit.dart';

@freezed
class RegisterVolunteerState with _$RegisterVolunteerState {
  const factory RegisterVolunteerState.personalData(
    RegisterVolunteerData data,
  ) = _PersonalData;
  const factory RegisterVolunteerState.availability(
    RegisterVolunteerData data,
  ) = _Availability;
  const factory RegisterVolunteerState.interest(
    RegisterVolunteerData data,
  ) = _Interest;
}

@freezed
class RegisterVolunteerData with _$RegisterVolunteerData {
  const factory RegisterVolunteerData({
    String? fullName,
    String? email,
    String? phoneNumber,
    String? address,
    String? password,
    List<int>? daysOfWeekAvailable,
    List<NameOfTimeDay>? preferedTime,
    List<String>? interest,

    // register with current user (from google, etc)
    @Default(false) bool isUsingCurrentUser,
  }) = _RegisterVolunteerData;
}
