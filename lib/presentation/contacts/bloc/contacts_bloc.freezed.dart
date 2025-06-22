// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contacts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ContactsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchContacts,
    required TResult Function(UserContacts contact) updateSelectedContact,
    required TResult Function(String message) shareItem,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchContacts,
    TResult? Function(UserContacts contact)? updateSelectedContact,
    TResult? Function(String message)? shareItem,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchContacts,
    TResult Function(UserContacts contact)? updateSelectedContact,
    TResult Function(String message)? shareItem,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchContacts value) fetchContacts,
    required TResult Function(_UpdateSelectedContact value)
    updateSelectedContact,
    required TResult Function(_ShareItem value) shareItem,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchContacts value)? fetchContacts,
    TResult? Function(_UpdateSelectedContact value)? updateSelectedContact,
    TResult? Function(_ShareItem value)? shareItem,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchContacts value)? fetchContacts,
    TResult Function(_UpdateSelectedContact value)? updateSelectedContact,
    TResult Function(_ShareItem value)? shareItem,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsEventCopyWith<$Res> {
  factory $ContactsEventCopyWith(
    ContactsEvent value,
    $Res Function(ContactsEvent) then,
  ) = _$ContactsEventCopyWithImpl<$Res, ContactsEvent>;
}

/// @nodoc
class _$ContactsEventCopyWithImpl<$Res, $Val extends ContactsEvent>
    implements $ContactsEventCopyWith<$Res> {
  _$ContactsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchContactsImplCopyWith<$Res> {
  factory _$$FetchContactsImplCopyWith(
    _$FetchContactsImpl value,
    $Res Function(_$FetchContactsImpl) then,
  ) = __$$FetchContactsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchContactsImplCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res, _$FetchContactsImpl>
    implements _$$FetchContactsImplCopyWith<$Res> {
  __$$FetchContactsImplCopyWithImpl(
    _$FetchContactsImpl _value,
    $Res Function(_$FetchContactsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchContactsImpl implements _FetchContacts {
  const _$FetchContactsImpl();

  @override
  String toString() {
    return 'ContactsEvent.fetchContacts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchContactsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchContacts,
    required TResult Function(UserContacts contact) updateSelectedContact,
    required TResult Function(String message) shareItem,
  }) {
    return fetchContacts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchContacts,
    TResult? Function(UserContacts contact)? updateSelectedContact,
    TResult? Function(String message)? shareItem,
  }) {
    return fetchContacts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchContacts,
    TResult Function(UserContacts contact)? updateSelectedContact,
    TResult Function(String message)? shareItem,
    required TResult orElse(),
  }) {
    if (fetchContacts != null) {
      return fetchContacts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchContacts value) fetchContacts,
    required TResult Function(_UpdateSelectedContact value)
    updateSelectedContact,
    required TResult Function(_ShareItem value) shareItem,
  }) {
    return fetchContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchContacts value)? fetchContacts,
    TResult? Function(_UpdateSelectedContact value)? updateSelectedContact,
    TResult? Function(_ShareItem value)? shareItem,
  }) {
    return fetchContacts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchContacts value)? fetchContacts,
    TResult Function(_UpdateSelectedContact value)? updateSelectedContact,
    TResult Function(_ShareItem value)? shareItem,
    required TResult orElse(),
  }) {
    if (fetchContacts != null) {
      return fetchContacts(this);
    }
    return orElse();
  }
}

abstract class _FetchContacts implements ContactsEvent {
  const factory _FetchContacts() = _$FetchContactsImpl;
}

/// @nodoc
abstract class _$$UpdateSelectedContactImplCopyWith<$Res> {
  factory _$$UpdateSelectedContactImplCopyWith(
    _$UpdateSelectedContactImpl value,
    $Res Function(_$UpdateSelectedContactImpl) then,
  ) = __$$UpdateSelectedContactImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserContacts contact});

  $UserContactsCopyWith<$Res> get contact;
}

