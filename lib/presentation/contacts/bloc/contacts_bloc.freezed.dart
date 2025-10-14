// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contacts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ContactsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ContactsEvent()';
}


}

/// @nodoc
class $ContactsEventCopyWith<$Res>  {
$ContactsEventCopyWith(ContactsEvent _, $Res Function(ContactsEvent) __);
}


/// Adds pattern-matching-related methods to [ContactsEvent].
extension ContactsEventPatterns on ContactsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchContacts value)?  fetchContacts,TResult Function( _UpdateSelectedContact value)?  updateSelectedContact,TResult Function( _ShareItem value)?  shareItem,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchContacts() when fetchContacts != null:
return fetchContacts(_that);case _UpdateSelectedContact() when updateSelectedContact != null:
return updateSelectedContact(_that);case _ShareItem() when shareItem != null:
return shareItem(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchContacts value)  fetchContacts,required TResult Function( _UpdateSelectedContact value)  updateSelectedContact,required TResult Function( _ShareItem value)  shareItem,}){
final _that = this;
switch (_that) {
case _FetchContacts():
return fetchContacts(_that);case _UpdateSelectedContact():
return updateSelectedContact(_that);case _ShareItem():
return shareItem(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchContacts value)?  fetchContacts,TResult? Function( _UpdateSelectedContact value)?  updateSelectedContact,TResult? Function( _ShareItem value)?  shareItem,}){
final _that = this;
switch (_that) {
case _FetchContacts() when fetchContacts != null:
return fetchContacts(_that);case _UpdateSelectedContact() when updateSelectedContact != null:
return updateSelectedContact(_that);case _ShareItem() when shareItem != null:
return shareItem(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchContacts,TResult Function( UserContacts contact)?  updateSelectedContact,TResult Function( String message)?  shareItem,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchContacts() when fetchContacts != null:
return fetchContacts();case _UpdateSelectedContact() when updateSelectedContact != null:
return updateSelectedContact(_that.contact);case _ShareItem() when shareItem != null:
return shareItem(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchContacts,required TResult Function( UserContacts contact)  updateSelectedContact,required TResult Function( String message)  shareItem,}) {final _that = this;
switch (_that) {
case _FetchContacts():
return fetchContacts();case _UpdateSelectedContact():
return updateSelectedContact(_that.contact);case _ShareItem():
return shareItem(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchContacts,TResult? Function( UserContacts contact)?  updateSelectedContact,TResult? Function( String message)?  shareItem,}) {final _that = this;
switch (_that) {
case _FetchContacts() when fetchContacts != null:
return fetchContacts();case _UpdateSelectedContact() when updateSelectedContact != null:
return updateSelectedContact(_that.contact);case _ShareItem() when shareItem != null:
return shareItem(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _FetchContacts implements ContactsEvent {
  const _FetchContacts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchContacts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ContactsEvent.fetchContacts()';
}


}




/// @nodoc


class _UpdateSelectedContact implements ContactsEvent {
  const _UpdateSelectedContact({required this.contact});
  

 final  UserContacts contact;

/// Create a copy of ContactsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateSelectedContactCopyWith<_UpdateSelectedContact> get copyWith => __$UpdateSelectedContactCopyWithImpl<_UpdateSelectedContact>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateSelectedContact&&(identical(other.contact, contact) || other.contact == contact));
}


@override
int get hashCode => Object.hash(runtimeType,contact);

@override
String toString() {
  return 'ContactsEvent.updateSelectedContact(contact: $contact)';
}


}

/// @nodoc
abstract mixin class _$UpdateSelectedContactCopyWith<$Res> implements $ContactsEventCopyWith<$Res> {
  factory _$UpdateSelectedContactCopyWith(_UpdateSelectedContact value, $Res Function(_UpdateSelectedContact) _then) = __$UpdateSelectedContactCopyWithImpl;
@useResult
$Res call({
 UserContacts contact
});


$UserContactsCopyWith<$Res> get contact;

}
/// @nodoc
class __$UpdateSelectedContactCopyWithImpl<$Res>
    implements _$UpdateSelectedContactCopyWith<$Res> {
  __$UpdateSelectedContactCopyWithImpl(this._self, this._then);

  final _UpdateSelectedContact _self;
  final $Res Function(_UpdateSelectedContact) _then;

/// Create a copy of ContactsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? contact = null,}) {
  return _then(_UpdateSelectedContact(
contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as UserContacts,
  ));
}

/// Create a copy of ContactsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserContactsCopyWith<$Res> get contact {
  
  return $UserContactsCopyWith<$Res>(_self.contact, (value) {
    return _then(_self.copyWith(contact: value));
  });
}
}

/// @nodoc


class _ShareItem implements ContactsEvent {
  const _ShareItem({required this.message});
  

 final  String message;

/// Create a copy of ContactsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShareItemCopyWith<_ShareItem> get copyWith => __$ShareItemCopyWithImpl<_ShareItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShareItem&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ContactsEvent.shareItem(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ShareItemCopyWith<$Res> implements $ContactsEventCopyWith<$Res> {
  factory _$ShareItemCopyWith(_ShareItem value, $Res Function(_ShareItem) _then) = __$ShareItemCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ShareItemCopyWithImpl<$Res>
    implements _$ShareItemCopyWith<$Res> {
  __$ShareItemCopyWithImpl(this._self, this._then);

  final _ShareItem _self;
  final $Res Function(_ShareItem) _then;

/// Create a copy of ContactsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ShareItem(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ContactsState {

 List<UserContacts> get listOfContacts; ContactsProgressState get station;
/// Create a copy of ContactsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactsStateCopyWith<ContactsState> get copyWith => _$ContactsStateCopyWithImpl<ContactsState>(this as ContactsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactsState&&const DeepCollectionEquality().equals(other.listOfContacts, listOfContacts)&&(identical(other.station, station) || other.station == station));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(listOfContacts),station);

@override
String toString() {
  return 'ContactsState(listOfContacts: $listOfContacts, station: $station)';
}


}

/// @nodoc
abstract mixin class $ContactsStateCopyWith<$Res>  {
  factory $ContactsStateCopyWith(ContactsState value, $Res Function(ContactsState) _then) = _$ContactsStateCopyWithImpl;
@useResult
$Res call({
 List<UserContacts> listOfContacts, ContactsProgressState station
});


$ContactsProgressStateCopyWith<$Res> get station;

}
/// @nodoc
class _$ContactsStateCopyWithImpl<$Res>
    implements $ContactsStateCopyWith<$Res> {
  _$ContactsStateCopyWithImpl(this._self, this._then);

  final ContactsState _self;
  final $Res Function(ContactsState) _then;

/// Create a copy of ContactsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listOfContacts = null,Object? station = null,}) {
  return _then(_self.copyWith(
listOfContacts: null == listOfContacts ? _self.listOfContacts : listOfContacts // ignore: cast_nullable_to_non_nullable
as List<UserContacts>,station: null == station ? _self.station : station // ignore: cast_nullable_to_non_nullable
as ContactsProgressState,
  ));
}
/// Create a copy of ContactsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactsProgressStateCopyWith<$Res> get station {
  
  return $ContactsProgressStateCopyWith<$Res>(_self.station, (value) {
    return _then(_self.copyWith(station: value));
  });
}
}


/// Adds pattern-matching-related methods to [ContactsState].
extension ContactsStatePatterns on ContactsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContactsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContactsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContactsState value)  $default,){
final _that = this;
switch (_that) {
case _ContactsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContactsState value)?  $default,){
final _that = this;
switch (_that) {
case _ContactsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<UserContacts> listOfContacts,  ContactsProgressState station)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContactsState() when $default != null:
return $default(_that.listOfContacts,_that.station);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<UserContacts> listOfContacts,  ContactsProgressState station)  $default,) {final _that = this;
switch (_that) {
case _ContactsState():
return $default(_that.listOfContacts,_that.station);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<UserContacts> listOfContacts,  ContactsProgressState station)?  $default,) {final _that = this;
switch (_that) {
case _ContactsState() when $default != null:
return $default(_that.listOfContacts,_that.station);case _:
  return null;

}
}

}

