// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_holder_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ImageHolderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File? initialFile, String? imageUrl) initialImage,
    required TResult Function() onRemoveImage,
    required TResult Function(File? image) onUpdateImage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File? initialFile, String? imageUrl)? initialImage,
    TResult? Function()? onRemoveImage,
    TResult? Function(File? image)? onUpdateImage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File? initialFile, String? imageUrl)? initialImage,
    TResult Function()? onRemoveImage,
    TResult Function(File? image)? onUpdateImage,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitialImage value) initialImage,
    required TResult Function(_OnRemoveImage value) onRemoveImage,
    required TResult Function(_OnUpdateImage value) onUpdateImage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInitialImage value)? initialImage,
    TResult? Function(_OnRemoveImage value)? onRemoveImage,
    TResult? Function(_OnUpdateImage value)? onUpdateImage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitialImage value)? initialImage,
    TResult Function(_OnRemoveImage value)? onRemoveImage,
    TResult Function(_OnUpdateImage value)? onUpdateImage,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageHolderEventCopyWith<$Res> {
  factory $ImageHolderEventCopyWith(
    ImageHolderEvent value,
    $Res Function(ImageHolderEvent) then,
  ) = _$ImageHolderEventCopyWithImpl<$Res, ImageHolderEvent>;
}

/// @nodoc
class _$ImageHolderEventCopyWithImpl<$Res, $Val extends ImageHolderEvent>
    implements $ImageHolderEventCopyWith<$Res> {
  _$ImageHolderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageHolderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnInitialImageImplCopyWith<$Res> {
  factory _$$OnInitialImageImplCopyWith(
    _$OnInitialImageImpl value,
    $Res Function(_$OnInitialImageImpl) then,
  ) = __$$OnInitialImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File? initialFile, String? imageUrl});
}

/// @nodoc
class __$$OnInitialImageImplCopyWithImpl<$Res>
    extends _$ImageHolderEventCopyWithImpl<$Res, _$OnInitialImageImpl>
    implements _$$OnInitialImageImplCopyWith<$Res> {
  __$$OnInitialImageImplCopyWithImpl(
    _$OnInitialImageImpl _value,
    $Res Function(_$OnInitialImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ImageHolderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? initialFile = freezed, Object? imageUrl = freezed}) {
    return _then(
      _$OnInitialImageImpl(
        freezed == initialFile
            ? _value.initialFile
            : initialFile // ignore: cast_nullable_to_non_nullable
                  as File?,
        freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$OnInitialImageImpl implements _OnInitialImage {
  const _$OnInitialImageImpl(this.initialFile, this.imageUrl);

  @override
  final File? initialFile;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'ImageHolderEvent.initialImage(initialFile: $initialFile, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnInitialImageImpl &&
            (identical(other.initialFile, initialFile) ||
                other.initialFile == initialFile) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialFile, imageUrl);

  /// Create a copy of ImageHolderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnInitialImageImplCopyWith<_$OnInitialImageImpl> get copyWith =>
      __$$OnInitialImageImplCopyWithImpl<_$OnInitialImageImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File? initialFile, String? imageUrl) initialImage,
    required TResult Function() onRemoveImage,
    required TResult Function(File? image) onUpdateImage,
  }) {
    return initialImage(initialFile, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File? initialFile, String? imageUrl)? initialImage,
    TResult? Function()? onRemoveImage,
    TResult? Function(File? image)? onUpdateImage,
  }) {
    return initialImage?.call(initialFile, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File? initialFile, String? imageUrl)? initialImage,
    TResult Function()? onRemoveImage,
    TResult Function(File? image)? onUpdateImage,
    required TResult orElse(),
  }) {
    if (initialImage != null) {
      return initialImage(initialFile, imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitialImage value) initialImage,
    required TResult Function(_OnRemoveImage value) onRemoveImage,
    required TResult Function(_OnUpdateImage value) onUpdateImage,
  }) {
    return initialImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInitialImage value)? initialImage,
    TResult? Function(_OnRemoveImage value)? onRemoveImage,
    TResult? Function(_OnUpdateImage value)? onUpdateImage,
  }) {
    return initialImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitialImage value)? initialImage,
    TResult Function(_OnRemoveImage value)? onRemoveImage,
    TResult Function(_OnUpdateImage value)? onUpdateImage,
    required TResult orElse(),
  }) {
    if (initialImage != null) {
      return initialImage(this);
    }
    return orElse();
  }
}