/// @nodoc
class __$$UpdateSelectedContactImplCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res, _$UpdateSelectedContactImpl>
    implements _$$UpdateSelectedContactImplCopyWith<$Res> {
  __$$UpdateSelectedContactImplCopyWithImpl(
    _$UpdateSelectedContactImpl _value,
    $Res Function(_$UpdateSelectedContactImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? contact = null}) {
    return _then(
      _$UpdateSelectedContactImpl(
        contact: null == contact
            ? _value.contact
            : contact // ignore: cast_nullable_to_non_nullable
                  as UserContacts,
      ),
    );
  }

  /// Create a copy of ContactsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserContactsCopyWith<$Res> get contact {
    return $UserContactsCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

/// @nodoc

class _$UpdateSelectedContactImpl implements _UpdateSelectedContact {
  const _$UpdateSelectedContactImpl({required this.contact});

  @override
  final UserContacts contact;

  @override
  String toString() {
    return 'ContactsEvent.updateSelectedContact(contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedContactImpl &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  /// Create a copy of ContactsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedContactImplCopyWith<_$UpdateSelectedContactImpl>
  get copyWith =>
      __$$UpdateSelectedContactImplCopyWithImpl<_$UpdateSelectedContactImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchContacts,
    required TResult Function(UserContacts contact) updateSelectedContact,
    required TResult Function(String message) shareItem,
  }) {
    return updateSelectedContact(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchContacts,
    TResult? Function(UserContacts contact)? updateSelectedContact,
    TResult? Function(String message)? shareItem,
  }) {
    return updateSelectedContact?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchContacts,
    TResult Function(UserContacts contact)? updateSelectedContact,
    TResult Function(String message)? shareItem,
    required TResult orElse(),
  }) {
    if (updateSelectedContact != null) {
      return updateSelectedContact(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchContacts value) fetchContacts,
    required TResult Function(_UpdateSelectedContact value)
    updateSelectedContact,
    required TResult Function(_ShareItem value) shareItem,
  }) {
    return updateSelectedContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchContacts value)? fetchContacts,
    TResult? Function(_UpdateSelectedContact value)? updateSelectedContact,
    TResult? Function(_ShareItem value)? shareItem,
  }) {
    return updateSelectedContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchContacts value)? fetchContacts,
    TResult Function(_UpdateSelectedContact value)? updateSelectedContact,
    TResult Function(_ShareItem value)? shareItem,
    required TResult orElse(),
  }) {
    if (updateSelectedContact != null) {
      return updateSelectedContact(this);
    }
    return orElse();
  }
}

abstract class _UpdateSelectedContact implements ContactsEvent {
  const factory _UpdateSelectedContact({required final UserContacts contact}) =
      _$UpdateSelectedContactImpl;

  UserContacts get contact;

  /// Create a copy of ContactsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSelectedContactImplCopyWith<_$UpdateSelectedContactImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShareItemImplCopyWith<$Res> {
  factory _$$ShareItemImplCopyWith(
    _$ShareItemImpl value,
    $Res Function(_$ShareItemImpl) then,
  ) = __$$ShareItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShareItemImplCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res, _$ShareItemImpl>
    implements _$$ShareItemImplCopyWith<$Res> {
  __$$ShareItemImplCopyWithImpl(
    _$ShareItemImpl _value,
    $Res Function(_$ShareItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ShareItemImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ShareItemImpl implements _ShareItem {
  const _$ShareItemImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ContactsEvent.shareItem(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareItemImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ContactsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareItemImplCopyWith<_$ShareItemImpl> get copyWith =>
      __$$ShareItemImplCopyWithImpl<_$ShareItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchContacts,
    required TResult Function(UserContacts contact) updateSelectedContact,
    required TResult Function(String message) shareItem,
  }) {
    return shareItem(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchContacts,
    TResult? Function(UserContacts contact)? updateSelectedContact,
    TResult? Function(String message)? shareItem,
  }) {
    return shareItem?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchContacts,
    TResult Function(UserContacts contact)? updateSelectedContact,
    TResult Function(String message)? shareItem,
    required TResult orElse(),
  }) {
    if (shareItem != null) {
      return shareItem(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchContacts value) fetchContacts,
    required TResult Function(_UpdateSelectedContact value)
    updateSelectedContact,
    required TResult Function(_ShareItem value) shareItem,
  }) {
    return shareItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchContacts value)? fetchContacts,
    TResult? Function(_UpdateSelectedContact value)? updateSelectedContact,
    TResult? Function(_ShareItem value)? shareItem,
  }) {
    return shareItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchContacts value)? fetchContacts,
    TResult Function(_UpdateSelectedContact value)? updateSelectedContact,
    TResult Function(_ShareItem value)? shareItem,
    required TResult orElse(),
  }) {
    if (shareItem != null) {
      return shareItem(this);
    }
    return orElse();
  }
}

