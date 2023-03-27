import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:next_starter/common/enums/name_of_time_day.dart';
import 'package:next_starter/common/errors/api_exception.dart';
import 'package:next_starter/data/repositories/auth_repository.dart';

part 'register_volunteer_cubit.freezed.dart';
part 'register_volunteer_state.dart';

@injectable
class RegisterVolunteerCubit extends Cubit<RegisterVolunteerState> {
  final AuthRepository _authRepository;

  RegisterVolunteerCubit(
    this._authRepository,
  ) : super(
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

  Future<void> initializeGoogleSignIn(
    GoogleSignInAccount account,
    String validIdToken,
  ) async {
    final token = validIdToken;

    final newData = state.data.copyWith(
      fullName: account.displayName,
      email: account.email,
      idToken: token,
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

  Future<ApiException?> submit() {
    return state.maybeWhen(
      interest: _submit,
      orElse: () async => null,
    );
  }

  Future<ApiException?> _submit(RegisterVolunteerData data) async {
    final response = data.idToken != null
        ? await _authRepository.registerVolunteerWithGoogle(data.idToken!, data)
        : await _authRepository.registerVolunteer(data);

    return response.fold(
      (l) => l,
      (r) => null,
    );
  }
}
