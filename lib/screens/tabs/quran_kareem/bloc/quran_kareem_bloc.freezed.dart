// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_kareem_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuranKareemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) showHideHelpBar,
    required TResult Function(int pageCount) updatePageCount,
    required TResult Function(int num) updateSorahReferanceNumber,
    required TResult Function(int num) updateJozo2ReferanceNumber,
    required TResult Function(PageSide side) updateSidePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? showHideHelpBar,
    TResult? Function(int pageCount)? updatePageCount,
    TResult? Function(int num)? updateSorahReferanceNumber,
    TResult? Function(int num)? updateJozo2ReferanceNumber,
    TResult? Function(PageSide side)? updateSidePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? showHideHelpBar,
    TResult Function(int pageCount)? updatePageCount,
    TResult Function(int num)? updateSorahReferanceNumber,
    TResult Function(int num)? updateJozo2ReferanceNumber,
    TResult Function(PageSide side)? updateSidePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowHideHelpBar value) showHideHelpBar,
    required TResult Function(_UpdatePageCount value) updatePageCount,
    required TResult Function(_UpdateSorahReferanceNumber value)
        updateSorahReferanceNumber,
    required TResult Function(_UpdateJozo2ReferanceNumber value)
        updateJozo2ReferanceNumber,
    required TResult Function(_UpdateSidePage value) updateSidePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowHideHelpBar value)? showHideHelpBar,
    TResult? Function(_UpdatePageCount value)? updatePageCount,
    TResult? Function(_UpdateSorahReferanceNumber value)?
        updateSorahReferanceNumber,
    TResult? Function(_UpdateJozo2ReferanceNumber value)?
        updateJozo2ReferanceNumber,
    TResult? Function(_UpdateSidePage value)? updateSidePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowHideHelpBar value)? showHideHelpBar,
    TResult Function(_UpdatePageCount value)? updatePageCount,
    TResult Function(_UpdateSorahReferanceNumber value)?
        updateSorahReferanceNumber,
    TResult Function(_UpdateJozo2ReferanceNumber value)?
        updateJozo2ReferanceNumber,
    TResult Function(_UpdateSidePage value)? updateSidePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranKareemEventCopyWith<$Res> {
  factory $QuranKareemEventCopyWith(
          QuranKareemEvent value, $Res Function(QuranKareemEvent) then) =
      _$QuranKareemEventCopyWithImpl<$Res, QuranKareemEvent>;
}

/// @nodoc
class _$QuranKareemEventCopyWithImpl<$Res, $Val extends QuranKareemEvent>
    implements $QuranKareemEventCopyWith<$Res> {
  _$QuranKareemEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuranKareemEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ShowHideHelpBarImplCopyWith<$Res> {
  factory _$$ShowHideHelpBarImplCopyWith(_$ShowHideHelpBarImpl value,
          $Res Function(_$ShowHideHelpBarImpl) then) =
      __$$ShowHideHelpBarImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool status});
}

