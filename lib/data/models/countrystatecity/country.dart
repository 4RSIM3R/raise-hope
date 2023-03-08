import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.g.dart';
part 'country.freezed.dart';

@freezed
class Country with _$Country {
  const factory Country({
    required int id,
    // ignore: invalid_annotation_target
    // @JsonKey(name: 'country_name') required String name,
    required String name,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}
