// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_contacts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UserContacts {
  String get fullName => throw _privateConstructorUsedError;
  String get mobileNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;

  /// Create a copy of UserContacts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserContactsCopyWith<UserContacts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserContactsCopyWith<$Res> {
  factory $UserContactsCopyWith(
    UserContacts value,
    $Res Function(UserContacts) then,
  ) = _$UserContactsCopyWithImpl<$Res, UserContacts>;
  @useResult
  $Res call({
    String fullName,
    String mobileNumber,
    String email,
    bool selected,
  });
}

/// @nodoc
class _$UserContactsCopyWithImpl<$Res, $Val extends UserContacts>
    implements $UserContactsCopyWith<$Res> {
  _$UserContactsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserContacts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? mobileNumber = null,
    Object? email = null,
    Object? selected = null,
  }) {
    return _then(
      _value.copyWith(
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            mobileNumber: null == mobileNumber
                ? _value.mobileNumber
                : mobileNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            selected: null == selected
                ? _value.selected
                : selected // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserContactsImplCopyWith<$Res>
    implements $UserContactsCopyWith<$Res> {
  factory _$$UserContactsImplCopyWith(
    _$UserContactsImpl value,
    $Res Function(_$UserContactsImpl) then,
  ) = __$$UserContactsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String fullName,
    String mobileNumber,
    String email,
    bool selected,
  });
}

/// @nodoc
class __$$UserContactsImplCopyWithImpl<$Res>
    extends _$UserContactsCopyWithImpl<$Res, _$UserContactsImpl>
    implements _$$UserContactsImplCopyWith<$Res> {
  __$$UserContactsImplCopyWithImpl(
    _$UserContactsImpl _value,
    $Res Function(_$UserContactsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserContacts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? mobileNumber = null,
    Object? email = null,
    Object? selected = null,
  }) {
    return _then(
      _$UserContactsImpl(
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        mobileNumber: null == mobileNumber
            ? _value.mobileNumber
            : mobileNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        selected: null == selected
            ? _value.selected
            : selected // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$UserContactsImpl implements _UserContacts {
  _$UserContactsImpl({
    this.fullName = '',
    this.mobileNumber = '',
    this.email = '',
    this.selected = false,
  });

  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String mobileNumber;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final bool selected;

  @override
  String toString() {
    return 'UserContacts(fullName: $fullName, mobileNumber: $mobileNumber, email: $email, selected: $selected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserContactsImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fullName, mobileNumber, email, selected);

  /// Create a copy of UserContacts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserContactsImplCopyWith<_$UserContactsImpl> get copyWith =>
      __$$UserContactsImplCopyWithImpl<_$UserContactsImpl>(this, _$identity);
}

abstract class _UserContacts implements UserContacts {
  factory _UserContacts({
    final String fullName,
    final String mobileNumber,
    final String email,
    final bool selected,
  }) = _$UserContactsImpl;

  @override
  String get fullName;
  @override
  String get mobileNumber;
  @override
  String get email;
  @override
  bool get selected;

  /// Create a copy of UserContacts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserContactsImplCopyWith<_$UserContactsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