/// @nodoc
class __$$ShowHideHelpBarImplCopyWithImpl<$Res>
    extends _$QuranKareemEventCopyWithImpl<$Res, _$ShowHideHelpBarImpl>
    implements _$$ShowHideHelpBarImplCopyWith<$Res> {
  __$$ShowHideHelpBarImplCopyWithImpl(
      _$ShowHideHelpBarImpl _value, $Res Function(_$ShowHideHelpBarImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuranKareemEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$ShowHideHelpBarImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShowHideHelpBarImpl implements _ShowHideHelpBar {
  _$ShowHideHelpBarImpl(this.status);

  @override
  final bool status;

  @override
  String toString() {
    return 'QuranKareemEvent.showHideHelpBar(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowHideHelpBarImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of QuranKareemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowHideHelpBarImplCopyWith<_$ShowHideHelpBarImpl> get copyWith =>
      __$$ShowHideHelpBarImplCopyWithImpl<_$ShowHideHelpBarImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) showHideHelpBar,
    required TResult Function(int pageCount) updatePageCount,
    required TResult Function(int num) updateSorahReferanceNumber,
    required TResult Function(int num) updateJozo2ReferanceNumber,
    required TResult Function(PageSide side) updateSidePage,
  }) {
    return showHideHelpBar(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? showHideHelpBar,
    TResult? Function(int pageCount)? updatePageCount,
    TResult? Function(int num)? updateSorahReferanceNumber,
    TResult? Function(int num)? updateJozo2ReferanceNumber,
    TResult? Function(PageSide side)? updateSidePage,
  }) {
    return showHideHelpBar?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? showHideHelpBar,
    TResult Function(int pageCount)? updatePageCount,
    TResult Function(int num)? updateSorahReferanceNumber,
    TResult Function(int num)? updateJozo2ReferanceNumber,
    TResult Function(PageSide side)? updateSidePage,
    required TResult orElse(),
  }) {
    if (showHideHelpBar != null) {
      return showHideHelpBar(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowHideHelpBar value) showHideHelpBar,
    required TResult Function(_UpdatePageCount value) updatePageCount,
    required TResult Function(_UpdateSorahReferanceNumber value)
        updateSorahReferanceNumber,
    required TResult Function(_UpdateJozo2ReferanceNumber value)
        updateJozo2ReferanceNumber,
    required TResult Function(_UpdateSidePage value) updateSidePage,
  }) {
    return showHideHelpBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowHideHelpBar value)? showHideHelpBar,
    TResult? Function(_UpdatePageCount value)? updatePageCount,
    TResult? Function(_UpdateSorahReferanceNumber value)?
        updateSorahReferanceNumber,
    TResult? Function(_UpdateJozo2ReferanceNumber value)?
        updateJozo2ReferanceNumber,
    TResult? Function(_UpdateSidePage value)? updateSidePage,
  }) {
    return showHideHelpBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowHideHelpBar value)? showHideHelpBar,
    TResult Function(_UpdatePageCount value)? updatePageCount,
    TResult Function(_UpdateSorahReferanceNumber value)?
        updateSorahReferanceNumber,
    TResult Function(_UpdateJozo2ReferanceNumber value)?
        updateJozo2ReferanceNumber,
    TResult Function(_UpdateSidePage value)? updateSidePage,
    required TResult orElse(),
  }) {
    if (showHideHelpBar != null) {
      return showHideHelpBar(this);
    }
    return orElse();
  }
}

abstract class _ShowHideHelpBar implements QuranKareemEvent {
  factory _ShowHideHelpBar(final bool status) = _$ShowHideHelpBarImpl;

  bool get status;

  /// Create a copy of QuranKareemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowHideHelpBarImplCopyWith<_$ShowHideHelpBarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePageCountImplCopyWith<$Res> {
  factory _$$UpdatePageCountImplCopyWith(_$UpdatePageCountImpl value,
          $Res Function(_$UpdatePageCountImpl) then) =
      __$$UpdatePageCountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int pageCount});
}

/// @nodoc
class __$$UpdatePageCountImplCopyWithImpl<$Res>
    extends _$QuranKareemEventCopyWithImpl<$Res, _$UpdatePageCountImpl>
    implements _$$UpdatePageCountImplCopyWith<$Res> {
  __$$UpdatePageCountImplCopyWithImpl(
      _$UpdatePageCountImpl _value, $Res Function(_$UpdatePageCountImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuranKareemEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageCount = null,
  }) {
    return _then(_$UpdatePageCountImpl(
      null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdatePageCountImpl implements _UpdatePageCount {
  _$UpdatePageCountImpl(this.pageCount);

  @override
  final int pageCount;

  @override
  String toString() {
    return 'QuranKareemEvent.updatePageCount(pageCount: $pageCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePageCountImpl &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageCount);

  /// Create a copy of QuranKareemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePageCountImplCopyWith<_$UpdatePageCountImpl> get copyWith =>
      __$$UpdatePageCountImplCopyWithImpl<_$UpdatePageCountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) showHideHelpBar,
    required TResult Function(int pageCount) updatePageCount,
    required TResult Function(int num) updateSorahReferanceNumber,
    required TResult Function(int num) updateJozo2ReferanceNumber,
    required TResult Function(PageSide side) updateSidePage,
  }) {
    return updatePageCount(pageCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? showHideHelpBar,
    TResult? Function(int pageCount)? updatePageCount,
    TResult? Function(int num)? updateSorahReferanceNumber,
    TResult? Function(int num)? updateJozo2ReferanceNumber,
    TResult? Function(PageSide side)? updateSidePage,
  }) {
    return updatePageCount?.call(pageCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? showHideHelpBar,
    TResult Function(int pageCount)? updatePageCount,
    TResult Function(int num)? updateSorahReferanceNumber,
    TResult Function(int num)? updateJozo2ReferanceNumber,
    TResult Function(PageSide side)? updateSidePage,
    required TResult orElse(),
  }) {
    if (updatePageCount != null) {
      return updatePageCount(pageCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowHideHelpBar value) showHideHelpBar,
    required TResult Function(_UpdatePageCount value) updatePageCount,
    required TResult Function(_UpdateSorahReferanceNumber value)
        updateSorahReferanceNumber,
    required TResult Function(_UpdateJozo2ReferanceNumber value)
        updateJozo2ReferanceNumber,
    required TResult Function(_UpdateSidePage value) updateSidePage,
  }) {
    return updatePageCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowHideHelpBar value)? showHideHelpBar,
    TResult? Function(_UpdatePageCount value)? updatePageCount,
    TResult? Function(_UpdateSorahReferanceNumber value)?
        updateSorahReferanceNumber,
    TResult? Function(_UpdateJozo2ReferanceNumber value)?
        updateJozo2ReferanceNumber,
    TResult? Function(_UpdateSidePage value)? updateSidePage,
  }) {
    return updatePageCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowHideHelpBar value)? showHideHelpBar,
    TResult Function(_UpdatePageCount value)? updatePageCount,
    TResult Function(_UpdateSorahReferanceNumber value)?
        updateSorahReferanceNumber,
    TResult Function(_UpdateJozo2ReferanceNumber value)?
        updateJozo2ReferanceNumber,
    TResult Function(_UpdateSidePage value)? updateSidePage,
    required TResult orElse(),
  }) {
    if (updatePageCount != null) {
      return updatePageCount(this);
    }
    return orElse();
  }
}