abstract class _ShareItem implements ContactsEvent {
  const factory _ShareItem({required final String message}) = _$ShareItemImpl;

  String get message;

  /// Create a copy of ContactsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShareItemImplCopyWith<_$ShareItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactsState {
  List<UserContacts> get listOfContacts => throw _privateConstructorUsedError;
  ContactsProgressState get station => throw _privateConstructorUsedError;

  /// Create a copy of ContactsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactsStateCopyWith<ContactsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsStateCopyWith<$Res> {
  factory $ContactsStateCopyWith(
    ContactsState value,
    $Res Function(ContactsState) then,
  ) = _$ContactsStateCopyWithImpl<$Res, ContactsState>;
  @useResult
  $Res call({List<UserContacts> listOfContacts, ContactsProgressState station});

  $ContactsProgressStateCopyWith<$Res> get station;
}

/// @nodoc
class _$ContactsStateCopyWithImpl<$Res, $Val extends ContactsState>
    implements $ContactsStateCopyWith<$Res> {
  _$ContactsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? listOfContacts = null, Object? station = null}) {
    return _then(
      _value.copyWith(
            listOfContacts: null == listOfContacts
                ? _value.listOfContacts
                : listOfContacts // ignore: cast_nullable_to_non_nullable
                      as List<UserContacts>,
            station: null == station
                ? _value.station
                : station // ignore: cast_nullable_to_non_nullable
                      as ContactsProgressState,
          )
          as $Val,
    );
  }

  /// Create a copy of ContactsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactsProgressStateCopyWith<$Res> get station {
    return $ContactsProgressStateCopyWith<$Res>(_value.station, (value) {
      return _then(_value.copyWith(station: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContactsStateImplCopyWith<$Res>
    implements $ContactsStateCopyWith<$Res> {
  factory _$$ContactsStateImplCopyWith(
    _$ContactsStateImpl value,
    $Res Function(_$ContactsStateImpl) then,
  ) = __$$ContactsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserContacts> listOfContacts, ContactsProgressState station});

  @override
  $ContactsProgressStateCopyWith<$Res> get station;
}

/// @nodoc
class __$$ContactsStateImplCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res, _$ContactsStateImpl>
    implements _$$ContactsStateImplCopyWith<$Res> {
  __$$ContactsStateImplCopyWithImpl(
    _$ContactsStateImpl _value,
    $Res Function(_$ContactsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? listOfContacts = null, Object? station = null}) {
    return _then(
      _$ContactsStateImpl(
        listOfContacts: null == listOfContacts
            ? _value._listOfContacts
            : listOfContacts // ignore: cast_nullable_to_non_nullable
                  as List<UserContacts>,
        station: null == station
            ? _value.station
            : station // ignore: cast_nullable_to_non_nullable
                  as ContactsProgressState,
      ),
    );
  }
}

/// @nodoc

class _$ContactsStateImpl implements _ContactsState {
  const _$ContactsStateImpl({
    final List<UserContacts> listOfContacts = const [],
    this.station = const ContactsProgressStateIdl(),
  }) : _listOfContacts = listOfContacts;

  final List<UserContacts> _listOfContacts;
  @override
  @JsonKey()
  List<UserContacts> get listOfContacts {
    if (_listOfContacts is EqualUnmodifiableListView) return _listOfContacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfContacts);
  }

  @override
  @JsonKey()
  final ContactsProgressState station;

  @override
  String toString() {
    return 'ContactsState(listOfContacts: $listOfContacts, station: $station)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactsStateImpl &&
            const DeepCollectionEquality().equals(
              other._listOfContacts,
              _listOfContacts,
            ) &&
            (identical(other.station, station) || other.station == station));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_listOfContacts),
    station,
  );

  /// Create a copy of ContactsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactsStateImplCopyWith<_$ContactsStateImpl> get copyWith =>
      __$$ContactsStateImplCopyWithImpl<_$ContactsStateImpl>(this, _$identity);
}

