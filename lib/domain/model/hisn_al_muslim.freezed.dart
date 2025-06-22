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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HisnAlMuslimModel {
  int get id => throw _privateConstructorUsedError;
  MultiLanguageString get title => throw _privateConstructorUsedError;
  HisnAlMuslimModelState get details => throw _privateConstructorUsedError;
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
    HisnAlMuslimModel value,
    $Res Function(HisnAlMuslimModel) then,
  ) = _$HisnAlMuslimModelCopyWithImpl<$Res, HisnAlMuslimModel>;
  @useResult
  $Res call({
    int id,
    MultiLanguageString title,
    HisnAlMuslimModelState details,
    bool isFavorite,
  });

  $HisnAlMuslimModelStateCopyWith<$Res> get details;
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
    Object? details = null,
    Object? isFavorite = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as MultiLanguageString,
            details: null == details
                ? _value.details
                : details // ignore: cast_nullable_to_non_nullable
                      as HisnAlMuslimModelState,
            isFavorite: null == isFavorite
                ? _value.isFavorite
                : isFavorite // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of HisnAlMuslimModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HisnAlMuslimModelStateCopyWith<$Res> get details {
    return $HisnAlMuslimModelStateCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HisnAlMuslimModelImplCopyWith<$Res>
    implements $HisnAlMuslimModelCopyWith<$Res> {
  factory _$$HisnAlMuslimModelImplCopyWith(
    _$HisnAlMuslimModelImpl value,
    $Res Function(_$HisnAlMuslimModelImpl) then,
  ) = __$$HisnAlMuslimModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    MultiLanguageString title,
    HisnAlMuslimModelState details,
    bool isFavorite,
  });

  @override
  $HisnAlMuslimModelStateCopyWith<$Res> get details;
}

/// @nodoc
class __$$HisnAlMuslimModelImplCopyWithImpl<$Res>
    extends _$HisnAlMuslimModelCopyWithImpl<$Res, _$HisnAlMuslimModelImpl>
    implements _$$HisnAlMuslimModelImplCopyWith<$Res> {
  __$$HisnAlMuslimModelImplCopyWithImpl(
    _$HisnAlMuslimModelImpl _value,
    $Res Function(_$HisnAlMuslimModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HisnAlMuslimModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? details = null,
    Object? isFavorite = null,
  }) {
    return _then(
      _$HisnAlMuslimModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as MultiLanguageString,
        details: null == details
            ? _value.details
            : details // ignore: cast_nullable_to_non_nullable
                  as HisnAlMuslimModelState,
        isFavorite: null == isFavorite
            ? _value.isFavorite
            : isFavorite // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$HisnAlMuslimModelImpl implements _HisnAlMuslimModel {
  _$HisnAlMuslimModelImpl({
    required this.id,
    required this.title,
    required this.details,
    this.isFavorite = false,
  });

  @override
  final int id;
  @override
  final MultiLanguageString title;
  @override
  final HisnAlMuslimModelState details;
  @override
  @JsonKey()
  final bool isFavorite;

  @override
  String toString() {
    return 'HisnAlMuslimModel(id: $id, title: $title, details: $details, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HisnAlMuslimModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, details, isFavorite);

  /// Create a copy of HisnAlMuslimModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HisnAlMuslimModelImplCopyWith<_$HisnAlMuslimModelImpl> get copyWith =>
      __$$HisnAlMuslimModelImplCopyWithImpl<_$HisnAlMuslimModelImpl>(
        this,
        _$identity,
      );
}

abstract class _HisnAlMuslimModel implements HisnAlMuslimModel {
  factory _HisnAlMuslimModel({
    required final int id,
    required final MultiLanguageString title,
    required final HisnAlMuslimModelState details,
    final bool isFavorite,
  }) = _$HisnAlMuslimModelImpl;

  @override
  int get id;
  @override
  MultiLanguageString get title;
  @override
  HisnAlMuslimModelState get details;
  @override
  bool get isFavorite;

  /// Create a copy of HisnAlMuslimModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HisnAlMuslimModelImplCopyWith<_$HisnAlMuslimModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HisnAlMuslimModelState {
  List<Object> get list => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<MultiLanguageString> list,
      List<MultiLanguageString> referance,
    )
    text,
    required TResult Function(List<HisnAlMuslimCounterDetailsModel> list)
    counter,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      List<MultiLanguageString> list,
      List<MultiLanguageString> referance,
    )?
    text,
    TResult? Function(List<HisnAlMuslimCounterDetailsModel> list)? counter,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      List<MultiLanguageString> list,
      List<MultiLanguageString> referance,
    )?
    text,
    TResult Function(List<HisnAlMuslimCounterDetailsModel> list)? counter,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HisnAlMuslimModelStateText value) text,
    required TResult Function(HisnAlMuslimModelStateCounter value) counter,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HisnAlMuslimModelStateText value)? text,
    TResult? Function(HisnAlMuslimModelStateCounter value)? counter,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HisnAlMuslimModelStateText value)? text,
    TResult Function(HisnAlMuslimModelStateCounter value)? counter,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HisnAlMuslimModelStateCopyWith<$Res> {
  factory $HisnAlMuslimModelStateCopyWith(
    HisnAlMuslimModelState value,
    $Res Function(HisnAlMuslimModelState) then,
  ) = _$HisnAlMuslimModelStateCopyWithImpl<$Res, HisnAlMuslimModelState>;
}

