// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_holder_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImageHolderEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageHolderEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImageHolderEvent()';
}


}

/// @nodoc
class $ImageHolderEventCopyWith<$Res>  {
$ImageHolderEventCopyWith(ImageHolderEvent _, $Res Function(ImageHolderEvent) __);
}


/// Adds pattern-matching-related methods to [ImageHolderEvent].
extension ImageHolderEventPatterns on ImageHolderEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _OnInitialImage value)?  initialImage,TResult Function( _OnRemoveImage value)?  onRemoveImage,TResult Function( _OnUpdateImage value)?  onUpdateImage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnInitialImage() when initialImage != null:
return initialImage(_that);case _OnRemoveImage() when onRemoveImage != null:
return onRemoveImage(_that);case _OnUpdateImage() when onUpdateImage != null:
return onUpdateImage(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _OnInitialImage value)  initialImage,required TResult Function( _OnRemoveImage value)  onRemoveImage,required TResult Function( _OnUpdateImage value)  onUpdateImage,}){
final _that = this;
switch (_that) {
case _OnInitialImage():
return initialImage(_that);case _OnRemoveImage():
return onRemoveImage(_that);case _OnUpdateImage():
return onUpdateImage(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _OnInitialImage value)?  initialImage,TResult? Function( _OnRemoveImage value)?  onRemoveImage,TResult? Function( _OnUpdateImage value)?  onUpdateImage,}){
final _that = this;
switch (_that) {
case _OnInitialImage() when initialImage != null:
return initialImage(_that);case _OnRemoveImage() when onRemoveImage != null:
return onRemoveImage(_that);case _OnUpdateImage() when onUpdateImage != null:
return onUpdateImage(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( File? initialFile,  String? imageUrl)?  initialImage,TResult Function()?  onRemoveImage,TResult Function( File? image)?  onUpdateImage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnInitialImage() when initialImage != null:
return initialImage(_that.initialFile,_that.imageUrl);case _OnRemoveImage() when onRemoveImage != null:
return onRemoveImage();case _OnUpdateImage() when onUpdateImage != null:
return onUpdateImage(_that.image);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( File? initialFile,  String? imageUrl)  initialImage,required TResult Function()  onRemoveImage,required TResult Function( File? image)  onUpdateImage,}) {final _that = this;
switch (_that) {
case _OnInitialImage():
return initialImage(_that.initialFile,_that.imageUrl);case _OnRemoveImage():
return onRemoveImage();case _OnUpdateImage():
return onUpdateImage(_that.image);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( File? initialFile,  String? imageUrl)?  initialImage,TResult? Function()?  onRemoveImage,TResult? Function( File? image)?  onUpdateImage,}) {final _that = this;
switch (_that) {
case _OnInitialImage() when initialImage != null:
return initialImage(_that.initialFile,_that.imageUrl);case _OnRemoveImage() when onRemoveImage != null:
return onRemoveImage();case _OnUpdateImage() when onUpdateImage != null:
return onUpdateImage(_that.image);case _:
  return null;

}
}

}

/// @nodoc


class _OnInitialImage implements ImageHolderEvent {
  const _OnInitialImage(this.initialFile, this.imageUrl);
  

