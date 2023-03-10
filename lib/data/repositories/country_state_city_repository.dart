import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:next_starter/common/errors/api_exception.dart';
import 'package:next_starter/data/models/countrystatecity/city.dart';
import 'package:next_starter/data/models/countrystatecity/country.dart';
import 'package:next_starter/data/models/countrystatecity/province.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final countryStateCityRepositoryProvider = Provider<CountryStateCityRepository>(
  (ref) => CountryStateCityLocalImpl(),
);

abstract class CountryStateCityRepository {
  Future<Either<ApiException, List<Country>>> getCountry();
  Future<Either<ApiException, List<Province>>> getProvince(Country country);
  Future<Either<ApiException, List<City>>> getCity(
    Country country,
    Province province,
  );
}

class CountryStateCityLocalImpl implements CountryStateCityRepository {
  List<Map<String, dynamic>> _data = [];

  Future<void> _loadData() async {
    if (_data.isEmpty) {
      _data = await rootBundle.loadStructuredData<List<Map<String, dynamic>>>(
        'assets/json/country_state_city.json',
        (jsonStr) async {
          final data = jsonDecode(jsonStr) as List;
          return data.map((e) => e as Map<String, dynamic>).toList();
        },
      );
    }
  }

  @override
  Future<Either<ApiException, List<Country>>> getCountry() async {
    await _loadData();
    final data = _data.map((e) => Country.fromJson(e)).toList();
    return Right(data);
  }

  @override
  Future<Either<ApiException, List<Province>>> getProvince(
    Country country,
  ) async {
    await _loadData();
    final data = _data
        .firstWhere((e) => e['id'] == country.id)['state']
        .map<Province>((e) => Province.fromJson(e))
        .toList();

    return Right(data);
  }

  @override
  Future<Either<ApiException, List<City>>> getCity(
    Country country,
    Province province,
  ) async {
    await _loadData();
    final data = _data
        .firstWhere((e) => e['id'] == country.id)['state']
        .firstWhere((e) => e['id'] == province.id)['city']
        .map<City>((e) => City.fromJson(e))
        .toList();
    return Right(data);
  }
}
  

// class CountryStateCityApiImpl implements CountryStateCityRepository {
//   final Dio _dio;
//   final SessionSource _sessionSource;

//   CountryStateCityApiImpl(this._dio, this._sessionSource);

//   Future<String> renewToken() async {
//     final response = await _dio.get(
//       '/getaccesstoken',
//       options: Options(
//         headers: {
//           "Accept": "application/json",
//           "api-token":
//               "PX5aV580HGBt_b4o8ff4n9EzbeQ_gJIZFCCEq4-S8MfLLV5yDPHMoK61OasXwVGby5s",
//           "user-email": "tioirawan063@gmail.com"
//         },
//       ),
//     );

//     return response.data['auth_token'];
//   }

//   Future<String> get _token async {
//     String? token = await _sessionSource.token;

//     if (token == null) {
//       token = await renewToken();
//       await _sessionSource.setToken(token);
//     }

//     return token;
//   }

//   @override
//   Future<Either<ApiException, List<Country>>> getCountry() async {
//     try {
//       final response = await _dio.get(
//         '/countries',
//         options: Options(
//           headers: {'Authorization': 'Bearer ${await _token}'},
//         ),
//       );

//       final List<Country> countries =
//           (response.data as List).map((e) => Country.fromJson(e)).toList();

//       return right(countries);
//     } catch (e) {
//       return left(const ApiException.network());
//     }
//   }

//   @override
//   Future<Either<ApiException, List<Province>>> getProvince(
//     Country country,
//   ) async {
//     try {
//       final response = await _dio.get(
//         '/states/${country.name}',
//         options: Options(
//           headers: {'Authorization': 'Bearer ${await _token}'},
//         ),
//       );

//       final List<Province> provinces =
//           (response.data as List).map((e) => Province.fromJson(e)).toList();

//       return right(provinces);
//     } catch (e) {
//       return left(const ApiException.network());
//     }
//   }

//   @override
//   Future<Either<ApiException, List<City>>> getCity(
//     Country country,
//     Province province,
//   ) async {
//     try {
//       final response = await _dio.get(
//         '/cities/${province.name}',
//         options: Options(
//           headers: {'Authorization': 'Bearer ${await _token}'},
//         ),
//       );

//       final List<City> cities =
//           (response.data as List).map((e) => City.fromJson(e)).toList();

//       return right(cities);
//     } catch (e) {
//       return left(const ApiException.network());
//     }
//   }
// }