abstract class _UpdatePageCount implements QuranKareemEvent {
  factory _UpdatePageCount(final int pageCount) = _$UpdatePageCountImpl;

  int get pageCount;

  /// Create a copy of QuranKareemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePageCountImplCopyWith<_$UpdatePageCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSorahReferanceNumberImplCopyWith<$Res> {
  factory _$$UpdateSorahReferanceNumberImplCopyWith(
          _$UpdateSorahReferanceNumberImpl value,
          $Res Function(_$UpdateSorahReferanceNumberImpl) then) =
      __$$UpdateSorahReferanceNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int num});
}

/// @nodoc
class __$$UpdateSorahReferanceNumberImplCopyWithImpl<$Res>
    extends _$QuranKareemEventCopyWithImpl<$Res,
        _$UpdateSorahReferanceNumberImpl>
    implements _$$UpdateSorahReferanceNumberImplCopyWith<$Res> {
  __$$UpdateSorahReferanceNumberImplCopyWithImpl(
      _$UpdateSorahReferanceNumberImpl _value,
      $Res Function(_$UpdateSorahReferanceNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuranKareemEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? num = null,
  }) {
    return _then(_$UpdateSorahReferanceNumberImpl(
      null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateSorahReferanceNumberImpl implements _UpdateSorahReferanceNumber {
  _$UpdateSorahReferanceNumberImpl(this.num);

  @override
  final int num;

  @override
  String toString() {
    return 'QuranKareemEvent.updateSorahReferanceNumber(num: $num)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSorahReferanceNumberImpl &&
            (identical(other.num, num) || other.num == num));
  }

  @override
  int get hashCode => Object.hash(runtimeType, num);

  /// Create a copy of QuranKareemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSorahReferanceNumberImplCopyWith<_$UpdateSorahReferanceNumberImpl>
      get copyWith => __$$UpdateSorahReferanceNumberImplCopyWithImpl<
          _$UpdateSorahReferanceNumberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) showHideHelpBar,
    required TResult Function(int pageCount) updatePageCount,
    required TResult Function(int num) updateSorahReferanceNumber,
    required TResult Function(int num) updateJozo2ReferanceNumber,
    required TResult Function(PageSide side) updateSidePage,
  }) {
    return updateSorahReferanceNumber(num);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? showHideHelpBar,
    TResult? Function(int pageCount)? updatePageCount,
    TResult? Function(int num)? updateSorahReferanceNumber,
    TResult? Function(int num)? updateJozo2ReferanceNumber,
    TResult? Function(PageSide side)? updateSidePage,
  }) {
    return updateSorahReferanceNumber?.call(num);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? showHideHelpBar,
    TResult Function(int pageCount)? updatePageCount,
    TResult Function(int num)? updateSorahReferanceNumber,
    TResult Function(int num)? updateJozo2ReferanceNumber,
    TResult Function(PageSide side)? updateSidePage,
    required TResult orElse(),
  }) {
    if (updateSorahReferanceNumber != null) {
      return updateSorahReferanceNumber(num);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowHideHelpBar value) showHideHelpBar,
    required TResult Function(_UpdatePageCount value) updatePageCount,
    required TResult Function(_UpdateSorahReferanceNumber value)
        updateSorahReferanceNumber,
    required TResult Function(_UpdateJozo2ReferanceNumber value)
        updateJozo2ReferanceNumber,
    required TResult Function(_UpdateSidePage value) updateSidePage,
  }) {
    return updateSorahReferanceNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowHideHelpBar value)? showHideHelpBar,
    TResult? Function(_UpdatePageCount value)? updatePageCount,
    TResult? Function(_UpdateSorahReferanceNumber value)?
        updateSorahReferanceNumber,
    TResult? Function(_UpdateJozo2ReferanceNumber value)?
        updateJozo2ReferanceNumber,
    TResult? Function(_UpdateSidePage value)? updateSidePage,
  }) {
    return updateSorahReferanceNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowHideHelpBar value)? showHideHelpBar,
    TResult Function(_UpdatePageCount value)? updatePageCount,
    TResult Function(_UpdateSorahReferanceNumber value)?
        updateSorahReferanceNumber,
    TResult Function(_UpdateJozo2ReferanceNumber value)?
        updateJozo2ReferanceNumber,
    TResult Function(_UpdateSidePage value)? updateSidePage,
    required TResult orElse(),
  }) {
    if (updateSorahReferanceNumber != null) {
      return updateSorahReferanceNumber(this);
    }
    return orElse();
  }
}