 final  File? initialFile;
 final  String? imageUrl;

/// Create a copy of ImageHolderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnInitialImageCopyWith<_OnInitialImage> get copyWith => __$OnInitialImageCopyWithImpl<_OnInitialImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnInitialImage&&(identical(other.initialFile, initialFile) || other.initialFile == initialFile)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,initialFile,imageUrl);

@override
String toString() {
  return 'ImageHolderEvent.initialImage(initialFile: $initialFile, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$OnInitialImageCopyWith<$Res> implements $ImageHolderEventCopyWith<$Res> {
  factory _$OnInitialImageCopyWith(_OnInitialImage value, $Res Function(_OnInitialImage) _then) = __$OnInitialImageCopyWithImpl;
@useResult
$Res call({
 File? initialFile, String? imageUrl
});




}
/// @nodoc
class __$OnInitialImageCopyWithImpl<$Res>
    implements _$OnInitialImageCopyWith<$Res> {
  __$OnInitialImageCopyWithImpl(this._self, this._then);

  final _OnInitialImage _self;
  final $Res Function(_OnInitialImage) _then;

/// Create a copy of ImageHolderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? initialFile = freezed,Object? imageUrl = freezed,}) {
  return _then(_OnInitialImage(
freezed == initialFile ? _self.initialFile : initialFile // ignore: cast_nullable_to_non_nullable
as File?,freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _OnRemoveImage implements ImageHolderEvent {
  const _OnRemoveImage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnRemoveImage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImageHolderEvent.onRemoveImage()';
}


}




/// @nodoc


class _OnUpdateImage implements ImageHolderEvent {
  const _OnUpdateImage(this.image);
  

 final  File? image;

/// Create a copy of ImageHolderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnUpdateImageCopyWith<_OnUpdateImage> get copyWith => __$OnUpdateImageCopyWithImpl<_OnUpdateImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnUpdateImage&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'ImageHolderEvent.onUpdateImage(image: $image)';
}


}

/// @nodoc
abstract mixin class _$OnUpdateImageCopyWith<$Res> implements $ImageHolderEventCopyWith<$Res> {
  factory _$OnUpdateImageCopyWith(_OnUpdateImage value, $Res Function(_OnUpdateImage) _then) = __$OnUpdateImageCopyWithImpl;
@useResult
$Res call({
 File? image
});




}
/// @nodoc
class __$OnUpdateImageCopyWithImpl<$Res>
    implements _$OnUpdateImageCopyWith<$Res> {
  __$OnUpdateImageCopyWithImpl(this._self, this._then);

  final _OnUpdateImage _self;
  final $Res Function(_OnUpdateImage) _then;

/// Create a copy of ImageHolderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? image = freezed,}) {
  return _then(_OnUpdateImage(
freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}


}

/// @nodoc
mixin _$ImageHolderState {

 String? get imageUrl; File? get imageFile;
/// Create a copy of ImageHolderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageHolderStateCopyWith<ImageHolderState> get copyWith => _$ImageHolderStateCopyWithImpl<ImageHolderState>(this as ImageHolderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageHolderState&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.imageFile, imageFile) || other.imageFile == imageFile));
}


@override
int get hashCode => Object.hash(runtimeType,imageUrl,imageFile);

@override
String toString() {
  return 'ImageHolderState(imageUrl: $imageUrl, imageFile: $imageFile)';
}


}

/// @nodoc
abstract mixin class $ImageHolderStateCopyWith<$Res>  {
  factory $ImageHolderStateCopyWith(ImageHolderState value, $Res Function(ImageHolderState) _then) = _$ImageHolderStateCopyWithImpl;
@useResult
$Res call({
 String? imageUrl, File? imageFile
});




}
/// @nodoc
class _$ImageHolderStateCopyWithImpl<$Res>
    implements $ImageHolderStateCopyWith<$Res> {
  _$ImageHolderStateCopyWithImpl(this._self, this._then);

  final ImageHolderState _self;
  final $Res Function(ImageHolderState) _then;

/// Create a copy of ImageHolderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageUrl = freezed,Object? imageFile = freezed,}) {
  return _then(_self.copyWith(
imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,imageFile: freezed == imageFile ? _self.imageFile : imageFile // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}

}


/// Adds pattern-matching-related methods to [ImageHolderState].
extension ImageHolderStatePatterns on ImageHolderState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageHolderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageHolderState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageHolderState value)  $default,){
final _that = this;
switch (_that) {
case _ImageHolderState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageHolderState value)?  $default,){
final _that = this;
switch (_that) {
case _ImageHolderState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? imageUrl,  File? imageFile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageHolderState() when $default != null:
return $default(_that.imageUrl,_that.imageFile);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? imageUrl,  File? imageFile)  $default,) {final _that = this;
switch (_that) {
case _ImageHolderState():
return $default(_that.imageUrl,_that.imageFile);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? imageUrl,  File? imageFile)?  $default,) {final _that = this;
switch (_that) {
case _ImageHolderState() when $default != null:
return $default(_that.imageUrl,_that.imageFile);case _:
  return null;

}
}

}

/// @nodoc


class _ImageHolderState implements ImageHolderState {
  const _ImageHolderState({this.imageUrl, this.imageFile});
  

@override final  String? imageUrl;
@override final  File? imageFile;

/// Create a copy of ImageHolderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageHolderStateCopyWith<_ImageHolderState> get copyWith => __$ImageHolderStateCopyWithImpl<_ImageHolderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageHolderState&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.imageFile, imageFile) || other.imageFile == imageFile));
}


@override
int get hashCode => Object.hash(runtimeType,imageUrl,imageFile);

@override
String toString() {
  return 'ImageHolderState(imageUrl: $imageUrl, imageFile: $imageFile)';
}


}

/// @nodoc
abstract mixin class _$ImageHolderStateCopyWith<$Res> implements $ImageHolderStateCopyWith<$Res> {
  factory _$ImageHolderStateCopyWith(_ImageHolderState value, $Res Function(_ImageHolderState) _then) = __$ImageHolderStateCopyWithImpl;
@override @useResult
$Res call({
 String? imageUrl, File? imageFile
});




}
/// @nodoc
class __$ImageHolderStateCopyWithImpl<$Res>
    implements _$ImageHolderStateCopyWith<$Res> {
  __$ImageHolderStateCopyWithImpl(this._self, this._then);

  final _ImageHolderState _self;
  final $Res Function(_ImageHolderState) _then;

/// Create a copy of ImageHolderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageUrl = freezed,Object? imageFile = freezed,}) {
  return _then(_ImageHolderState(
imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,imageFile: freezed == imageFile ? _self.imageFile : imageFile // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}


}

// dart format on
