// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) {
  return _ProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$ProfileResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_number')
  String get mobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'institution')
  String? get institution => throw _privateConstructorUsedError;
  @JsonKey(name: 'occupation')
  String? get occupation => throw _privateConstructorUsedError;
  @JsonKey(name: 'graduation_year')
  int? get graduationYear => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileResponseCopyWith<ProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileResponseCopyWith<$Res> {
  factory $ProfileResponseCopyWith(
          ProfileResponse value, $Res Function(ProfileResponse) then) =
      _$ProfileResponseCopyWithImpl<$Res, ProfileResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'mobile_number') String mobileNumber,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'institution') String? institution,
      @JsonKey(name: 'occupation') String? occupation,
      @JsonKey(name: 'graduation_year') int? graduationYear});
}

/// @nodoc
class _$ProfileResponseCopyWithImpl<$Res, $Val extends ProfileResponse>
    implements $ProfileResponseCopyWith<$Res> {
  _$ProfileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mobileNumber = null,
    Object? address = freezed,
    Object? institution = freezed,
    Object? occupation = freezed,
    Object? graduationYear = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      institution: freezed == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String?,
      occupation: freezed == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      graduationYear: freezed == graduationYear
          ? _value.graduationYear
          : graduationYear // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileResponseImplCopyWith<$Res>
    implements $ProfileResponseCopyWith<$Res> {
  factory _$$ProfileResponseImplCopyWith(_$ProfileResponseImpl value,
          $Res Function(_$ProfileResponseImpl) then) =
      __$$ProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'mobile_number') String mobileNumber,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'institution') String? institution,
      @JsonKey(name: 'occupation') String? occupation,
      @JsonKey(name: 'graduation_year') int? graduationYear});
}

/// @nodoc
class __$$ProfileResponseImplCopyWithImpl<$Res>
    extends _$ProfileResponseCopyWithImpl<$Res, _$ProfileResponseImpl>
    implements _$$ProfileResponseImplCopyWith<$Res> {
  __$$ProfileResponseImplCopyWithImpl(
      _$ProfileResponseImpl _value, $Res Function(_$ProfileResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mobileNumber = null,
    Object? address = freezed,
    Object? institution = freezed,
    Object? occupation = freezed,
    Object? graduationYear = freezed,
  }) {
    return _then(_$ProfileResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      institution: freezed == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String?,
      occupation: freezed == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      graduationYear: freezed == graduationYear
          ? _value.graduationYear
          : graduationYear // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileResponseImpl implements _ProfileResponse {
  const _$ProfileResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'mobile_number') required this.mobileNumber,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'institution') required this.institution,
      @JsonKey(name: 'occupation') required this.occupation,
      @JsonKey(name: 'graduation_year') required this.graduationYear});

  factory _$ProfileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'mobile_number')
  final String mobileNumber;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'institution')
  final String? institution;
  @override
  @JsonKey(name: 'occupation')
  final String? occupation;
  @override
  @JsonKey(name: 'graduation_year')
  final int? graduationYear;

  @override
  String toString() {
    return 'ProfileResponse(id: $id, mobileNumber: $mobileNumber, address: $address, institution: $institution, occupation: $occupation, graduationYear: $graduationYear)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.graduationYear, graduationYear) ||
                other.graduationYear == graduationYear));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, mobileNumber, address,
      institution, occupation, graduationYear);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileResponseImplCopyWith<_$ProfileResponseImpl> get copyWith =>
      __$$ProfileResponseImplCopyWithImpl<_$ProfileResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _ProfileResponse implements ProfileResponse {
  const factory _ProfileResponse(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'mobile_number') required final String mobileNumber,
      @JsonKey(name: 'address') required final String? address,
      @JsonKey(name: 'institution') required final String? institution,
      @JsonKey(name: 'occupation') required final String? occupation,
      @JsonKey(name: 'graduation_year')
      required final int? graduationYear}) = _$ProfileResponseImpl;

  factory _ProfileResponse.fromJson(Map<String, dynamic> json) =
      _$ProfileResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'mobile_number')
  String get mobileNumber;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'institution')
  String? get institution;
  @override
  @JsonKey(name: 'occupation')
  String? get occupation;
  @override
  @JsonKey(name: 'graduation_year')
  int? get graduationYear;
  @override
  @JsonKey(ignore: true)
  _$$ProfileResponseImplCopyWith<_$ProfileResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
