import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class ApiService {
  @LazySingleton()
  Dio dio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://beceran.nexteam.id/api/v1/',
        sendTimeout: const Duration(milliseconds: 1000 * 60 * 3),
        connectTimeout: const Duration(milliseconds: 1000 * 60 * 3),
        receiveTimeout: const Duration(milliseconds: 1000 * 60 * 3),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );

    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger());
    }

    return dio;
  }

  @Named("CountryStateCity")
  @lazySingleton
  Dio dioCountryStateCity() {
    // TODO: implement dioCountryStateCity
    throw UnimplementedError();
    // final dio = Dio(
    //   BaseOptions(
    //     baseUrl: 'https://beceran.nexteam.id/api/v1/',
    //     sendTimeout: const Duration(milliseconds: 1000 * 60 * 3),
    //     connectTimeout: const Duration(milliseconds: 1000 * 60 * 3),
    //     receiveTimeout: const Duration(milliseconds: 1000 * 60 * 3),
    //     headers: {
    //       'Accept': 'application/json',
    //       'Content-Type': 'application/json',
    //     },
    //   ),
    // );

    // if (kDebugMode) {
    //   dio.interceptors.add(PrettyDioLogger());
    // }

    // return dio;
  }

  @lazySingleton
  InternetConnectionChecker internetConnectionChecker() =>
      InternetConnectionChecker();

  @lazySingleton
  ImagePicker get imagePicker => ImagePicker();

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;

  @lazySingleton
  FirebaseFunctions get cloudFunctions => FirebaseFunctions.instance;

  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn(
        clientId:
            // using web client id to get idToken
            '834108486797-c0neuq5467sfb604cfoanrkhe1d8p15c.apps.googleusercontent.com',
      );
}
