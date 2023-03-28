// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i8;
import 'package:cloud_functions/cloud_functions.dart' as _i9;
import 'package:dio/dio.dart' as _i4;
import 'package:firebase_analytics/firebase_analytics.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i7;
import 'package:firebase_performance/firebase_performance.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i11;
import 'package:image_picker/image_picker.dart' as _i12;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i14;
import 'package:next_starter/common/network/network_info.dart' as _i15;
import 'package:next_starter/common/utils/image_resize.dart' as _i13;
import 'package:next_starter/data/datasources/session/session_source.dart'
    as _i16;
import 'package:next_starter/data/repositories/auth_repository.dart' as _i17;
import 'package:next_starter/presentation/pages/register/institution/cubit/register_institution_cubit.dart'
    as _i18;
import 'package:next_starter/presentation/pages/register/volunteer/cubit/register_volunteer_cubit.dart'
    as _i19;
import 'package:next_starter/presentation/routes/app_router.dart' as _i3;

import 'data/datasources/network/network_source.dart' as _i20;

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
  gh.lazySingleton<_i5.FirebaseAnalytics>(() => apiService.firebaseAnalytics);
  gh.lazySingleton<_i6.FirebaseAuth>(() => apiService.firebaseAuth);
  gh.lazySingleton<_i7.FirebaseCrashlytics>(
      () => apiService.firebaseCrashlytics);
  gh.lazySingleton<_i8.FirebaseFirestore>(() => apiService.firebaseFirestore);
  gh.lazySingleton<_i9.FirebaseFunctions>(() => apiService.cloudFunctions);
  gh.lazySingleton<_i10.FirebasePerformance>(
      () => apiService.firebasePerformance);
  gh.lazySingleton<_i11.GoogleSignIn>(() => apiService.googleSignIn);
  gh.lazySingleton<_i12.ImagePicker>(() => apiService.imagePicker);
  gh.lazySingleton<_i13.ImageResizeUtils>(() => _i13.ImageResizeUtils());
  gh.lazySingleton<_i14.InternetConnectionChecker>(
      () => apiService.internetConnectionChecker());
  gh.lazySingleton<_i15.NetworkInfo>(
      () => _i15.NetworkInfoImpl(gh<_i14.InternetConnectionChecker>()));
  gh.lazySingleton<_i16.SessionSource>(() => _i16.SessionSource(gh<String>()));
  gh.factory<_i17.AuthRepository>(() => _i17.AuthRepository(
        gh<_i6.FirebaseAuth>(),
        gh<_i9.FirebaseFunctions>(),
      ));
  gh.factory<_i18.RegisterInstitutionCubit>(() => _i18.RegisterInstitutionCubit(
        gh<_i17.AuthRepository>(),
        gh<_i6.FirebaseAuth>(),
      ));
  gh.factory<_i19.RegisterVolunteerCubit>(() => _i19.RegisterVolunteerCubit(
        gh<_i17.AuthRepository>(),
        gh<_i6.FirebaseAuth>(),
      ));
  return getIt;
}

class _$ApiService extends _i20.ApiService {}