abstract class _UpdateSorahReferanceNumber implements QuranKareemEvent {
  factory _UpdateSorahReferanceNumber(final int num) =
      _$UpdateSorahReferanceNumberImpl;

  int get num;

  /// Create a copy of QuranKareemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSorahReferanceNumberImplCopyWith<_$UpdateSorahReferanceNumberImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateJozo2ReferanceNumberImplCopyWith<$Res> {
  factory _$$UpdateJozo2ReferanceNumberImplCopyWith(
          _$UpdateJozo2ReferanceNumberImpl value,
          $Res Function(_$UpdateJozo2ReferanceNumberImpl) then) =
      __$$UpdateJozo2ReferanceNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int num});
}

/// @nodoc
class __$$UpdateJozo2ReferanceNumberImplCopyWithImpl<$Res>
    extends _$QuranKareemEventCopyWithImpl<$Res,
        _$UpdateJozo2ReferanceNumberImpl>
    implements _$$UpdateJozo2ReferanceNumberImplCopyWith<$Res> {
  __$$UpdateJozo2ReferanceNumberImplCopyWithImpl(
      _$UpdateJozo2ReferanceNumberImpl _value,
      $Res Function(_$UpdateJozo2ReferanceNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuranKareemEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? num = null,
  }) {
    return _then(_$UpdateJozo2ReferanceNumberImpl(
      null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateJozo2ReferanceNumberImpl implements _UpdateJozo2ReferanceNumber {
  _$UpdateJozo2ReferanceNumberImpl(this.num);

  @override
  final int num;

  @override
  String toString() {
    return 'QuranKareemEvent.updateJozo2ReferanceNumber(num: $num)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateJozo2ReferanceNumberImpl &&
            (identical(other.num, num) || other.num == num));
  }

  @override
  int get hashCode => Object.hash(runtimeType, num);

  /// Create a copy of QuranKareemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateJozo2ReferanceNumberImplCopyWith<_$UpdateJozo2ReferanceNumberImpl>
      get copyWith => __$$UpdateJozo2ReferanceNumberImplCopyWithImpl<
          _$UpdateJozo2ReferanceNumberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) showHideHelpBar,
    required TResult Function(int pageCount) updatePageCount,
    required TResult Function(int num) updateSorahReferanceNumber,
    required TResult Function(int num) updateJozo2ReferanceNumber,
    required TResult Function(PageSide side) updateSidePage,
  }) {
    return updateJozo2ReferanceNumber(num);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? showHideHelpBar,
    TResult? Function(int pageCount)? updatePageCount,
    TResult? Function(int num)? updateSorahReferanceNumber,
    TResult? Function(int num)? updateJozo2ReferanceNumber,
    TResult? Function(PageSide side)? updateSidePage,
  }) {
    return updateJozo2ReferanceNumber?.call(num);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? showHideHelpBar,
    TResult Function(int pageCount)? updatePageCount,
    TResult Function(int num)? updateSorahReferanceNumber,
    TResult Function(int num)? updateJozo2ReferanceNumber,
    TResult Function(PageSide side)? updateSidePage,
    required TResult orElse(),
  }) {
    if (updateJozo2ReferanceNumber != null) {
      return updateJozo2ReferanceNumber(num);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowHideHelpBar value) showHideHelpBar,
    required TResult Function(_UpdatePageCount value) updatePageCount,
    required TResult Function(_UpdateSorahReferanceNumber value)
        updateSorahReferanceNumber,
    required TResult Function(_UpdateJozo2ReferanceNumber value)
        updateJozo2ReferanceNumber,
    required TResult Function(_UpdateSidePage value) updateSidePage,
  }) {
    return updateJozo2ReferanceNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowHideHelpBar value)? showHideHelpBar,
    TResult? Function(_UpdatePageCount value)? updatePageCount,
    TResult? Function(_UpdateSorahReferanceNumber value)?
        updateSorahReferanceNumber,
    TResult? Function(_UpdateJozo2ReferanceNumber value)?
        updateJozo2ReferanceNumber,
    TResult? Function(_UpdateSidePage value)? updateSidePage,
  }) {
    return updateJozo2ReferanceNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowHideHelpBar value)? showHideHelpBar,
    TResult Function(_UpdatePageCount value)? updatePageCount,
    TResult Function(_UpdateSorahReferanceNumber value)?
        updateSorahReferanceNumber,
    TResult Function(_UpdateJozo2ReferanceNumber value)?
        updateJozo2ReferanceNumber,
    TResult Function(_UpdateSidePage value)? updateSidePage,
    required TResult orElse(),
  }) {
    if (updateJozo2ReferanceNumber != null) {
      return updateJozo2ReferanceNumber(this);
    }
    return orElse();
  }
}

