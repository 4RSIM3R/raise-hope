// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_institution_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterInstitutionState {
  RegisterInstitutionData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterInstitutionData data) personalData,
    required TResult Function(RegisterInstitutionData data) addressInformation,
    required TResult Function(RegisterInstitutionData data) background,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterInstitutionData data)? personalData,
    TResult? Function(RegisterInstitutionData data)? addressInformation,
    TResult? Function(RegisterInstitutionData data)? background,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterInstitutionData data)? personalData,
    TResult Function(RegisterInstitutionData data)? addressInformation,
    TResult Function(RegisterInstitutionData data)? background,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PersonalData value) personalData,
    required TResult Function(_AddressInformation value) addressInformation,
    required TResult Function(_Background value) background,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonalData value)? personalData,
    TResult? Function(_AddressInformation value)? addressInformation,
    TResult? Function(_Background value)? background,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonalData value)? personalData,
    TResult Function(_AddressInformation value)? addressInformation,
    TResult Function(_Background value)? background,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterInstitutionStateCopyWith<RegisterInstitutionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterInstitutionStateCopyWith<$Res> {
  factory $RegisterInstitutionStateCopyWith(RegisterInstitutionState value,
          $Res Function(RegisterInstitutionState) then) =
      _$RegisterInstitutionStateCopyWithImpl<$Res, RegisterInstitutionState>;
  @useResult
  $Res call({RegisterInstitutionData data});

  $RegisterInstitutionDataCopyWith<$Res> get data;
}

/// @nodoc
class _$RegisterInstitutionStateCopyWithImpl<$Res,
        $Val extends RegisterInstitutionState>
    implements $RegisterInstitutionStateCopyWith<$Res> {
  _$RegisterInstitutionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterInstitutionData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterInstitutionDataCopyWith<$Res> get data {
    return $RegisterInstitutionDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PersonalDataCopyWith<$Res>
    implements $RegisterInstitutionStateCopyWith<$Res> {
  factory _$$_PersonalDataCopyWith(
          _$_PersonalData value, $Res Function(_$_PersonalData) then) =
      __$$_PersonalDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterInstitutionData data});

  @override
  $RegisterInstitutionDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_PersonalDataCopyWithImpl<$Res>
    extends _$RegisterInstitutionStateCopyWithImpl<$Res, _$_PersonalData>
    implements _$$_PersonalDataCopyWith<$Res> {
  __$$_PersonalDataCopyWithImpl(
      _$_PersonalData _value, $Res Function(_$_PersonalData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_PersonalData(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterInstitutionData,
    ));
  }
}

/// @nodoc

class _$_PersonalData implements _PersonalData {
  const _$_PersonalData(this.data);

  @override
  final RegisterInstitutionData data;

  @override
  String toString() {
    return 'RegisterInstitutionState.personalData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonalData &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonalDataCopyWith<_$_PersonalData> get copyWith =>
      __$$_PersonalDataCopyWithImpl<_$_PersonalData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterInstitutionData data) personalData,
    required TResult Function(RegisterInstitutionData data) addressInformation,
    required TResult Function(RegisterInstitutionData data) background,
  }) {
    return personalData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterInstitutionData data)? personalData,
    TResult? Function(RegisterInstitutionData data)? addressInformation,
    TResult? Function(RegisterInstitutionData data)? background,
  }) {
    return personalData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterInstitutionData data)? personalData,
    TResult Function(RegisterInstitutionData data)? addressInformation,
    TResult Function(RegisterInstitutionData data)? background,
    required TResult orElse(),
  }) {
    if (personalData != null) {
      return personalData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PersonalData value) personalData,
    required TResult Function(_AddressInformation value) addressInformation,
    required TResult Function(_Background value) background,
  }) {
    return personalData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonalData value)? personalData,
    TResult? Function(_AddressInformation value)? addressInformation,
    TResult? Function(_Background value)? background,
  }) {
    return personalData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonalData value)? personalData,
    TResult Function(_AddressInformation value)? addressInformation,
    TResult Function(_Background value)? background,
    required TResult orElse(),
  }) {
    if (personalData != null) {
      return personalData(this);
    }
    return orElse();
  }
}

abstract class _PersonalData implements RegisterInstitutionState {
  const factory _PersonalData(final RegisterInstitutionData data) =
      _$_PersonalData;