/// @nodoc
class _$HisnAlMuslimModelStateCopyWithImpl<
  $Res,
  $Val extends HisnAlMuslimModelState
>
    implements $HisnAlMuslimModelStateCopyWith<$Res> {
  _$HisnAlMuslimModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HisnAlMuslimModelState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HisnAlMuslimModelStateTextImplCopyWith<$Res> {
  factory _$$HisnAlMuslimModelStateTextImplCopyWith(
    _$HisnAlMuslimModelStateTextImpl value,
    $Res Function(_$HisnAlMuslimModelStateTextImpl) then,
  ) = __$$HisnAlMuslimModelStateTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    List<MultiLanguageString> list,
    List<MultiLanguageString> referance,
  });
}

/// @nodoc
class __$$HisnAlMuslimModelStateTextImplCopyWithImpl<$Res>
    extends
        _$HisnAlMuslimModelStateCopyWithImpl<
          $Res,
          _$HisnAlMuslimModelStateTextImpl
        >
    implements _$$HisnAlMuslimModelStateTextImplCopyWith<$Res> {
  __$$HisnAlMuslimModelStateTextImplCopyWithImpl(
    _$HisnAlMuslimModelStateTextImpl _value,
    $Res Function(_$HisnAlMuslimModelStateTextImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HisnAlMuslimModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? list = null, Object? referance = null}) {
    return _then(
      _$HisnAlMuslimModelStateTextImpl(
        list: null == list
            ? _value._list
            : list // ignore: cast_nullable_to_non_nullable
                  as List<MultiLanguageString>,
        referance: null == referance
            ? _value._referance
            : referance // ignore: cast_nullable_to_non_nullable
                  as List<MultiLanguageString>,
      ),
    );
  }
}

/// @nodoc

class _$HisnAlMuslimModelStateTextImpl implements HisnAlMuslimModelStateText {
  const _$HisnAlMuslimModelStateTextImpl({
    required final List<MultiLanguageString> list,
    required final List<MultiLanguageString> referance,
  }) : _list = list,
       _referance = referance;

  final List<MultiLanguageString> _list;
  @override
  List<MultiLanguageString> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  final List<MultiLanguageString> _referance;
  @override
  List<MultiLanguageString> get referance {
    if (_referance is EqualUnmodifiableListView) return _referance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_referance);
  }

  @override
  String toString() {
    return 'HisnAlMuslimModelState.text(list: $list, referance: $referance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HisnAlMuslimModelStateTextImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            const DeepCollectionEquality().equals(
              other._referance,
              _referance,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_list),
    const DeepCollectionEquality().hash(_referance),
  );

  /// Create a copy of HisnAlMuslimModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HisnAlMuslimModelStateTextImplCopyWith<_$HisnAlMuslimModelStateTextImpl>
  get copyWith =>
      __$$HisnAlMuslimModelStateTextImplCopyWithImpl<
        _$HisnAlMuslimModelStateTextImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<MultiLanguageString> list,
      List<MultiLanguageString> referance,
    )
    text,
    required TResult Function(List<HisnAlMuslimCounterDetailsModel> list)
    counter,
  }) {
    return text(list, referance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      List<MultiLanguageString> list,
      List<MultiLanguageString> referance,
    )?
    text,
    TResult? Function(List<HisnAlMuslimCounterDetailsModel> list)? counter,
  }) {
    return text?.call(list, referance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      List<MultiLanguageString> list,
      List<MultiLanguageString> referance,
    )?
    text,
    TResult Function(List<HisnAlMuslimCounterDetailsModel> list)? counter,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(list, referance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HisnAlMuslimModelStateText value) text,
    required TResult Function(HisnAlMuslimModelStateCounter value) counter,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HisnAlMuslimModelStateText value)? text,
    TResult? Function(HisnAlMuslimModelStateCounter value)? counter,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HisnAlMuslimModelStateText value)? text,
    TResult Function(HisnAlMuslimModelStateCounter value)? counter,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class HisnAlMuslimModelStateText implements HisnAlMuslimModelState {
  const factory HisnAlMuslimModelStateText({
    required final List<MultiLanguageString> list,
    required final List<MultiLanguageString> referance,
  }) = _$HisnAlMuslimModelStateTextImpl;

  @override
  List<MultiLanguageString> get list;
  List<MultiLanguageString> get referance;

  /// Create a copy of HisnAlMuslimModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HisnAlMuslimModelStateTextImplCopyWith<_$HisnAlMuslimModelStateTextImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HisnAlMuslimModelStateCounterImplCopyWith<$Res> {
  factory _$$HisnAlMuslimModelStateCounterImplCopyWith(
    _$HisnAlMuslimModelStateCounterImpl value,
    $Res Function(_$HisnAlMuslimModelStateCounterImpl) then,
  ) = __$$HisnAlMuslimModelStateCounterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HisnAlMuslimCounterDetailsModel> list});
}

