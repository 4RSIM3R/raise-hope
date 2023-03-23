import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:next_starter/common/enums/organization_types.dart';
import 'package:next_starter/common/errors/api_exception.dart';
import 'package:next_starter/presentation/pages/register/institution/cubit/register_institution_cubit.dart';
import 'package:next_starter/presentation/pages/register/volunteer/cubit/register_volunteer_cubit.dart';

@injectable
class AuthRepository {
  final FirebaseAuth _auth;
  final FirebaseFunctions _functions;

  AuthRepository(this._auth, this._functions);

  Future<Either<ApiException, Unit>> registerVolunteer(
    RegisterVolunteerData data,
  ) async {
    try {
      final callable = _functions.httpsCallable('registerVolunteer');

      final payload = {
        'name': data.fullName,
        'email': data.email,
        'phone': data.phoneNumber,
        'address': data.address,
        'password': data.password,
        'availability': data.daysOfWeekAvailable!.toList(),
        'preferedTime': data.preferedTime!.map((e) => e.name).toList(),
        'interests': data.interest!.toList(),
      };

      final result = await callable.call(payload);

      if (result.data['error'] != null) {
        return left(ApiException.unAuthorized(result.data['error']));
      }

      final token = result.data['token'];

      if (token != null) {
        await _auth.signInWithCustomToken(token);
        return right(unit);
      } else {
        return left(const ApiException.unAuthorized('Invalid token'));
      }
    } on Exception catch (e) {
      rethrow;
      return left(ApiException.unAuthorized(e.toString()));
    }
  }

  Future<Either<ApiException, Unit>> registerInstitution(
    RegisterInstitutionData data,
  ) async {
    try {
      final callable = _functions.httpsCallable('registerInstitution');

      final payload = {
        'name': data.name,
        'email': data.email,
        'website': data.website,
        'phoneNumber': data.phoneNumber,
        'password': data.password,
        'country': data.country!.name,
        'province': data.province!.name,
        'city': data.city!.name,
        'address': data.address,
        'postalCode': data.postalCode,
        'organizationType': kGetOrganizationTypeName(data.organizationType!),
        'organizationSize': data.organizationSize!.name,
        'typeOfHelp': data.typeOfHelp!.map((e) => e.name).toList(),
      };

      final result = await callable.call(payload);

      if (result.data['error'] != null) {
        return left(ApiException.unAuthorized(result.data['error']));
      }

      final token = result.data['token'];

      if (token != null) {
        await _auth.signInWithCustomToken(token);
        return right(unit);
      } else {
        return left(const ApiException.unAuthorized('Invalid token'));
      }
    } on Exception catch (e) {
      return left(ApiException.unAuthorized(e.toString()));
    }
  }
}
