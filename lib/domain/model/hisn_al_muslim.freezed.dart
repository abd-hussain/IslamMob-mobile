// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hisn_al_muslim.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HisnAlMuslimModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<HisnAlMuslimDetailsModel> get list => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  /// Create a copy of HisnAlMuslimModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HisnAlMuslimModelCopyWith<HisnAlMuslimModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HisnAlMuslimModelCopyWith<$Res> {
  factory $HisnAlMuslimModelCopyWith(
          HisnAlMuslimModel value, $Res Function(HisnAlMuslimModel) then) =
      _$HisnAlMuslimModelCopyWithImpl<$Res, HisnAlMuslimModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      List<HisnAlMuslimDetailsModel> list,
      bool isFavorite});
}

/// @nodoc
class _$HisnAlMuslimModelCopyWithImpl<$Res, $Val extends HisnAlMuslimModel>
    implements $HisnAlMuslimModelCopyWith<$Res> {
  _$HisnAlMuslimModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HisnAlMuslimModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? list = null,
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<HisnAlMuslimDetailsModel>,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HisnAlMuslimModelImplCopyWith<$Res>
    implements $HisnAlMuslimModelCopyWith<$Res> {
  factory _$$HisnAlMuslimModelImplCopyWith(_$HisnAlMuslimModelImpl value,
          $Res Function(_$HisnAlMuslimModelImpl) then) =
      __$$HisnAlMuslimModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      List<HisnAlMuslimDetailsModel> list,
      bool isFavorite});
}

/// @nodoc
class __$$HisnAlMuslimModelImplCopyWithImpl<$Res>
    extends _$HisnAlMuslimModelCopyWithImpl<$Res, _$HisnAlMuslimModelImpl>
    implements _$$HisnAlMuslimModelImplCopyWith<$Res> {
  __$$HisnAlMuslimModelImplCopyWithImpl(_$HisnAlMuslimModelImpl _value,
      $Res Function(_$HisnAlMuslimModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HisnAlMuslimModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? list = null,
    Object? isFavorite = null,
  }) {
    return _then(_$HisnAlMuslimModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<HisnAlMuslimDetailsModel>,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HisnAlMuslimModelImpl implements _HisnAlMuslimModel {
  _$HisnAlMuslimModelImpl(
      {required this.id,
      required this.title,
      required final List<HisnAlMuslimDetailsModel> list,
      this.isFavorite = false})
      : _list = list;

  @override
  final int id;
  @override
  final String title;
  final List<HisnAlMuslimDetailsModel> _list;
  @override
  List<HisnAlMuslimDetailsModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey()
  final bool isFavorite;

  @override
  String toString() {
    return 'HisnAlMuslimModel(id: $id, title: $title, list: $list, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HisnAlMuslimModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title,
      const DeepCollectionEquality().hash(_list), isFavorite);

  /// Create a copy of HisnAlMuslimModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HisnAlMuslimModelImplCopyWith<_$HisnAlMuslimModelImpl> get copyWith =>
      __$$HisnAlMuslimModelImplCopyWithImpl<_$HisnAlMuslimModelImpl>(
          this, _$identity);
}

abstract class _HisnAlMuslimModel implements HisnAlMuslimModel {
  factory _HisnAlMuslimModel(
      {required final int id,
      required final String title,
      required final List<HisnAlMuslimDetailsModel> list,
      final bool isFavorite}) = _$HisnAlMuslimModelImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  List<HisnAlMuslimDetailsModel> get list;
  @override
  bool get isFavorite;

  /// Create a copy of HisnAlMuslimModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HisnAlMuslimModelImplCopyWith<_$HisnAlMuslimModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
