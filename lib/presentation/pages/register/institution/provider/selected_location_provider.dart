import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:next_starter/data/models/countrystatecity/city.dart';
import 'package:next_starter/data/models/countrystatecity/country.dart';
import 'package:next_starter/data/models/countrystatecity/province.dart';

part 'selected_location_provider.freezed.dart';

@freezed
class SelectedLocation with _$SelectedLocation {
  const factory SelectedLocation({
    Country? country,
    Province? province,
    City? city,
  }) = _SelectedLocation;
}

final selectedLocationProvider =
    StateNotifierProvider<SelectedLocationProvider, SelectedLocation>((ref) {
  return SelectedLocationProvider();
});

class SelectedLocationProvider extends StateNotifier<SelectedLocation> {
  SelectedLocationProvider() : super(const SelectedLocation());

  void setCountry(Country? country) {
    if (country == state.country) return;
    state = state.copyWith(country: country, province: null, city: null);
  }

  void setProvince(Province? province) {
    if (province == state.province) return;
    state = state.copyWith(province: province, city: null);
  }

  void setCity(City? city) {
    if (city == state.city) return;
    state = state.copyWith(city: city);
  }
}