abstract class _UpdateJozo2ReferanceNumber implements QuranKareemEvent {
  factory _UpdateJozo2ReferanceNumber(final int num) =
      _$UpdateJozo2ReferanceNumberImpl;

  int get num;

  /// Create a copy of QuranKareemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateJozo2ReferanceNumberImplCopyWith<_$UpdateJozo2ReferanceNumberImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSidePageImplCopyWith<$Res> {
  factory _$$UpdateSidePageImplCopyWith(_$UpdateSidePageImpl value,
          $Res Function(_$UpdateSidePageImpl) then) =
      __$$UpdateSidePageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PageSide side});
}

/// @nodoc
class __$$UpdateSidePageImplCopyWithImpl<$Res>
    extends _$QuranKareemEventCopyWithImpl<$Res, _$UpdateSidePageImpl>
    implements _$$UpdateSidePageImplCopyWith<$Res> {
  __$$UpdateSidePageImplCopyWithImpl(
      _$UpdateSidePageImpl _value, $Res Function(_$UpdateSidePageImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuranKareemEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? side = null,
  }) {
    return _then(_$UpdateSidePageImpl(
      null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as PageSide,
    ));
  }
}

/// @nodoc

class _$UpdateSidePageImpl implements _UpdateSidePage {
  _$UpdateSidePageImpl(this.side);

  @override
  final PageSide side;

