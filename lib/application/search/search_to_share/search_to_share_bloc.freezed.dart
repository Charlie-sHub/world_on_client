// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_to_share_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchToShareEventTearOff {
  const _$SearchToShareEventTearOff();

  _Initialized initialized() {
    return const _Initialized();
  }

  _SearchTermChanged searchTermChanged(String searchTermString) {
    return _SearchTermChanged(
      searchTermString,
    );
  }
}

/// @nodoc
const $SearchToShareEvent = _$SearchToShareEventTearOff();

/// @nodoc
mixin _$SearchToShareEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchTermString) searchTermChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchTermString)? searchTermChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchTermChanged value) searchTermChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchTermChanged value)? searchTermChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchToShareEventCopyWith<$Res> {
  factory $SearchToShareEventCopyWith(SearchToShareEvent value, $Res Function(SearchToShareEvent) then) = _$SearchToShareEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchToShareEventCopyWithImpl<$Res> implements $SearchToShareEventCopyWith<$Res> {
  _$SearchToShareEventCopyWithImpl(this._value, this._then);

  final SearchToShareEvent _value;

  // ignore: unused_field
  final $Res Function(SearchToShareEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) = __$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$SearchToShareEventCopyWithImpl<$Res> implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then) : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized();

  @override
  String toString() {
    return 'SearchToShareEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchTermString) searchTermChanged,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchTermString)? searchTermChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchTermChanged value) searchTermChanged,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchTermChanged value)? searchTermChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements SearchToShareEvent {
  const factory _Initialized() = _$_Initialized;
}

/// @nodoc
abstract class _$SearchTermChangedCopyWith<$Res> {
  factory _$SearchTermChangedCopyWith(_SearchTermChanged value, $Res Function(_SearchTermChanged) then) = __$SearchTermChangedCopyWithImpl<$Res>;

  $Res call({String searchTermString});
}

/// @nodoc
class __$SearchTermChangedCopyWithImpl<$Res> extends _$SearchToShareEventCopyWithImpl<$Res> implements _$SearchTermChangedCopyWith<$Res> {
  __$SearchTermChangedCopyWithImpl(_SearchTermChanged _value, $Res Function(_SearchTermChanged) _then) : super(_value, (v) => _then(v as _SearchTermChanged));

  @override
  _SearchTermChanged get _value => super._value as _SearchTermChanged;

  @override
  $Res call({
    Object? searchTermString = freezed,
  }) {
    return _then(_SearchTermChanged(
      searchTermString == freezed
          ? _value.searchTermString
          : searchTermString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchTermChanged implements _SearchTermChanged {
  const _$_SearchTermChanged(this.searchTermString);

  @override
  final String searchTermString;

  @override
  String toString() {
    return 'SearchToShareEvent.searchTermChanged(searchTermString: $searchTermString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchTermChanged && (identical(other.searchTermString, searchTermString) || const DeepCollectionEquality().equals(other.searchTermString, searchTermString)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchTermString);

  @JsonKey(ignore: true)
  @override
  _$SearchTermChangedCopyWith<_SearchTermChanged> get copyWith => __$SearchTermChangedCopyWithImpl<_SearchTermChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchTermString) searchTermChanged,
  }) {
    return searchTermChanged(searchTermString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchTermString)? searchTermChanged,
    required TResult orElse(),
  }) {
    if (searchTermChanged != null) {
      return searchTermChanged(searchTermString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchTermChanged value) searchTermChanged,
  }) {
    return searchTermChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchTermChanged value)? searchTermChanged,
    required TResult orElse(),
  }) {
    if (searchTermChanged != null) {
      return searchTermChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchTermChanged implements SearchToShareEvent {
  const factory _SearchTermChanged(String searchTermString) = _$_SearchTermChanged;

  String get searchTermString => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$SearchTermChangedCopyWith<_SearchTermChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchToShareStateTearOff {
  const _$SearchToShareStateTearOff();

  _SearchToShareState call({required SearchTerm searchTerm, required KtList<User> users, required Option<Failure> failureOrSuccessOption}) {
    return _SearchToShareState(
      searchTerm: searchTerm,
      users: users,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SearchToShareState = _$SearchToShareStateTearOff();

/// @nodoc
mixin _$SearchToShareState {
  SearchTerm get searchTerm => throw _privateConstructorUsedError;

  KtList<User> get users => throw _privateConstructorUsedError;

  Option<Failure> get failureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchToShareStateCopyWith<SearchToShareState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchToShareStateCopyWith<$Res> {
  factory $SearchToShareStateCopyWith(SearchToShareState value, $Res Function(SearchToShareState) then) = _$SearchToShareStateCopyWithImpl<$Res>;

  $Res call({SearchTerm searchTerm, KtList<User> users, Option<Failure> failureOrSuccessOption});
}

/// @nodoc
class _$SearchToShareStateCopyWithImpl<$Res> implements $SearchToShareStateCopyWith<$Res> {
  _$SearchToShareStateCopyWithImpl(this._value, this._then);

  final SearchToShareState _value;

  // ignore: unused_field
  final $Res Function(SearchToShareState) _then;

  @override
  $Res call({
    Object? searchTerm = freezed,
    Object? users = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      searchTerm: searchTerm == freezed
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as SearchTerm,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as KtList<User>,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
    ));
  }
}

/// @nodoc
abstract class _$SearchToShareStateCopyWith<$Res> implements $SearchToShareStateCopyWith<$Res> {
  factory _$SearchToShareStateCopyWith(_SearchToShareState value, $Res Function(_SearchToShareState) then) = __$SearchToShareStateCopyWithImpl<$Res>;

  @override
  $Res call({SearchTerm searchTerm, KtList<User> users, Option<Failure> failureOrSuccessOption});
}

/// @nodoc
class __$SearchToShareStateCopyWithImpl<$Res> extends _$SearchToShareStateCopyWithImpl<$Res> implements _$SearchToShareStateCopyWith<$Res> {
  __$SearchToShareStateCopyWithImpl(_SearchToShareState _value, $Res Function(_SearchToShareState) _then) : super(_value, (v) => _then(v as _SearchToShareState));

  @override
  _SearchToShareState get _value => super._value as _SearchToShareState;

  @override
  $Res call({
    Object? searchTerm = freezed,
    Object? users = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_SearchToShareState(
      searchTerm: searchTerm == freezed
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as SearchTerm,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as KtList<User>,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
    ));
  }
}

/// @nodoc

class _$_SearchToShareState implements _SearchToShareState {
  const _$_SearchToShareState({required this.searchTerm, required this.users, required this.failureOrSuccessOption});

  @override
  final SearchTerm searchTerm;
  @override
  final KtList<User> users;
  @override
  final Option<Failure> failureOrSuccessOption;

  @override
  String toString() {
    return 'SearchToShareState(searchTerm: $searchTerm, users: $users, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchToShareState &&
            (identical(other.searchTerm, searchTerm) || const DeepCollectionEquality().equals(other.searchTerm, searchTerm)) &&
            (identical(other.users, users) || const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) || const DeepCollectionEquality().equals(other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchTerm) ^ const DeepCollectionEquality().hash(users) ^ const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SearchToShareStateCopyWith<_SearchToShareState> get copyWith => __$SearchToShareStateCopyWithImpl<_SearchToShareState>(this, _$identity);
}

abstract class _SearchToShareState implements SearchToShareState {
  const factory _SearchToShareState({required SearchTerm searchTerm, required KtList<User> users, required Option<Failure> failureOrSuccessOption}) = _$_SearchToShareState;

  @override
  SearchTerm get searchTerm => throw _privateConstructorUsedError;

  @override
  KtList<User> get users => throw _privateConstructorUsedError;

  @override
  Option<Failure> get failureOrSuccessOption => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$SearchToShareStateCopyWith<_SearchToShareState> get copyWith => throw _privateConstructorUsedError;
}
