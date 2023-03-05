// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_volunteer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterVolunteerState {
  RegisterVolunteerData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterVolunteerData data) personalData,
    required TResult Function(RegisterVolunteerData data) availability,
    required TResult Function(RegisterVolunteerData data) interest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterVolunteerData data)? personalData,
    TResult? Function(RegisterVolunteerData data)? availability,
    TResult? Function(RegisterVolunteerData data)? interest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterVolunteerData data)? personalData,
    TResult Function(RegisterVolunteerData data)? availability,
    TResult Function(RegisterVolunteerData data)? interest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PersonalData value) personalData,
    required TResult Function(_Availability value) availability,
    required TResult Function(_Interest value) interest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonalData value)? personalData,
    TResult? Function(_Availability value)? availability,
    TResult? Function(_Interest value)? interest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonalData value)? personalData,
    TResult Function(_Availability value)? availability,
    TResult Function(_Interest value)? interest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterVolunteerStateCopyWith<RegisterVolunteerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterVolunteerStateCopyWith<$Res> {
  factory $RegisterVolunteerStateCopyWith(RegisterVolunteerState value,
          $Res Function(RegisterVolunteerState) then) =
      _$RegisterVolunteerStateCopyWithImpl<$Res, RegisterVolunteerState>;
  @useResult
  $Res call({RegisterVolunteerData data});

  $RegisterVolunteerDataCopyWith<$Res> get data;
}

/// @nodoc
class _$RegisterVolunteerStateCopyWithImpl<$Res,
        $Val extends RegisterVolunteerState>
    implements $RegisterVolunteerStateCopyWith<$Res> {
  _$RegisterVolunteerStateCopyWithImpl(this._value, this._then);

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
              as RegisterVolunteerData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterVolunteerDataCopyWith<$Res> get data {
    return $RegisterVolunteerDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PersonalDataCopyWith<$Res>
    implements $RegisterVolunteerStateCopyWith<$Res> {
  factory _$$_PersonalDataCopyWith(
          _$_PersonalData value, $Res Function(_$_PersonalData) then) =
      __$$_PersonalDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterVolunteerData data});

  @override
  $RegisterVolunteerDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_PersonalDataCopyWithImpl<$Res>
    extends _$RegisterVolunteerStateCopyWithImpl<$Res, _$_PersonalData>
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
              as RegisterVolunteerData,
    ));
  }
}

/// @nodoc

class _$_PersonalData implements _PersonalData {
  const _$_PersonalData(this.data);

  @override
  final RegisterVolunteerData data;

  @override
  String toString() {
    return 'RegisterVolunteerState.personalData(data: $data)';
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
    required TResult Function(RegisterVolunteerData data) personalData,
    required TResult Function(RegisterVolunteerData data) availability,
    required TResult Function(RegisterVolunteerData data) interest,
  }) {
    return personalData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterVolunteerData data)? personalData,
    TResult? Function(RegisterVolunteerData data)? availability,
    TResult? Function(RegisterVolunteerData data)? interest,
  }) {
    return personalData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterVolunteerData data)? personalData,
    TResult Function(RegisterVolunteerData data)? availability,
    TResult Function(RegisterVolunteerData data)? interest,
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
    required TResult Function(_Availability value) availability,
    required TResult Function(_Interest value) interest,
  }) {
    return personalData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonalData value)? personalData,
    TResult? Function(_Availability value)? availability,
    TResult? Function(_Interest value)? interest,
  }) {
    return personalData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonalData value)? personalData,
    TResult Function(_Availability value)? availability,
    TResult Function(_Interest value)? interest,
    required TResult orElse(),
  }) {
    if (personalData != null) {
      return personalData(this);
    }
    return orElse();
  }
}

abstract class _PersonalData implements RegisterVolunteerState {
  const factory _PersonalData(final RegisterVolunteerData data) =
      _$_PersonalData;

  @override
  RegisterVolunteerData get data;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalDataCopyWith<_$_PersonalData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AvailabilityCopyWith<$Res>
    implements $RegisterVolunteerStateCopyWith<$Res> {
  factory _$$_AvailabilityCopyWith(
          _$_Availability value, $Res Function(_$_Availability) then) =
      __$$_AvailabilityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterVolunteerData data});

  @override
  $RegisterVolunteerDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_AvailabilityCopyWithImpl<$Res>
    extends _$RegisterVolunteerStateCopyWithImpl<$Res, _$_Availability>
    implements _$$_AvailabilityCopyWith<$Res> {
  __$$_AvailabilityCopyWithImpl(
      _$_Availability _value, $Res Function(_$_Availability) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Availability(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterVolunteerData,
    ));
  }
}

/// @nodoc

class _$_Availability implements _Availability {
  const _$_Availability(this.data);

  @override
  final RegisterVolunteerData data;