abstract class _ContactsState implements ContactsState {
  const factory _ContactsState({
    final List<UserContacts> listOfContacts,
    final ContactsProgressState station,
  }) = _$ContactsStateImpl;

  @override
  List<UserContacts> get listOfContacts;
  @override
  ContactsProgressState get station;

  /// Create a copy of ContactsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactsStateImplCopyWith<_$ContactsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactsProgressState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() success,
    required TResult Function() errorPermission,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? success,
    TResult? Function()? errorPermission,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? success,
    TResult Function()? errorPermission,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContactsProgressStateIdl value) idl,
    required TResult Function(ContactsProgressStateSuccess value) success,
    required TResult Function(ContactsProgressStateErrorPermission value)
    errorPermission,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContactsProgressStateIdl value)? idl,
    TResult? Function(ContactsProgressStateSuccess value)? success,
    TResult? Function(ContactsProgressStateErrorPermission value)?
    errorPermission,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactsProgressStateIdl value)? idl,
    TResult Function(ContactsProgressStateSuccess value)? success,
    TResult Function(ContactsProgressStateErrorPermission value)?
    errorPermission,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsProgressStateCopyWith<$Res> {
  factory $ContactsProgressStateCopyWith(
    ContactsProgressState value,
    $Res Function(ContactsProgressState) then,
  ) = _$ContactsProgressStateCopyWithImpl<$Res, ContactsProgressState>;
}

/// @nodoc
class _$ContactsProgressStateCopyWithImpl<
  $Res,
  $Val extends ContactsProgressState
>
    implements $ContactsProgressStateCopyWith<$Res> {
  _$ContactsProgressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactsProgressState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ContactsProgressStateIdlImplCopyWith<$Res> {
  factory _$$ContactsProgressStateIdlImplCopyWith(
    _$ContactsProgressStateIdlImpl value,
    $Res Function(_$ContactsProgressStateIdlImpl) then,
  ) = __$$ContactsProgressStateIdlImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactsProgressStateIdlImplCopyWithImpl<$Res>
    extends
        _$ContactsProgressStateCopyWithImpl<
          $Res,
          _$ContactsProgressStateIdlImpl
        >
    implements _$$ContactsProgressStateIdlImplCopyWith<$Res> {
  __$$ContactsProgressStateIdlImplCopyWithImpl(
    _$ContactsProgressStateIdlImpl _value,
    $Res Function(_$ContactsProgressStateIdlImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactsProgressState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ContactsProgressStateIdlImpl implements ContactsProgressStateIdl {
  const _$ContactsProgressStateIdlImpl();

  @override
  String toString() {
    return 'ContactsProgressState.idl()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactsProgressStateIdlImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() success,
    required TResult Function() errorPermission,
  }) {
    return idl();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? success,
    TResult? Function()? errorPermission,
  }) {
    return idl?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? success,
    TResult Function()? errorPermission,
    required TResult orElse(),
  }) {
    if (idl != null) {
      return idl();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContactsProgressStateIdl value) idl,
    required TResult Function(ContactsProgressStateSuccess value) success,
    required TResult Function(ContactsProgressStateErrorPermission value)
    errorPermission,
  }) {
    return idl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContactsProgressStateIdl value)? idl,
    TResult? Function(ContactsProgressStateSuccess value)? success,
    TResult? Function(ContactsProgressStateErrorPermission value)?
    errorPermission,
  }) {
    return idl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactsProgressStateIdl value)? idl,
    TResult Function(ContactsProgressStateSuccess value)? success,
    TResult Function(ContactsProgressStateErrorPermission value)?
    errorPermission,
    required TResult orElse(),
  }) {
    if (idl != null) {
      return idl(this);
    }
    return orElse();
  }
}

abstract class ContactsProgressStateIdl implements ContactsProgressState {
  const factory ContactsProgressStateIdl() = _$ContactsProgressStateIdlImpl;
}