  @override
  String toString() {
    return 'QuranKareemEvent.updateSidePage(side: $side)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSidePageImpl &&
            (identical(other.side, side) || other.side == side));
  }

  @override
  int get hashCode => Object.hash(runtimeType, side);

  /// Create a copy of QuranKareemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSidePageImplCopyWith<_$UpdateSidePageImpl> get copyWith =>
      __$$UpdateSidePageImplCopyWithImpl<_$UpdateSidePageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool status) showHideHelpBar,
    required TResult Function(int pageCount) updatePageCount,
    required TResult Function(int num) updateSorahReferanceNumber,
    required TResult Function(int num) updateJozo2ReferanceNumber,
    required TResult Function(PageSide side) updateSidePage,
  }) {
    return updateSidePage(side);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool status)? showHideHelpBar,
    TResult? Function(int pageCount)? updatePageCount,
    TResult? Function(int num)? updateSorahReferanceNumber,
    TResult? Function(int num)? updateJozo2ReferanceNumber,
    TResult? Function(PageSide side)? updateSidePage,
  }) {
    return updateSidePage?.call(side);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool status)? showHideHelpBar,
    TResult Function(int pageCount)? updatePageCount,
    TResult Function(int num)? updateSorahReferanceNumber,
    TResult Function(int num)? updateJozo2ReferanceNumber,
    TResult Function(PageSide side)? updateSidePage,
    required TResult orElse(),
  }) {
    if (updateSidePage != null) {
      return updateSidePage(side);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowHideHelpBar value) showHideHelpBar,
    required TResult Function(_UpdatePageCount value) updatePageCount,
    required TResult Function(_UpdateSorahReferanceNumber value)
        updateSorahReferanceNumber,
    required TResult Function(_UpdateJozo2ReferanceNumber value)
        updateJozo2ReferanceNumber,
    required TResult Function(_UpdateSidePage value) updateSidePage,
  }) {
    return updateSidePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowHideHelpBar value)? showHideHelpBar,
    TResult? Function(_UpdatePageCount value)? updatePageCount,
    TResult? Function(_UpdateSorahReferanceNumber value)?
        updateSorahReferanceNumber,
    TResult? Function(_UpdateJozo2ReferanceNumber value)?
        updateJozo2ReferanceNumber,
    TResult? Function(_UpdateSidePage value)? updateSidePage,
  }) {
    return updateSidePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowHideHelpBar value)? showHideHelpBar,
    TResult Function(_UpdatePageCount value)? updatePageCount,
    TResult Function(_UpdateSorahReferanceNumber value)?
        updateSorahReferanceNumber,
    TResult Function(_UpdateJozo2ReferanceNumber value)?
        updateJozo2ReferanceNumber,
    TResult Function(_UpdateSidePage value)? updateSidePage,
    required TResult orElse(),
  }) {
    if (updateSidePage != null) {
      return updateSidePage(this);
    }
    return orElse();
  }
}

abstract class _UpdateSidePage implements QuranKareemEvent {
  factory _UpdateSidePage(final PageSide side) = _$UpdateSidePageImpl;

  PageSide get side;

  /// Create a copy of QuranKareemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSidePageImplCopyWith<_$UpdateSidePageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuranKareemState {
  bool get showHelpBar => throw _privateConstructorUsedError;
  int get pageCount => throw _privateConstructorUsedError;
  int get sorahReferanceNumber => throw _privateConstructorUsedError;
  int get jozo2ReferanceNumber => throw _privateConstructorUsedError;
  PageSide get pageSide => throw _privateConstructorUsedError;

  /// Create a copy of QuranKareemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuranKareemStateCopyWith<QuranKareemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranKareemStateCopyWith<$Res> {
  factory $QuranKareemStateCopyWith(
          QuranKareemState value, $Res Function(QuranKareemState) then) =
      _$QuranKareemStateCopyWithImpl<$Res, QuranKareemState>;
  @useResult
  $Res call(
      {bool showHelpBar,
      int pageCount,
      int sorahReferanceNumber,
      int jozo2ReferanceNumber,
      PageSide pageSide});
}