/// @nodoc
class __$$HisnAlMuslimModelStateCounterImplCopyWithImpl<$Res>
    extends
        _$HisnAlMuslimModelStateCopyWithImpl<
          $Res,
          _$HisnAlMuslimModelStateCounterImpl
        >
    implements _$$HisnAlMuslimModelStateCounterImplCopyWith<$Res> {
  __$$HisnAlMuslimModelStateCounterImplCopyWithImpl(
    _$HisnAlMuslimModelStateCounterImpl _value,
    $Res Function(_$HisnAlMuslimModelStateCounterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HisnAlMuslimModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? list = null}) {
    return _then(
      _$HisnAlMuslimModelStateCounterImpl(
        null == list
            ? _value._list
            : list // ignore: cast_nullable_to_non_nullable
                  as List<HisnAlMuslimCounterDetailsModel>,
      ),
    );
  }
}

/// @nodoc

class _$HisnAlMuslimModelStateCounterImpl
    implements HisnAlMuslimModelStateCounter {
  const _$HisnAlMuslimModelStateCounterImpl(
    final List<HisnAlMuslimCounterDetailsModel> list,
  ) : _list = list;

  final List<HisnAlMuslimCounterDetailsModel> _list;
  @override
  List<HisnAlMuslimCounterDetailsModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'HisnAlMuslimModelState.counter(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HisnAlMuslimModelStateCounterImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of HisnAlMuslimModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HisnAlMuslimModelStateCounterImplCopyWith<
    _$HisnAlMuslimModelStateCounterImpl
  >
  get copyWith =>
      __$$HisnAlMuslimModelStateCounterImplCopyWithImpl<
        _$HisnAlMuslimModelStateCounterImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<MultiLanguageString> list,
      List<MultiLanguageString> referance,
    )
    text,
    required TResult Function(List<HisnAlMuslimCounterDetailsModel> list)
    counter,
  }) {
    return counter(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      List<MultiLanguageString> list,
      List<MultiLanguageString> referance,
    )?
    text,
    TResult? Function(List<HisnAlMuslimCounterDetailsModel> list)? counter,
  }) {
    return counter?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      List<MultiLanguageString> list,
      List<MultiLanguageString> referance,
    )?
    text,
    TResult Function(List<HisnAlMuslimCounterDetailsModel> list)? counter,
    required TResult orElse(),
  }) {
    if (counter != null) {
      return counter(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HisnAlMuslimModelStateText value) text,
    required TResult Function(HisnAlMuslimModelStateCounter value) counter,
  }) {
    return counter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HisnAlMuslimModelStateText value)? text,
    TResult? Function(HisnAlMuslimModelStateCounter value)? counter,
  }) {
    return counter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HisnAlMuslimModelStateText value)? text,
    TResult Function(HisnAlMuslimModelStateCounter value)? counter,
    required TResult orElse(),
  }) {
    if (counter != null) {
      return counter(this);
    }
    return orElse();
  }
}

abstract class HisnAlMuslimModelStateCounter implements HisnAlMuslimModelState {
  const factory HisnAlMuslimModelStateCounter(
    final List<HisnAlMuslimCounterDetailsModel> list,
  ) = _$HisnAlMuslimModelStateCounterImpl;

  @override
  List<HisnAlMuslimCounterDetailsModel> get list;

  /// Create a copy of HisnAlMuslimModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HisnAlMuslimModelStateCounterImplCopyWith<
    _$HisnAlMuslimModelStateCounterImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
