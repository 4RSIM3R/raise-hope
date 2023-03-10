import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:next_starter/data/models/countrystatecity/city.dart';
import 'package:next_starter/data/models/countrystatecity/country.dart';
import 'package:next_starter/data/models/countrystatecity/province.dart';
import 'package:next_starter/data/repositories/country_state_city_repository.dart';

part 'city_provider.freezed.dart';

@freezed
class CityFamily with _$CityFamily {
  const factory CityFamily({
    required Country? country,
    required Province? province,
  }) = _CityFamily;
}

final cityProvider = FutureProvider.family<List<City>, CityFamily>(
  (ref, data) async {
    if (data.country == null || data.province == null) {
      return [];
    }

    final repository = ref.watch(countryStateCityRepositoryProvider);

    final result = await repository.getCity(
      data.country!,
      data.province!,
    );

    return result.fold((l) => [], (r) => r);
  },
);