  @override
  String toString() {
    return 'RegisterVolunteerState.availability(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Availability &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AvailabilityCopyWith<_$_Availability> get copyWith =>
      __$$_AvailabilityCopyWithImpl<_$_Availability>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterVolunteerData data) personalData,
    required TResult Function(RegisterVolunteerData data) availability,
    required TResult Function(RegisterVolunteerData data) interest,
  }) {
    return availability(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterVolunteerData data)? personalData,
    TResult? Function(RegisterVolunteerData data)? availability,
    TResult? Function(RegisterVolunteerData data)? interest,
  }) {
    return availability?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterVolunteerData data)? personalData,
    TResult Function(RegisterVolunteerData data)? availability,
    TResult Function(RegisterVolunteerData data)? interest,
    required TResult orElse(),
  }) {
    if (availability != null) {
      return availability(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PersonalData value) personalData,
    required TResult Function(_Availability value) availability,
    required TResult Function(_Interest value) interest,
  }) {
    return availability(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonalData value)? personalData,
    TResult? Function(_Availability value)? availability,
    TResult? Function(_Interest value)? interest,
  }) {
    return availability?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonalData value)? personalData,
    TResult Function(_Availability value)? availability,
    TResult Function(_Interest value)? interest,
    required TResult orElse(),
  }) {
    if (availability != null) {
      return availability(this);
    }
    return orElse();
  }
}

abstract class _Availability implements RegisterVolunteerState {
  const factory _Availability(final RegisterVolunteerData data) =
      _$_Availability;

  @override
  RegisterVolunteerData get data;
  @override
  @JsonKey(ignore: true)
  _$$_AvailabilityCopyWith<_$_Availability> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InterestCopyWith<$Res>
    implements $RegisterVolunteerStateCopyWith<$Res> {
  factory _$$_InterestCopyWith(
          _$_Interest value, $Res Function(_$_Interest) then) =
      __$$_InterestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterVolunteerData data});

  @override
  $RegisterVolunteerDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InterestCopyWithImpl<$Res>
    extends _$RegisterVolunteerStateCopyWithImpl<$Res, _$_Interest>
    implements _$$_InterestCopyWith<$Res> {
  __$$_InterestCopyWithImpl(
      _$_Interest _value, $Res Function(_$_Interest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Interest(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterVolunteerData,
    ));
  }
}

/// @nodoc

class _$_Interest implements _Interest {
  const _$_Interest(this.data);

  @override
  final RegisterVolunteerData data;

  @override
  String toString() {
    return 'RegisterVolunteerState.interest(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Interest &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InterestCopyWith<_$_Interest> get copyWith =>
      __$$_InterestCopyWithImpl<_$_Interest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterVolunteerData data) personalData,
    required TResult Function(RegisterVolunteerData data) availability,
    required TResult Function(RegisterVolunteerData data) interest,
  }) {
    return interest(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterVolunteerData data)? personalData,
    TResult? Function(RegisterVolunteerData data)? availability,
    TResult? Function(RegisterVolunteerData data)? interest,
  }) {
    return interest?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterVolunteerData data)? personalData,
    TResult Function(RegisterVolunteerData data)? availability,
    TResult Function(RegisterVolunteerData data)? interest,
    required TResult orElse(),
  }) {
    if (interest != null) {
      return interest(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PersonalData value) personalData,
    required TResult Function(_Availability value) availability,
    required TResult Function(_Interest value) interest,
  }) {
    return interest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonalData value)? personalData,
    TResult? Function(_Availability value)? availability,
    TResult? Function(_Interest value)? interest,
  }) {
    return interest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonalData value)? personalData,
    TResult Function(_Availability value)? availability,
    TResult Function(_Interest value)? interest,
    required TResult orElse(),
  }) {
    if (interest != null) {
      return interest(this);
    }
    return orElse();
  }
}

abstract class _Interest implements RegisterVolunteerState {
  const factory _Interest(final RegisterVolunteerData data) = _$_Interest;

