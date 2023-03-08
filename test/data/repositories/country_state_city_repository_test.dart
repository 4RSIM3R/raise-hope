import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:next_starter/data/repositories/country_state_city_repository.dart';

void main() {
  setUpAll(() async {
    WidgetsFlutterBinding.ensureInitialized();
  });

  test('Should show indonesia', () async {
    final repo = CountryStateCityLocalImpl();

    final countries = await repo.getCountry();

    final indonesia = countries.fold(
      (l) => null,
      (r) => r.where((country) => country.name == 'Indonesia').first,
    );

    expect(indonesia, isNotNull);
  });

  test('Should show East Java', () async {
    final repo = CountryStateCityLocalImpl();

    final countries = await repo.getCountry();

    final indonesia = countries.fold(
      (l) => null,
      (r) => r.where((country) => country.name == 'Indonesia').first,
    );

    final provinces = await repo.getProvince(indonesia!);

    final eastJava = provinces.fold(
      (l) => null,
      (r) => r.where((province) => province.name == 'East Java').first,
    );

    expect(eastJava, isNotNull);
  });

  test('Should show Kota Malang', () async {
    final repo = CountryStateCityLocalImpl();

    final countries = await repo.getCountry();

    final indonesia = countries.fold(
      (l) => null,
      (r) => r.where((country) => country.name == 'Indonesia').first,
    );

    final provinces = await repo.getProvince(indonesia!);

    final eastJava = provinces.fold(
      (l) => null,
      (r) => r.where((province) => province.name == 'East Java').first,
    );

    final cities = await repo.getCity(indonesia, eastJava!);

    final malang = cities.fold(
      (l) => null,
      (r) => r.where((city) => city.name == 'Kota Malang').first,
    );

    expect(malang, isNotNull);
  });
}
