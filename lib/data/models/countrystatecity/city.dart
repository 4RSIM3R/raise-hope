import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.g.dart';
part 'city.freezed.dart';

@freezed
class City with _$City {
  const factory City({
    required int id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'state_id') required int provinceId,
    // ignore: invalid_annotation_target
    // @JsonKey(name: 'city_name') required String name,
    required String name,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