abstract class _OnInitialImage implements ImageHolderEvent {
  const factory _OnInitialImage(
    final File? initialFile,
    final String? imageUrl,
  ) = _$OnInitialImageImpl;

  File? get initialFile;
  String? get imageUrl;

  /// Create a copy of ImageHolderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnInitialImageImplCopyWith<_$OnInitialImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnRemoveImageImplCopyWith<$Res> {
  factory _$$OnRemoveImageImplCopyWith(
    _$OnRemoveImageImpl value,
    $Res Function(_$OnRemoveImageImpl) then,
  ) = __$$OnRemoveImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnRemoveImageImplCopyWithImpl<$Res>
    extends _$ImageHolderEventCopyWithImpl<$Res, _$OnRemoveImageImpl>
    implements _$$OnRemoveImageImplCopyWith<$Res> {
  __$$OnRemoveImageImplCopyWithImpl(
    _$OnRemoveImageImpl _value,
    $Res Function(_$OnRemoveImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ImageHolderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnRemoveImageImpl implements _OnRemoveImage {
  const _$OnRemoveImageImpl();

  @override
  String toString() {
    return 'ImageHolderEvent.onRemoveImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnRemoveImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File? initialFile, String? imageUrl) initialImage,
    required TResult Function() onRemoveImage,
    required TResult Function(File? image) onUpdateImage,
  }) {
    return onRemoveImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File? initialFile, String? imageUrl)? initialImage,
    TResult? Function()? onRemoveImage,
    TResult? Function(File? image)? onUpdateImage,
  }) {
    return onRemoveImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File? initialFile, String? imageUrl)? initialImage,
    TResult Function()? onRemoveImage,
    TResult Function(File? image)? onUpdateImage,
    required TResult orElse(),
  }) {
    if (onRemoveImage != null) {
      return onRemoveImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitialImage value) initialImage,
    required TResult Function(_OnRemoveImage value) onRemoveImage,
    required TResult Function(_OnUpdateImage value) onUpdateImage,
  }) {
    return onRemoveImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInitialImage value)? initialImage,
    TResult? Function(_OnRemoveImage value)? onRemoveImage,
    TResult? Function(_OnUpdateImage value)? onUpdateImage,
  }) {
    return onRemoveImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitialImage value)? initialImage,
    TResult Function(_OnRemoveImage value)? onRemoveImage,
    TResult Function(_OnUpdateImage value)? onUpdateImage,
    required TResult orElse(),
  }) {
    if (onRemoveImage != null) {
      return onRemoveImage(this);
    }
    return orElse();
  }
}

abstract class _OnRemoveImage implements ImageHolderEvent {
  const factory _OnRemoveImage() = _$OnRemoveImageImpl;
}

/// @nodoc
abstract class _$$OnUpdateImageImplCopyWith<$Res> {
  factory _$$OnUpdateImageImplCopyWith(
    _$OnUpdateImageImpl value,
    $Res Function(_$OnUpdateImageImpl) then,
  ) = __$$OnUpdateImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File? image});
}

/// @nodoc
class __$$OnUpdateImageImplCopyWithImpl<$Res>
    extends _$ImageHolderEventCopyWithImpl<$Res, _$OnUpdateImageImpl>
    implements _$$OnUpdateImageImplCopyWith<$Res> {
  __$$OnUpdateImageImplCopyWithImpl(
    _$OnUpdateImageImpl _value,
    $Res Function(_$OnUpdateImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ImageHolderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? image = freezed}) {
    return _then(
      _$OnUpdateImageImpl(
        freezed == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                  as File?,
      ),
    );
  }
}

/// @nodoc

class _$OnUpdateImageImpl implements _OnUpdateImage {
  const _$OnUpdateImageImpl(this.image);

  @override
  final File? image;

