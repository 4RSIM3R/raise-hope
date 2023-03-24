// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:cloud_functions/cloud_functions.dart' as _i7;
import 'package:dio/dio.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i10;
import 'package:next_starter/common/network/network_info.dart' as _i11;
import 'package:next_starter/common/utils/image_resize.dart' as _i9;
import 'package:next_starter/data/datasources/session/session_source.dart'
    as _i12;
import 'package:next_starter/data/repositories/auth_repository.dart' as _i13;
import 'package:next_starter/presentation/pages/register/institution/cubit/register_institution_cubit.dart'
    as _i14;
import 'package:next_starter/presentation/pages/register/volunteer/cubit/register_volunteer_cubit.dart'
    as _i15;
import 'package:next_starter/presentation/routes/app_router.dart' as _i3;

import 'data/datasources/network/network_source.dart' as _i16;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final apiService = _$ApiService();
  gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
  gh.lazySingleton<_i4.Dio>(() => apiService.dio());
  gh.lazySingleton<_i4.Dio>(
    () => apiService.dioCountryStateCity(),
    instanceName: 'CountryStateCity',
  );
  gh.lazySingleton<_i5.FirebaseAuth>(() => apiService.firebaseAuth);
  gh.lazySingleton<_i6.FirebaseFirestore>(() => apiService.firebaseFirestore);
  gh.lazySingleton<_i7.FirebaseFunctions>(() => apiService.cloudFunctions);
  gh.lazySingleton<_i8.ImagePicker>(() => apiService.imagePicker);
  gh.lazySingleton<_i9.ImageResizeUtils>(() => _i9.ImageResizeUtils());
  gh.lazySingleton<_i10.InternetConnectionChecker>(
      () => apiService.internetConnectionChecker());
  gh.lazySingleton<_i11.NetworkInfo>(
      () => _i11.NetworkInfoImpl(gh<_i10.InternetConnectionChecker>()));
  gh.lazySingleton<_i12.SessionSource>(() => _i12.SessionSource(gh<String>()));
  gh.factory<_i13.AuthRepository>(() => _i13.AuthRepository(
        gh<_i5.FirebaseAuth>(),
        gh<_i7.FirebaseFunctions>(),
      ));
  gh.factory<_i14.RegisterInstitutionCubit>(
      () => _i14.RegisterInstitutionCubit(gh<_i13.AuthRepository>()));
  gh.factory<_i15.RegisterVolunteerCubit>(
      () => _i15.RegisterVolunteerCubit(gh<_i13.AuthRepository>()));
  return getIt;
}

class _$ApiService extends _i16.ApiService {}
