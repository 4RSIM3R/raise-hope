// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_location_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectedLocation {
  Country? get country => throw _privateConstructorUsedError;
  Province? get province => throw _privateConstructorUsedError;
  City? get city => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectedLocationCopyWith<SelectedLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedLocationCopyWith<$Res> {
  factory $SelectedLocationCopyWith(
          SelectedLocation value, $Res Function(SelectedLocation) then) =
      _$SelectedLocationCopyWithImpl<$Res, SelectedLocation>;
  @useResult
  $Res call({Country? country, Province? province, City? city});

  $CountryCopyWith<$Res>? get country;
  $ProvinceCopyWith<$Res>? get province;
  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class _$SelectedLocationCopyWithImpl<$Res, $Val extends SelectedLocation>
    implements $SelectedLocationCopyWith<$Res> {
  _$SelectedLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? province = freezed,
    Object? city = freezed,
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
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
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

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SelectedLocationCopyWith<$Res>
    implements $SelectedLocationCopyWith<$Res> {
  factory _$$_SelectedLocationCopyWith(
          _$_SelectedLocation value, $Res Function(_$_SelectedLocation) then) =
      __$$_SelectedLocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Country? country, Province? province, City? city});

  @override
  $CountryCopyWith<$Res>? get country;
  @override
  $ProvinceCopyWith<$Res>? get province;
  @override
  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class __$$_SelectedLocationCopyWithImpl<$Res>
    extends _$SelectedLocationCopyWithImpl<$Res, _$_SelectedLocation>
    implements _$$_SelectedLocationCopyWith<$Res> {
  __$$_SelectedLocationCopyWithImpl(
      _$_SelectedLocation _value, $Res Function(_$_SelectedLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? province = freezed,
    Object? city = freezed,
  }) {
    return _then(_$_SelectedLocation(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as Province?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
    ));
  }
}

/// @nodoc

class _$_SelectedLocation implements _SelectedLocation {
  const _$_SelectedLocation({this.country, this.province, this.city});

  @override
  final Country? country;
  @override
  final Province? province;
  @override
  final City? city;

  @override
  String toString() {
    return 'SelectedLocation(country: $country, province: $province, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedLocation &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country, province, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedLocationCopyWith<_$_SelectedLocation> get copyWith =>
      __$$_SelectedLocationCopyWithImpl<_$_SelectedLocation>(this, _$identity);
}

abstract class _SelectedLocation implements SelectedLocation {
  const factory _SelectedLocation(
      {final Country? country,
      final Province? province,
      final City? city}) = _$_SelectedLocation;

  @override
  Country? get country;
  @override
  Province? get province;
  @override
  City? get city;
  @override
  @JsonKey(ignore: true)
  _$$_SelectedLocationCopyWith<_$_SelectedLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