  @override
  RegisterInstitutionData get data;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalDataCopyWith<_$_PersonalData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddressInformationCopyWith<$Res>
    implements $RegisterInstitutionStateCopyWith<$Res> {
  factory _$$_AddressInformationCopyWith(_$_AddressInformation value,
          $Res Function(_$_AddressInformation) then) =
      __$$_AddressInformationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterInstitutionData data});

  @override
  $RegisterInstitutionDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_AddressInformationCopyWithImpl<$Res>
    extends _$RegisterInstitutionStateCopyWithImpl<$Res, _$_AddressInformation>
    implements _$$_AddressInformationCopyWith<$Res> {
  __$$_AddressInformationCopyWithImpl(
      _$_AddressInformation _value, $Res Function(_$_AddressInformation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_AddressInformation(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterInstitutionData,
    ));
  }
}

/// @nodoc

class _$_AddressInformation implements _AddressInformation {
  const _$_AddressInformation(this.data);

  @override
  final RegisterInstitutionData data;

  @override
  String toString() {
    return 'RegisterInstitutionState.addressInformation(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressInformation &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressInformationCopyWith<_$_AddressInformation> get copyWith =>
      __$$_AddressInformationCopyWithImpl<_$_AddressInformation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterInstitutionData data) personalData,
    required TResult Function(RegisterInstitutionData data) addressInformation,
    required TResult Function(RegisterInstitutionData data) background,
  }) {
    return addressInformation(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterInstitutionData data)? personalData,
    TResult? Function(RegisterInstitutionData data)? addressInformation,
    TResult? Function(RegisterInstitutionData data)? background,
  }) {
    return addressInformation?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterInstitutionData data)? personalData,
    TResult Function(RegisterInstitutionData data)? addressInformation,
    TResult Function(RegisterInstitutionData data)? background,
    required TResult orElse(),
  }) {
    if (addressInformation != null) {
      return addressInformation(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PersonalData value) personalData,
    required TResult Function(_AddressInformation value) addressInformation,
    required TResult Function(_Background value) background,
  }) {
    return addressInformation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonalData value)? personalData,
    TResult? Function(_AddressInformation value)? addressInformation,
    TResult? Function(_Background value)? background,
  }) {
    return addressInformation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonalData value)? personalData,
    TResult Function(_AddressInformation value)? addressInformation,
    TResult Function(_Background value)? background,
    required TResult orElse(),
  }) {
    if (addressInformation != null) {
      return addressInformation(this);
    }
    return orElse();
  }
}

abstract class _AddressInformation implements RegisterInstitutionState {
  const factory _AddressInformation(final RegisterInstitutionData data) =
      _$_AddressInformation;

  @override
  RegisterInstitutionData get data;
  @override
  @JsonKey(ignore: true)
  _$$_AddressInformationCopyWith<_$_AddressInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BackgroundCopyWith<$Res>
    implements $RegisterInstitutionStateCopyWith<$Res> {
  factory _$$_BackgroundCopyWith(
          _$_Background value, $Res Function(_$_Background) then) =
      __$$_BackgroundCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterInstitutionData data});

  @override
  $RegisterInstitutionDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_BackgroundCopyWithImpl<$Res>
    extends _$RegisterInstitutionStateCopyWithImpl<$Res, _$_Background>
    implements _$$_BackgroundCopyWith<$Res> {
  __$$_BackgroundCopyWithImpl(
      _$_Background _value, $Res Function(_$_Background) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Background(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterInstitutionData,
    ));
  }
}

/// @nodoc

class _$_Background implements _Background {
  const _$_Background(this.data);

  @override
  final RegisterInstitutionData data;

  @override
  String toString() {
    return 'RegisterInstitutionState.background(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Background &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BackgroundCopyWith<_$_Background> get copyWith =>
      __$$_BackgroundCopyWithImpl<_$_Background>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterInstitutionData data) personalData,
    required TResult Function(RegisterInstitutionData data) addressInformation,
    required TResult Function(RegisterInstitutionData data) background,
  }) {
    return background(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterInstitutionData data)? personalData,
    TResult? Function(RegisterInstitutionData data)? addressInformation,
    TResult? Function(RegisterInstitutionData data)? background,
  }) {
    return background?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterInstitutionData data)? personalData,
    TResult Function(RegisterInstitutionData data)? addressInformation,
    TResult Function(RegisterInstitutionData data)? background,
    required TResult orElse(),
  }) {
    if (background != null) {
      return background(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PersonalData value) personalData,
    required TResult Function(_AddressInformation value) addressInformation,
    required TResult Function(_Background value) background,
  }) {
    return background(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonalData value)? personalData,
    TResult? Function(_AddressInformation value)? addressInformation,
    TResult? Function(_Background value)? background,
  }) {
    return background?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonalData value)? personalData,
    TResult Function(_AddressInformation value)? addressInformation,
    TResult Function(_Background value)? background,
    required TResult orElse(),
  }) {
    if (background != null) {
      return background(this);
    }
    return orElse();
  }
}

