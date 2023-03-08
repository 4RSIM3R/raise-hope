import 'package:freezed_annotation/freezed_annotation.dart';

part 'province.g.dart';
part 'province.freezed.dart';

@freezed
class Province with _$Province {
  const factory Province({
    required int id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'country_id') required int countryId,
    // ignore: invalid_annotation_target
    // @JsonKey(name: 'state_name') required String name,
    required String name,
  }) = _Province;

  factory Province.fromJson(Map<String, dynamic> json) =>
      _$ProvinceFromJson(json);

  // @override
  // Map<String, dynamic> toJson() => _$ProvinceToJson(this);
}
