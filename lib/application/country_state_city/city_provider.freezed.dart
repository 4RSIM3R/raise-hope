// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CityFamily {
  Country? get country => throw _privateConstructorUsedError;
  Province? get province => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CityFamilyCopyWith<CityFamily> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityFamilyCopyWith<$Res> {
  factory $CityFamilyCopyWith(
          CityFamily value, $Res Function(CityFamily) then) =
      _$CityFamilyCopyWithImpl<$Res, CityFamily>;
  @useResult
  $Res call({Country? country, Province? province});

  $CountryCopyWith<$Res>? get country;
  $ProvinceCopyWith<$Res>? get province;
}

/// @nodoc
class _$CityFamilyCopyWithImpl<$Res, $Val extends CityFamily>
    implements $CityFamilyCopyWith<$Res> {
  _$CityFamilyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? province = freezed,
  }) {
    return _then(_value.copyWith(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as Province?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProvinceCopyWith<$Res>? get province {
    if (_value.province == null) {
      return null;
    }

    return $ProvinceCopyWith<$Res>(_value.province!, (value) {
      return _then(_value.copyWith(province: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CityFamilyCopyWith<$Res>
    implements $CityFamilyCopyWith<$Res> {
  factory _$$_CityFamilyCopyWith(
          _$_CityFamily value, $Res Function(_$_CityFamily) then) =
      __$$_CityFamilyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Country? country, Province? province});

  @override
  $CountryCopyWith<$Res>? get country;
  @override
  $ProvinceCopyWith<$Res>? get province;
}

/// @nodoc
class __$$_CityFamilyCopyWithImpl<$Res>
    extends _$CityFamilyCopyWithImpl<$Res, _$_CityFamily>
    implements _$$_CityFamilyCopyWith<$Res> {
  __$$_CityFamilyCopyWithImpl(
      _$_CityFamily _value, $Res Function(_$_CityFamily) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? province = freezed,
  }) {
    return _then(_$_CityFamily(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as Province?,
    ));
  }
}

/// @nodoc

class _$_CityFamily implements _CityFamily {
  const _$_CityFamily({required this.country, required this.province});

  @override
  final Country? country;
  @override
  final Province? province;

  @override
  String toString() {
    return 'CityFamily(country: $country, province: $province)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CityFamily &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.province, province) ||
                other.province == province));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country, province);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CityFamilyCopyWith<_$_CityFamily> get copyWith =>
      __$$_CityFamilyCopyWithImpl<_$_CityFamily>(this, _$identity);
}

abstract class _CityFamily implements CityFamily {
  const factory _CityFamily(
      {required final Country? country,
      required final Province? province}) = _$_CityFamily;

  @override
  Country? get country;
  @override
  Province? get province;
  @override
  @JsonKey(ignore: true)
  _$$_CityFamilyCopyWith<_$_CityFamily> get copyWith =>
      throw _privateConstructorUsedError;
}