/// @nodoc
abstract class _$$ContactsProgressStateSuccessImplCopyWith<$Res> {
  factory _$$ContactsProgressStateSuccessImplCopyWith(
    _$ContactsProgressStateSuccessImpl value,
    $Res Function(_$ContactsProgressStateSuccessImpl) then,
  ) = __$$ContactsProgressStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactsProgressStateSuccessImplCopyWithImpl<$Res>
    extends
        _$ContactsProgressStateCopyWithImpl<
          $Res,
          _$ContactsProgressStateSuccessImpl
        >
    implements _$$ContactsProgressStateSuccessImplCopyWith<$Res> {
  __$$ContactsProgressStateSuccessImplCopyWithImpl(
    _$ContactsProgressStateSuccessImpl _value,
    $Res Function(_$ContactsProgressStateSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactsProgressState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ContactsProgressStateSuccessImpl
    implements ContactsProgressStateSuccess {
  const _$ContactsProgressStateSuccessImpl();

  @override
  String toString() {
    return 'ContactsProgressState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactsProgressStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() success,
    required TResult Function() errorPermission,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? success,
    TResult? Function()? errorPermission,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? success,
    TResult Function()? errorPermission,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContactsProgressStateIdl value) idl,
    required TResult Function(ContactsProgressStateSuccess value) success,
    required TResult Function(ContactsProgressStateErrorPermission value)
    errorPermission,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContactsProgressStateIdl value)? idl,
    TResult? Function(ContactsProgressStateSuccess value)? success,
    TResult? Function(ContactsProgressStateErrorPermission value)?
    errorPermission,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactsProgressStateIdl value)? idl,
    TResult Function(ContactsProgressStateSuccess value)? success,
    TResult Function(ContactsProgressStateErrorPermission value)?
    errorPermission,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ContactsProgressStateSuccess implements ContactsProgressState {
  const factory ContactsProgressStateSuccess() =
      _$ContactsProgressStateSuccessImpl;
}

/// @nodoc
abstract class _$$ContactsProgressStateErrorPermissionImplCopyWith<$Res> {
  factory _$$ContactsProgressStateErrorPermissionImplCopyWith(
    _$ContactsProgressStateErrorPermissionImpl value,
    $Res Function(_$ContactsProgressStateErrorPermissionImpl) then,
  ) = __$$ContactsProgressStateErrorPermissionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactsProgressStateErrorPermissionImplCopyWithImpl<$Res>
    extends
        _$ContactsProgressStateCopyWithImpl<
          $Res,
          _$ContactsProgressStateErrorPermissionImpl
        >
    implements _$$ContactsProgressStateErrorPermissionImplCopyWith<$Res> {
  __$$ContactsProgressStateErrorPermissionImplCopyWithImpl(
    _$ContactsProgressStateErrorPermissionImpl _value,
    $Res Function(_$ContactsProgressStateErrorPermissionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactsProgressState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ContactsProgressStateErrorPermissionImpl
    implements ContactsProgressStateErrorPermission {
  const _$ContactsProgressStateErrorPermissionImpl();

  @override
  String toString() {
    return 'ContactsProgressState.errorPermission()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactsProgressStateErrorPermissionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idl,
    required TResult Function() success,
    required TResult Function() errorPermission,
  }) {
    return errorPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idl,
    TResult? Function()? success,
    TResult? Function()? errorPermission,
  }) {
    return errorPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idl,
    TResult Function()? success,
    TResult Function()? errorPermission,
    required TResult orElse(),
  }) {
    if (errorPermission != null) {
      return errorPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContactsProgressStateIdl value) idl,
    required TResult Function(ContactsProgressStateSuccess value) success,
    required TResult Function(ContactsProgressStateErrorPermission value)
    errorPermission,
  }) {
    return errorPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContactsProgressStateIdl value)? idl,
    TResult? Function(ContactsProgressStateSuccess value)? success,
    TResult? Function(ContactsProgressStateErrorPermission value)?
    errorPermission,
  }) {
    return errorPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactsProgressStateIdl value)? idl,
    TResult Function(ContactsProgressStateSuccess value)? success,
    TResult Function(ContactsProgressStateErrorPermission value)?
    errorPermission,
    required TResult orElse(),
  }) {
    if (errorPermission != null) {
      return errorPermission(this);
    }
    return orElse();
  }
}

abstract class ContactsProgressStateErrorPermission
    implements ContactsProgressState {
  const factory ContactsProgressStateErrorPermission() =
      _$ContactsProgressStateErrorPermissionImpl;
}