/// @nodoc


class _ContactsState implements ContactsState {
  const _ContactsState({final  List<UserContacts> listOfContacts = const [], this.station = const ContactsProgressStateIdl()}): _listOfContacts = listOfContacts;
  

 final  List<UserContacts> _listOfContacts;
@override@JsonKey() List<UserContacts> get listOfContacts {
  if (_listOfContacts is EqualUnmodifiableListView) return _listOfContacts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listOfContacts);
}

@override@JsonKey() final  ContactsProgressState station;

/// Create a copy of ContactsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactsStateCopyWith<_ContactsState> get copyWith => __$ContactsStateCopyWithImpl<_ContactsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContactsState&&const DeepCollectionEquality().equals(other._listOfContacts, _listOfContacts)&&(identical(other.station, station) || other.station == station));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_listOfContacts),station);

@override
String toString() {
  return 'ContactsState(listOfContacts: $listOfContacts, station: $station)';
}


}

/// @nodoc
abstract mixin class _$ContactsStateCopyWith<$Res> implements $ContactsStateCopyWith<$Res> {
  factory _$ContactsStateCopyWith(_ContactsState value, $Res Function(_ContactsState) _then) = __$ContactsStateCopyWithImpl;
@override @useResult
$Res call({
 List<UserContacts> listOfContacts, ContactsProgressState station
});


@override $ContactsProgressStateCopyWith<$Res> get station;

}
/// @nodoc
class __$ContactsStateCopyWithImpl<$Res>
    implements _$ContactsStateCopyWith<$Res> {
  __$ContactsStateCopyWithImpl(this._self, this._then);

  final _ContactsState _self;
  final $Res Function(_ContactsState) _then;

/// Create a copy of ContactsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listOfContacts = null,Object? station = null,}) {
  return _then(_ContactsState(
listOfContacts: null == listOfContacts ? _self._listOfContacts : listOfContacts // ignore: cast_nullable_to_non_nullable
as List<UserContacts>,station: null == station ? _self.station : station // ignore: cast_nullable_to_non_nullable
as ContactsProgressState,
  ));
}