/// @nodoc
class _$QuranKareemStateCopyWithImpl<$Res, $Val extends QuranKareemState>
    implements $QuranKareemStateCopyWith<$Res> {
  _$QuranKareemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuranKareemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showHelpBar = null,
    Object? pageCount = null,
    Object? sorahReferanceNumber = null,
    Object? jozo2ReferanceNumber = null,
    Object? pageSide = null,
  }) {
    return _then(_value.copyWith(
      showHelpBar: null == showHelpBar
          ? _value.showHelpBar
          : showHelpBar // ignore: cast_nullable_to_non_nullable
              as bool,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      sorahReferanceNumber: null == sorahReferanceNumber
          ? _value.sorahReferanceNumber
          : sorahReferanceNumber // ignore: cast_nullable_to_non_nullable
              as int,
      jozo2ReferanceNumber: null == jozo2ReferanceNumber
          ? _value.jozo2ReferanceNumber
          : jozo2ReferanceNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSide: null == pageSide
          ? _value.pageSide
          : pageSide // ignore: cast_nullable_to_non_nullable
              as PageSide,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuranKareemStateImplCopyWith<$Res>
    implements $QuranKareemStateCopyWith<$Res> {
  factory _$$QuranKareemStateImplCopyWith(_$QuranKareemStateImpl value,
          $Res Function(_$QuranKareemStateImpl) then) =
      __$$QuranKareemStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showHelpBar,
      int pageCount,
      int sorahReferanceNumber,
      int jozo2ReferanceNumber,
      PageSide pageSide});
}

/// @nodoc
class __$$QuranKareemStateImplCopyWithImpl<$Res>
    extends _$QuranKareemStateCopyWithImpl<$Res, _$QuranKareemStateImpl>
    implements _$$QuranKareemStateImplCopyWith<$Res> {
  __$$QuranKareemStateImplCopyWithImpl(_$QuranKareemStateImpl _value,
      $Res Function(_$QuranKareemStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuranKareemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showHelpBar = null,
    Object? pageCount = null,
    Object? sorahReferanceNumber = null,
    Object? jozo2ReferanceNumber = null,
    Object? pageSide = null,
  }) {
    return _then(_$QuranKareemStateImpl(
      showHelpBar: null == showHelpBar
          ? _value.showHelpBar
          : showHelpBar // ignore: cast_nullable_to_non_nullable
              as bool,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      sorahReferanceNumber: null == sorahReferanceNumber
          ? _value.sorahReferanceNumber
          : sorahReferanceNumber // ignore: cast_nullable_to_non_nullable
              as int,
      jozo2ReferanceNumber: null == jozo2ReferanceNumber
          ? _value.jozo2ReferanceNumber
          : jozo2ReferanceNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSide: null == pageSide
          ? _value.pageSide
          : pageSide // ignore: cast_nullable_to_non_nullable
              as PageSide,
    ));
  }
}

/// @nodoc

class _$QuranKareemStateImpl implements _QuranKareemState {
  const _$QuranKareemStateImpl(
      {this.showHelpBar = true,
      this.pageCount = 1,
      this.sorahReferanceNumber = 0,
      this.jozo2ReferanceNumber = 0,
      this.pageSide = PageSide.left});

  @override
  @JsonKey()
  final bool showHelpBar;
  @override
  @JsonKey()
  final int pageCount;
  @override
  @JsonKey()
  final int sorahReferanceNumber;
  @override
  @JsonKey()
  final int jozo2ReferanceNumber;
  @override
  @JsonKey()
  final PageSide pageSide;

  @override
  String toString() {
    return 'QuranKareemState(showHelpBar: $showHelpBar, pageCount: $pageCount, sorahReferanceNumber: $sorahReferanceNumber, jozo2ReferanceNumber: $jozo2ReferanceNumber, pageSide: $pageSide)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranKareemStateImpl &&
            (identical(other.showHelpBar, showHelpBar) ||
                other.showHelpBar == showHelpBar) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.sorahReferanceNumber, sorahReferanceNumber) ||
                other.sorahReferanceNumber == sorahReferanceNumber) &&
            (identical(other.jozo2ReferanceNumber, jozo2ReferanceNumber) ||
                other.jozo2ReferanceNumber == jozo2ReferanceNumber) &&
            (identical(other.pageSide, pageSide) ||
                other.pageSide == pageSide));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showHelpBar, pageCount,
      sorahReferanceNumber, jozo2ReferanceNumber, pageSide);

  /// Create a copy of QuranKareemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranKareemStateImplCopyWith<_$QuranKareemStateImpl> get copyWith =>
      __$$QuranKareemStateImplCopyWithImpl<_$QuranKareemStateImpl>(
          this, _$identity);
}

abstract class _QuranKareemState implements QuranKareemState {
  const factory _QuranKareemState(
      {final bool showHelpBar,
      final int pageCount,
      final int sorahReferanceNumber,
      final int jozo2ReferanceNumber,
      final PageSide pageSide}) = _$QuranKareemStateImpl;

  @override
  bool get showHelpBar;
  @override
  int get pageCount;
  @override
  int get sorahReferanceNumber;
  @override
  int get jozo2ReferanceNumber;
  @override
  PageSide get pageSide;

  /// Create a copy of QuranKareemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuranKareemStateImplCopyWith<_$QuranKareemStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}