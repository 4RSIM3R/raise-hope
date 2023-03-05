import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:next_starter/common/enums/name_of_time_day.dart';

part 'register_volunteer_state.dart';
part 'register_volunteer_cubit.freezed.dart';

@injectable
class RegisterVolunteerCubit extends Cubit<RegisterVolunteerState> {
  RegisterVolunteerCubit()
      : super(
          const RegisterVolunteerState.personalData(
            RegisterVolunteerData(),
          ),
        );

  void updatePersonalData({
    String? fullName,
    String? email,
    String? phoneNumber,
    String? address,
    String? password,
  }) {
    final newData = state.data.copyWith(
      fullName: fullName,
      email: email,
      phoneNumber: phoneNumber,
      address: address,
      password: password,
    );

    emit(state.copyWith(data: newData));
  }

  void updateAvailability({
    List<int>? daysOfWeekAvailable,
    List<NameOfTimeDay>? preferedTime,
  }) {
    final newData = state.data.copyWith(
      daysOfWeekAvailable: daysOfWeekAvailable,
      preferedTime: preferedTime,
    );

    emit(state.copyWith(data: newData));
  }

  void updateInterest({
    List<String>? interest,
  }) {
    final newData = state.data.copyWith(
      interest: interest,
    );

    emit(state.copyWith(data: newData));
  }

  void previousStep() {
    state.maybeWhen(
      availability: (data) => emit(RegisterVolunteerState.personalData(data)),
      interest: (data) => emit(RegisterVolunteerState.availability(data)),
      orElse: () {},
    );
  }

  void nextStep() {
    state.maybeWhen(
      personalData: (data) => emit(RegisterVolunteerState.availability(data)),
      availability: (data) => emit(RegisterVolunteerState.interest(data)),
      orElse: () {},
    );
  }
}