/// Create a copy of ContactsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactsProgressStateCopyWith<$Res> get station {
  
  return $ContactsProgressStateCopyWith<$Res>(_self.station, (value) {
    return _then(_self.copyWith(station: value));
  });
}
}

/// @nodoc
mixin _$ContactsProgressState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactsProgressState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ContactsProgressState()';
}


}

/// @nodoc
class $ContactsProgressStateCopyWith<$Res>  {
$ContactsProgressStateCopyWith(ContactsProgressState _, $Res Function(ContactsProgressState) __);
}


/// Adds pattern-matching-related methods to [ContactsProgressState].
extension ContactsProgressStatePatterns on ContactsProgressState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ContactsProgressStateIdl value)?  idl,TResult Function( ContactsProgressStateSuccess value)?  success,TResult Function( ContactsProgressStateErrorPermission value)?  errorPermission,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ContactsProgressStateIdl() when idl != null:
return idl(_that);case ContactsProgressStateSuccess() when success != null:
return success(_that);case ContactsProgressStateErrorPermission() when errorPermission != null:
return errorPermission(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ContactsProgressStateIdl value)  idl,required TResult Function( ContactsProgressStateSuccess value)  success,required TResult Function( ContactsProgressStateErrorPermission value)  errorPermission,}){
final _that = this;
switch (_that) {
case ContactsProgressStateIdl():
return idl(_that);case ContactsProgressStateSuccess():
return success(_that);case ContactsProgressStateErrorPermission():
return errorPermission(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ContactsProgressStateIdl value)?  idl,TResult? Function( ContactsProgressStateSuccess value)?  success,TResult? Function( ContactsProgressStateErrorPermission value)?  errorPermission,}){
final _that = this;
switch (_that) {
case ContactsProgressStateIdl() when idl != null:
return idl(_that);case ContactsProgressStateSuccess() when success != null:
return success(_that);case ContactsProgressStateErrorPermission() when errorPermission != null:
return errorPermission(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  idl,TResult Function()?  success,TResult Function()?  errorPermission,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ContactsProgressStateIdl() when idl != null:
return idl();case ContactsProgressStateSuccess() when success != null:
return success();case ContactsProgressStateErrorPermission() when errorPermission != null:
return errorPermission();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  idl,required TResult Function()  success,required TResult Function()  errorPermission,}) {final _that = this;
switch (_that) {
case ContactsProgressStateIdl():
return idl();case ContactsProgressStateSuccess():
return success();case ContactsProgressStateErrorPermission():
return errorPermission();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  idl,TResult? Function()?  success,TResult? Function()?  errorPermission,}) {final _that = this;
switch (_that) {
case ContactsProgressStateIdl() when idl != null:
return idl();case ContactsProgressStateSuccess() when success != null:
return success();case ContactsProgressStateErrorPermission() when errorPermission != null:
return errorPermission();case _:
  return null;

}
}

}

/// @nodoc


class ContactsProgressStateIdl implements ContactsProgressState {
  const ContactsProgressStateIdl();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactsProgressStateIdl);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ContactsProgressState.idl()';
}


}




/// @nodoc


class ContactsProgressStateSuccess implements ContactsProgressState {
  const ContactsProgressStateSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactsProgressStateSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ContactsProgressState.success()';
}


}




/// @nodoc


class ContactsProgressStateErrorPermission implements ContactsProgressState {
  const ContactsProgressStateErrorPermission();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactsProgressStateErrorPermission);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ContactsProgressState.errorPermission()';
}


}




// dart format on