  @override
  String toString() {
    return 'ImageHolderEvent.onUpdateImage(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnUpdateImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  /// Create a copy of ImageHolderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnUpdateImageImplCopyWith<_$OnUpdateImageImpl> get copyWith =>
      __$$OnUpdateImageImplCopyWithImpl<_$OnUpdateImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File? initialFile, String? imageUrl) initialImage,
    required TResult Function() onRemoveImage,
    required TResult Function(File? image) onUpdateImage,
  }) {
    return onUpdateImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File? initialFile, String? imageUrl)? initialImage,
    TResult? Function()? onRemoveImage,
    TResult? Function(File? image)? onUpdateImage,
  }) {
    return onUpdateImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File? initialFile, String? imageUrl)? initialImage,
    TResult Function()? onRemoveImage,
    TResult Function(File? image)? onUpdateImage,
    required TResult orElse(),
  }) {
    if (onUpdateImage != null) {
      return onUpdateImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnInitialImage value) initialImage,
    required TResult Function(_OnRemoveImage value) onRemoveImage,
    required TResult Function(_OnUpdateImage value) onUpdateImage,
  }) {
    return onUpdateImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnInitialImage value)? initialImage,
    TResult? Function(_OnRemoveImage value)? onRemoveImage,
    TResult? Function(_OnUpdateImage value)? onUpdateImage,
  }) {
    return onUpdateImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnInitialImage value)? initialImage,
    TResult Function(_OnRemoveImage value)? onRemoveImage,
    TResult Function(_OnUpdateImage value)? onUpdateImage,
    required TResult orElse(),
  }) {
    if (onUpdateImage != null) {
      return onUpdateImage(this);
    }
    return orElse();
  }
}

abstract class _OnUpdateImage implements ImageHolderEvent {
  const factory _OnUpdateImage(final File? image) = _$OnUpdateImageImpl;

  File? get image;

  /// Create a copy of ImageHolderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnUpdateImageImplCopyWith<_$OnUpdateImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImageHolderState {
  String? get imageUrl => throw _privateConstructorUsedError;
  File? get imageFile => throw _privateConstructorUsedError;

  /// Create a copy of ImageHolderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageHolderStateCopyWith<ImageHolderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageHolderStateCopyWith<$Res> {
  factory $ImageHolderStateCopyWith(
    ImageHolderState value,
    $Res Function(ImageHolderState) then,
  ) = _$ImageHolderStateCopyWithImpl<$Res, ImageHolderState>;
  @useResult
  $Res call({String? imageUrl, File? imageFile});
}

/// @nodoc
class _$ImageHolderStateCopyWithImpl<$Res, $Val extends ImageHolderState>
    implements $ImageHolderStateCopyWith<$Res> {
  _$ImageHolderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageHolderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? imageUrl = freezed, Object? imageFile = freezed}) {
    return _then(
      _value.copyWith(
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            imageFile: freezed == imageFile
                ? _value.imageFile
                : imageFile // ignore: cast_nullable_to_non_nullable
                      as File?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ImageHolderStateImplCopyWith<$Res>
    implements $ImageHolderStateCopyWith<$Res> {
  factory _$$ImageHolderStateImplCopyWith(
    _$ImageHolderStateImpl value,
    $Res Function(_$ImageHolderStateImpl) then,
  ) = __$$ImageHolderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imageUrl, File? imageFile});
}

/// @nodoc
class __$$ImageHolderStateImplCopyWithImpl<$Res>
    extends _$ImageHolderStateCopyWithImpl<$Res, _$ImageHolderStateImpl>
    implements _$$ImageHolderStateImplCopyWith<$Res> {
  __$$ImageHolderStateImplCopyWithImpl(
    _$ImageHolderStateImpl _value,
    $Res Function(_$ImageHolderStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ImageHolderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? imageUrl = freezed, Object? imageFile = freezed}) {
    return _then(
      _$ImageHolderStateImpl(
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        imageFile: freezed == imageFile
            ? _value.imageFile
            : imageFile // ignore: cast_nullable_to_non_nullable
                  as File?,
      ),
    );
  }
}

/// @nodoc

class _$ImageHolderStateImpl implements _ImageHolderState {
  const _$ImageHolderStateImpl({this.imageUrl, this.imageFile});

  @override
  final String? imageUrl;
  @override
  final File? imageFile;

  @override
  String toString() {
    return 'ImageHolderState(imageUrl: $imageUrl, imageFile: $imageFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageHolderStateImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, imageFile);

  /// Create a copy of ImageHolderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageHolderStateImplCopyWith<_$ImageHolderStateImpl> get copyWith =>
      __$$ImageHolderStateImplCopyWithImpl<_$ImageHolderStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ImageHolderState implements ImageHolderState {
  const factory _ImageHolderState({
    final String? imageUrl,
    final File? imageFile,
  }) = _$ImageHolderStateImpl;

  @override
  String? get imageUrl;
  @override
  File? get imageFile;

  /// Create a copy of ImageHolderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageHolderStateImplCopyWith<_$ImageHolderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