  @override
  RegisterVolunteerData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InterestCopyWith<_$_Interest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterVolunteerData {
  String? get fullName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  List<int>? get daysOfWeekAvailable => throw _privateConstructorUsedError;
  List<NameOfTimeDay>? get preferedTime => throw _privateConstructorUsedError;
  List<String>? get interest => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterVolunteerDataCopyWith<RegisterVolunteerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterVolunteerDataCopyWith<$Res> {
  factory $RegisterVolunteerDataCopyWith(RegisterVolunteerData value,
          $Res Function(RegisterVolunteerData) then) =
      _$RegisterVolunteerDataCopyWithImpl<$Res, RegisterVolunteerData>;
  @useResult
  $Res call(
      {String? fullName,
      String? email,
      String? phoneNumber,
      String? address,
      String? password,
      List<int>? daysOfWeekAvailable,
      List<NameOfTimeDay>? preferedTime,
      List<String>? interest});
}

/// @nodoc
class _$RegisterVolunteerDataCopyWithImpl<$Res,
        $Val extends RegisterVolunteerData>
    implements $RegisterVolunteerDataCopyWith<$Res> {
  _$RegisterVolunteerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? password = freezed,
    Object? daysOfWeekAvailable = freezed,
    Object? preferedTime = freezed,
    Object? interest = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      daysOfWeekAvailable: freezed == daysOfWeekAvailable
          ? _value.daysOfWeekAvailable
          : daysOfWeekAvailable // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      preferedTime: freezed == preferedTime
          ? _value.preferedTime
          : preferedTime // ignore: cast_nullable_to_non_nullable
              as List<NameOfTimeDay>?,
      interest: freezed == interest
          ? _value.interest
          : interest // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterVolunteerDataCopyWith<$Res>
    implements $RegisterVolunteerDataCopyWith<$Res> {
  factory _$$_RegisterVolunteerDataCopyWith(_$_RegisterVolunteerData value,
          $Res Function(_$_RegisterVolunteerData) then) =
      __$$_RegisterVolunteerDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fullName,
      String? email,
      String? phoneNumber,
      String? address,
      String? password,
      List<int>? daysOfWeekAvailable,
      List<NameOfTimeDay>? preferedTime,
      List<String>? interest});
}

/// @nodoc
class __$$_RegisterVolunteerDataCopyWithImpl<$Res>
    extends _$RegisterVolunteerDataCopyWithImpl<$Res, _$_RegisterVolunteerData>
    implements _$$_RegisterVolunteerDataCopyWith<$Res> {
  __$$_RegisterVolunteerDataCopyWithImpl(_$_RegisterVolunteerData _value,
      $Res Function(_$_RegisterVolunteerData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? password = freezed,
    Object? daysOfWeekAvailable = freezed,
    Object? preferedTime = freezed,
    Object? interest = freezed,
  }) {
    return _then(_$_RegisterVolunteerData(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      daysOfWeekAvailable: freezed == daysOfWeekAvailable
          ? _value._daysOfWeekAvailable
          : daysOfWeekAvailable // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      preferedTime: freezed == preferedTime
          ? _value._preferedTime
          : preferedTime // ignore: cast_nullable_to_non_nullable
              as List<NameOfTimeDay>?,
      interest: freezed == interest
          ? _value._interest
          : interest // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_RegisterVolunteerData implements _RegisterVolunteerData {
  const _$_RegisterVolunteerData(
      {this.fullName,
      this.email,
      this.phoneNumber,
      this.address,
      this.password,
      final List<int>? daysOfWeekAvailable,
      final List<NameOfTimeDay>? preferedTime,
      final List<String>? interest})
      : _daysOfWeekAvailable = daysOfWeekAvailable,
        _preferedTime = preferedTime,
        _interest = interest;

  @override
  final String? fullName;
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final String? address;
  @override
  final String? password;
  final List<int>? _daysOfWeekAvailable;
  @override
  List<int>? get daysOfWeekAvailable {
    final value = _daysOfWeekAvailable;
    if (value == null) return null;
    if (_daysOfWeekAvailable is EqualUnmodifiableListView)
      return _daysOfWeekAvailable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<NameOfTimeDay>? _preferedTime;
  @override
  List<NameOfTimeDay>? get preferedTime {
    final value = _preferedTime;
    if (value == null) return null;
    if (_preferedTime is EqualUnmodifiableListView) return _preferedTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _interest;
  @override
  List<String>? get interest {
    final value = _interest;
    if (value == null) return null;
    if (_interest is EqualUnmodifiableListView) return _interest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RegisterVolunteerData(fullName: $fullName, email: $email, phoneNumber: $phoneNumber, address: $address, password: $password, daysOfWeekAvailable: $daysOfWeekAvailable, preferedTime: $preferedTime, interest: $interest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterVolunteerData &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality()
                .equals(other._daysOfWeekAvailable, _daysOfWeekAvailable) &&
            const DeepCollectionEquality()
                .equals(other._preferedTime, _preferedTime) &&
            const DeepCollectionEquality().equals(other._interest, _interest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullName,
      email,
      phoneNumber,
      address,
      password,
      const DeepCollectionEquality().hash(_daysOfWeekAvailable),
      const DeepCollectionEquality().hash(_preferedTime),
      const DeepCollectionEquality().hash(_interest));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterVolunteerDataCopyWith<_$_RegisterVolunteerData> get copyWith =>
      __$$_RegisterVolunteerDataCopyWithImpl<_$_RegisterVolunteerData>(
          this, _$identity);
}

abstract class _RegisterVolunteerData implements RegisterVolunteerData {
  const factory _RegisterVolunteerData(
      {final String? fullName,
      final String? email,
      final String? phoneNumber,
      final String? address,
      final String? password,
      final List<int>? daysOfWeekAvailable,
      final List<NameOfTimeDay>? preferedTime,
      final List<String>? interest}) = _$_RegisterVolunteerData;

  @override
  String? get fullName;
  @override
  String? get email;
  @override
  String? get phoneNumber;
  @override
  String? get address;
  @override
  String? get password;
  @override
  List<int>? get daysOfWeekAvailable;
  @override
  List<NameOfTimeDay>? get preferedTime;
  @override
  List<String>? get interest;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterVolunteerDataCopyWith<_$_RegisterVolunteerData> get copyWith =>
      throw _privateConstructorUsedError;
}