abstract class _Background implements RegisterInstitutionState {
  const factory _Background(final RegisterInstitutionData data) = _$_Background;

  @override
  RegisterInstitutionData get data;
  @override
  @JsonKey(ignore: true)
  _$$_BackgroundCopyWith<_$_Background> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterInstitutionData {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  Country? get country => throw _privateConstructorUsedError;
  Province? get province => throw _privateConstructorUsedError;
  City? get city => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get postalCode => throw _privateConstructorUsedError;
  OrganizationType? get organizationType => throw _privateConstructorUsedError;
  OrganizationSize? get organizationSize => throw _privateConstructorUsedError;
  List<TypeOfHelp>? get typeOfHelp =>
      throw _privateConstructorUsedError; // register with current user (from google, etc)
  bool get isUsingCurrentUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterInstitutionDataCopyWith<RegisterInstitutionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterInstitutionDataCopyWith<$Res> {
  factory $RegisterInstitutionDataCopyWith(RegisterInstitutionData value,
          $Res Function(RegisterInstitutionData) then) =
      _$RegisterInstitutionDataCopyWithImpl<$Res, RegisterInstitutionData>;
  @useResult
  $Res call(
      {String? name,
      String? email,
      String? website,
      String? phoneNumber,
      String? password,
      Country? country,
      Province? province,
      City? city,
      String? address,
      String? postalCode,
      OrganizationType? organizationType,
      OrganizationSize? organizationSize,
      List<TypeOfHelp>? typeOfHelp,
      bool isUsingCurrentUser});

  $CountryCopyWith<$Res>? get country;
  $ProvinceCopyWith<$Res>? get province;
  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class _$RegisterInstitutionDataCopyWithImpl<$Res,
        $Val extends RegisterInstitutionData>
    implements $RegisterInstitutionDataCopyWith<$Res> {
  _$RegisterInstitutionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? website = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? country = freezed,
    Object? province = freezed,
    Object? city = freezed,
    Object? address = freezed,
    Object? postalCode = freezed,
    Object? organizationType = freezed,
    Object? organizationSize = freezed,
    Object? typeOfHelp = freezed,
    Object? isUsingCurrentUser = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
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
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationType: freezed == organizationType
          ? _value.organizationType
          : organizationType // ignore: cast_nullable_to_non_nullable
              as OrganizationType?,
      organizationSize: freezed == organizationSize
          ? _value.organizationSize
          : organizationSize // ignore: cast_nullable_to_non_nullable
              as OrganizationSize?,
      typeOfHelp: freezed == typeOfHelp
          ? _value.typeOfHelp
          : typeOfHelp // ignore: cast_nullable_to_non_nullable
              as List<TypeOfHelp>?,
      isUsingCurrentUser: null == isUsingCurrentUser
          ? _value.isUsingCurrentUser
          : isUsingCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_RegisterInstitutionDataCopyWith<$Res>
    implements $RegisterInstitutionDataCopyWith<$Res> {
  factory _$$_RegisterInstitutionDataCopyWith(_$_RegisterInstitutionData value,
          $Res Function(_$_RegisterInstitutionData) then) =
      __$$_RegisterInstitutionDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? email,
      String? website,
      String? phoneNumber,
      String? password,
      Country? country,
      Province? province,
      City? city,
      String? address,
      String? postalCode,
      OrganizationType? organizationType,
      OrganizationSize? organizationSize,
      List<TypeOfHelp>? typeOfHelp,
      bool isUsingCurrentUser});

  @override
  $CountryCopyWith<$Res>? get country;
  @override
  $ProvinceCopyWith<$Res>? get province;
  @override
  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class __$$_RegisterInstitutionDataCopyWithImpl<$Res>
    extends _$RegisterInstitutionDataCopyWithImpl<$Res,
        _$_RegisterInstitutionData>
    implements _$$_RegisterInstitutionDataCopyWith<$Res> {
  __$$_RegisterInstitutionDataCopyWithImpl(_$_RegisterInstitutionData _value,
      $Res Function(_$_RegisterInstitutionData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? website = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? country = freezed,
    Object? province = freezed,
    Object? city = freezed,
    Object? address = freezed,
    Object? postalCode = freezed,
    Object? organizationType = freezed,
    Object? organizationSize = freezed,
    Object? typeOfHelp = freezed,
    Object? isUsingCurrentUser = null,
  }) {
    return _then(_$_RegisterInstitutionData(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
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
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationType: freezed == organizationType
          ? _value.organizationType
          : organizationType // ignore: cast_nullable_to_non_nullable
              as OrganizationType?,
      organizationSize: freezed == organizationSize
          ? _value.organizationSize
          : organizationSize // ignore: cast_nullable_to_non_nullable
              as OrganizationSize?,
      typeOfHelp: freezed == typeOfHelp
          ? _value._typeOfHelp
          : typeOfHelp // ignore: cast_nullable_to_non_nullable
              as List<TypeOfHelp>?,
      isUsingCurrentUser: null == isUsingCurrentUser
          ? _value.isUsingCurrentUser
          : isUsingCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RegisterInstitutionData implements _RegisterInstitutionData {
  const _$_RegisterInstitutionData(
      {this.name,
      this.email,
      this.website,
      this.phoneNumber,
      this.password,
      this.country,
      this.province,
      this.city,
      this.address,
      this.postalCode,
      this.organizationType,
      this.organizationSize,
      final List<TypeOfHelp>? typeOfHelp,
      this.isUsingCurrentUser = false})
      : _typeOfHelp = typeOfHelp;

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? website;
  @override
  final String? phoneNumber;
  @override
  final String? password;
  @override
  final Country? country;
  @override
  final Province? province;
  @override
  final City? city;
  @override
  final String? address;
  @override
  final String? postalCode;
  @override
  final OrganizationType? organizationType;
  @override
  final OrganizationSize? organizationSize;
  final List<TypeOfHelp>? _typeOfHelp;
  @override
  List<TypeOfHelp>? get typeOfHelp {
    final value = _typeOfHelp;
    if (value == null) return null;
    if (_typeOfHelp is EqualUnmodifiableListView) return _typeOfHelp;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// register with current user (from google, etc)
  @override
  @JsonKey()
  final bool isUsingCurrentUser;

  @override
  String toString() {
    return 'RegisterInstitutionData(name: $name, email: $email, website: $website, phoneNumber: $phoneNumber, password: $password, country: $country, province: $province, city: $city, address: $address, postalCode: $postalCode, organizationType: $organizationType, organizationSize: $organizationSize, typeOfHelp: $typeOfHelp, isUsingCurrentUser: $isUsingCurrentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterInstitutionData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.organizationType, organizationType) ||
                other.organizationType == organizationType) &&
            (identical(other.organizationSize, organizationSize) ||
                other.organizationSize == organizationSize) &&
            const DeepCollectionEquality()
                .equals(other._typeOfHelp, _typeOfHelp) &&
            (identical(other.isUsingCurrentUser, isUsingCurrentUser) ||
                other.isUsingCurrentUser == isUsingCurrentUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      email,
      website,
      phoneNumber,
      password,
      country,
      province,
      city,
      address,
      postalCode,
      organizationType,
      organizationSize,
      const DeepCollectionEquality().hash(_typeOfHelp),
      isUsingCurrentUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterInstitutionDataCopyWith<_$_RegisterInstitutionData>
      get copyWith =>
          __$$_RegisterInstitutionDataCopyWithImpl<_$_RegisterInstitutionData>(
              this, _$identity);
}

abstract class _RegisterInstitutionData implements RegisterInstitutionData {
  const factory _RegisterInstitutionData(
      {final String? name,
      final String? email,
      final String? website,
      final String? phoneNumber,
      final String? password,
      final Country? country,
      final Province? province,
      final City? city,
      final String? address,
      final String? postalCode,
      final OrganizationType? organizationType,
      final OrganizationSize? organizationSize,
      final List<TypeOfHelp>? typeOfHelp,
      final bool isUsingCurrentUser}) = _$_RegisterInstitutionData;

  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get website;
  @override
  String? get phoneNumber;
  @override
  String? get password;
  @override
  Country? get country;
  @override
  Province? get province;
  @override
  City? get city;
  @override
  String? get address;
  @override
  String? get postalCode;
  @override
  OrganizationType? get organizationType;
  @override
  OrganizationSize? get organizationSize;
  @override
  List<TypeOfHelp>? get typeOfHelp;
  @override // register with current user (from google, etc)
  bool get isUsingCurrentUser;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterInstitutionDataCopyWith<_$_RegisterInstitutionData>
      get copyWith => throw _privateConstructorUsedError;
}
