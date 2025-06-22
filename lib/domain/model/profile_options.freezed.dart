// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProfileOptions {
  IconData get icon => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  bool get avaliable => throw _privateConstructorUsedError;
  VoidCallback get onTap => throw _privateConstructorUsedError;

  /// Create a copy of ProfileOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileOptionsCopyWith<ProfileOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileOptionsCopyWith<$Res> {
  factory $ProfileOptionsCopyWith(
    ProfileOptions value,
    $Res Function(ProfileOptions) then,
  ) = _$ProfileOptionsCopyWithImpl<$Res, ProfileOptions>;
  @useResult
  $Res call({
    IconData icon,
    String name,
    String subtitle,
    bool avaliable,
    VoidCallback onTap,
  });
}

/// @nodoc
class _$ProfileOptionsCopyWithImpl<$Res, $Val extends ProfileOptions>
    implements $ProfileOptionsCopyWith<$Res> {
  _$ProfileOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? name = null,
    Object? subtitle = null,
    Object? avaliable = null,
    Object? onTap = null,
  }) {
    return _then(
      _value.copyWith(
            icon: null == icon
                ? _value.icon
                : icon // ignore: cast_nullable_to_non_nullable
                      as IconData,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            subtitle: null == subtitle
                ? _value.subtitle
                : subtitle // ignore: cast_nullable_to_non_nullable
                      as String,
            avaliable: null == avaliable
                ? _value.avaliable
                : avaliable // ignore: cast_nullable_to_non_nullable
                      as bool,
            onTap: null == onTap
                ? _value.onTap
                : onTap // ignore: cast_nullable_to_non_nullable
                      as VoidCallback,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProfileOptionsImplCopyWith<$Res>
    implements $ProfileOptionsCopyWith<$Res> {
  factory _$$ProfileOptionsImplCopyWith(
    _$ProfileOptionsImpl value,
    $Res Function(_$ProfileOptionsImpl) then,
  ) = __$$ProfileOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    IconData icon,
    String name,
    String subtitle,
    bool avaliable,
    VoidCallback onTap,
  });
}

/// @nodoc
class __$$ProfileOptionsImplCopyWithImpl<$Res>
    extends _$ProfileOptionsCopyWithImpl<$Res, _$ProfileOptionsImpl>
    implements _$$ProfileOptionsImplCopyWith<$Res> {
  __$$ProfileOptionsImplCopyWithImpl(
    _$ProfileOptionsImpl _value,
    $Res Function(_$ProfileOptionsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? name = null,
    Object? subtitle = null,
    Object? avaliable = null,
    Object? onTap = null,
  }) {
    return _then(
      _$ProfileOptionsImpl(
        icon: null == icon
            ? _value.icon
            : icon // ignore: cast_nullable_to_non_nullable
                  as IconData,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        subtitle: null == subtitle
            ? _value.subtitle
            : subtitle // ignore: cast_nullable_to_non_nullable
                  as String,
        avaliable: null == avaliable
            ? _value.avaliable
            : avaliable // ignore: cast_nullable_to_non_nullable
                  as bool,
        onTap: null == onTap
            ? _value.onTap
            : onTap // ignore: cast_nullable_to_non_nullable
                  as VoidCallback,
      ),
    );
  }
}

/// @nodoc

class _$ProfileOptionsImpl implements _ProfileOptions {
  _$ProfileOptionsImpl({
    required this.icon,
    required this.name,
    this.subtitle = '',
    this.avaliable = true,
    required this.onTap,
  });

  @override
  final IconData icon;
  @override
  final String name;
  @override
  @JsonKey()
  final String subtitle;
  @override
  @JsonKey()
  final bool avaliable;
  @override
  final VoidCallback onTap;

  @override
  String toString() {
    return 'ProfileOptions(icon: $icon, name: $name, subtitle: $subtitle, avaliable: $avaliable, onTap: $onTap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileOptionsImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.avaliable, avaliable) ||
                other.avaliable == avaliable) &&
            (identical(other.onTap, onTap) || other.onTap == onTap));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, icon, name, subtitle, avaliable, onTap);

  /// Create a copy of ProfileOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileOptionsImplCopyWith<_$ProfileOptionsImpl> get copyWith =>
      __$$ProfileOptionsImplCopyWithImpl<_$ProfileOptionsImpl>(
        this,
        _$identity,
      );
}

abstract class _ProfileOptions implements ProfileOptions {
  factory _ProfileOptions({
    required final IconData icon,
    required final String name,
    final String subtitle,
    final bool avaliable,
    required final VoidCallback onTap,
  }) = _$ProfileOptionsImpl;

  @override
  IconData get icon;
  @override
  String get name;
  @override
  String get subtitle;
  @override
  bool get avaliable;
  @override
  VoidCallback get onTap;

  /// Create a copy of ProfileOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileOptionsImplCopyWith<_$ProfileOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
