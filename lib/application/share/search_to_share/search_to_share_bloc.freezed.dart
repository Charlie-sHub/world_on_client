// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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

  _Submitted submitted() {
    return const _Submitted();
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
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchTermString)? searchTermChanged,
    TResult Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchTermString)? searchTermChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchTermChanged value) searchTermChanged,
    required TResult Function(_Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchTermChanged value)? searchTermChanged,
    TResult Function(_Submitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchTermChanged value)? searchTermChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchToShareEventCopyWith<$Res> {
  factory $SearchToShareEventCopyWith(
          SearchToShareEvent value, $Res Function(SearchToShareEvent) then) =
      _$SearchToShareEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchToShareEventCopyWithImpl<$Res>
    implements $SearchToShareEventCopyWith<$Res> {
  _$SearchToShareEventCopyWithImpl(this._value, this._then);

  final SearchToShareEvent _value;
  // ignore: unused_field
  final $Res Function(SearchToShareEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$SearchToShareEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchTermString) searchTermChanged,
    required TResult Function() submitted,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchTermString)? searchTermChanged,
    TResult Function()? submitted,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchTermString)? searchTermChanged,
    TResult Function()? submitted,
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
    required TResult Function(_Submitted value) submitted,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchTermChanged value)? searchTermChanged,
    TResult Function(_Submitted value)? submitted,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchTermChanged value)? searchTermChanged,
    TResult Function(_Submitted value)? submitted,
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
  factory _$SearchTermChangedCopyWith(
          _SearchTermChanged value, $Res Function(_SearchTermChanged) then) =
      __$SearchTermChangedCopyWithImpl<$Res>;
  $Res call({String searchTermString});
}

/// @nodoc
class __$SearchTermChangedCopyWithImpl<$Res>
    extends _$SearchToShareEventCopyWithImpl<$Res>
    implements _$SearchTermChangedCopyWith<$Res> {
  __$SearchTermChangedCopyWithImpl(
      _SearchTermChanged _value, $Res Function(_SearchTermChanged) _then)
      : super(_value, (v) => _then(v as _SearchTermChanged));

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
        (other.runtimeType == runtimeType &&
            other is _SearchTermChanged &&
            (identical(other.searchTermString, searchTermString) ||
                other.searchTermString == searchTermString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchTermString);

  @JsonKey(ignore: true)
  @override
  _$SearchTermChangedCopyWith<_SearchTermChanged> get copyWith =>
      __$SearchTermChangedCopyWithImpl<_SearchTermChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchTermString) searchTermChanged,
    required TResult Function() submitted,
  }) {
    return searchTermChanged(searchTermString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchTermString)? searchTermChanged,
    TResult Function()? submitted,
  }) {
    return searchTermChanged?.call(searchTermString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchTermString)? searchTermChanged,
    TResult Function()? submitted,
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
    required TResult Function(_Submitted value) submitted,
  }) {
    return searchTermChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchTermChanged value)? searchTermChanged,
    TResult Function(_Submitted value)? submitted,
  }) {
    return searchTermChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchTermChanged value)? searchTermChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (searchTermChanged != null) {
      return searchTermChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchTermChanged implements SearchToShareEvent {
  const factory _SearchTermChanged(String searchTermString) =
      _$_SearchTermChanged;

  String get searchTermString;
  @JsonKey(ignore: true)
  _$SearchTermChangedCopyWith<_SearchTermChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(
          _Submitted value, $Res Function(_Submitted) then) =
      __$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res>
    extends _$SearchToShareEventCopyWithImpl<$Res>
    implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then)
      : super(_value, (v) => _then(v as _Submitted));

  @override
  _Submitted get _value => super._value as _Submitted;
}

/// @nodoc

class _$_Submitted implements _Submitted {
  const _$_Submitted();

  @override
  String toString() {
    return 'SearchToShareEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchTermString) searchTermChanged,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchTermString)? searchTermChanged,
    TResult Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchTermString)? searchTermChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SearchTermChanged value) searchTermChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchTermChanged value)? searchTermChanged,
    TResult Function(_Submitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SearchTermChanged value)? searchTermChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements SearchToShareEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
class _$SearchToShareStateTearOff {
  const _$SearchToShareStateTearOff();

  _SearchToShareState call(
      {required SearchTerm searchTerm,
      required KtList<User> searchedUsers,
      required KtList<User> allUsers,
      required Option<Failure> failureOrSuccessOption}) {
    return _SearchToShareState(
      searchTerm: searchTerm,
      searchedUsers: searchedUsers,
      allUsers: allUsers,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SearchToShareState = _$SearchToShareStateTearOff();

/// @nodoc
mixin _$SearchToShareState {
  SearchTerm get searchTerm => throw _privateConstructorUsedError;
  KtList<User> get searchedUsers => throw _privateConstructorUsedError;
  KtList<User> get allUsers => throw _privateConstructorUsedError;
  Option<Failure> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchToShareStateCopyWith<SearchToShareState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchToShareStateCopyWith<$Res> {
  factory $SearchToShareStateCopyWith(
          SearchToShareState value, $Res Function(SearchToShareState) then) =
      _$SearchToShareStateCopyWithImpl<$Res>;
  $Res call(
      {SearchTerm searchTerm,
      KtList<User> searchedUsers,
      KtList<User> allUsers,
      Option<Failure> failureOrSuccessOption});
}

/// @nodoc
class _$SearchToShareStateCopyWithImpl<$Res>
    implements $SearchToShareStateCopyWith<$Res> {
  _$SearchToShareStateCopyWithImpl(this._value, this._then);

  final SearchToShareState _value;
  // ignore: unused_field
  final $Res Function(SearchToShareState) _then;

  @override
  $Res call({
    Object? searchTerm = freezed,
    Object? searchedUsers = freezed,
    Object? allUsers = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      searchTerm: searchTerm == freezed
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as SearchTerm,
      searchedUsers: searchedUsers == freezed
          ? _value.searchedUsers
          : searchedUsers // ignore: cast_nullable_to_non_nullable
              as KtList<User>,
      allUsers: allUsers == freezed
          ? _value.allUsers
          : allUsers // ignore: cast_nullable_to_non_nullable
              as KtList<User>,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
    ));
  }
}

/// @nodoc
abstract class _$SearchToShareStateCopyWith<$Res>
    implements $SearchToShareStateCopyWith<$Res> {
  factory _$SearchToShareStateCopyWith(
          _SearchToShareState value, $Res Function(_SearchToShareState) then) =
      __$SearchToShareStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {SearchTerm searchTerm,
      KtList<User> searchedUsers,
      KtList<User> allUsers,
      Option<Failure> failureOrSuccessOption});
}

/// @nodoc
class __$SearchToShareStateCopyWithImpl<$Res>
    extends _$SearchToShareStateCopyWithImpl<$Res>
    implements _$SearchToShareStateCopyWith<$Res> {
  __$SearchToShareStateCopyWithImpl(
      _SearchToShareState _value, $Res Function(_SearchToShareState) _then)
      : super(_value, (v) => _then(v as _SearchToShareState));

  @override
  _SearchToShareState get _value => super._value as _SearchToShareState;

  @override
  $Res call({
    Object? searchTerm = freezed,
    Object? searchedUsers = freezed,
    Object? allUsers = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_SearchToShareState(
      searchTerm: searchTerm == freezed
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as SearchTerm,
      searchedUsers: searchedUsers == freezed
          ? _value.searchedUsers
          : searchedUsers // ignore: cast_nullable_to_non_nullable
              as KtList<User>,
      allUsers: allUsers == freezed
          ? _value.allUsers
          : allUsers // ignore: cast_nullable_to_non_nullable
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
  const _$_SearchToShareState(
      {required this.searchTerm,
      required this.searchedUsers,
      required this.allUsers,
      required this.failureOrSuccessOption});

  @override
  final SearchTerm searchTerm;
  @override
  final KtList<User> searchedUsers;
  @override
  final KtList<User> allUsers;
  @override
  final Option<Failure> failureOrSuccessOption;

  @override
  String toString() {
    return 'SearchToShareState(searchTerm: $searchTerm, searchedUsers: $searchedUsers, allUsers: $allUsers, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchToShareState &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            (identical(other.searchedUsers, searchedUsers) ||
                other.searchedUsers == searchedUsers) &&
            (identical(other.allUsers, allUsers) ||
                other.allUsers == allUsers) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, searchTerm, searchedUsers, allUsers, failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SearchToShareStateCopyWith<_SearchToShareState> get copyWith =>
      __$SearchToShareStateCopyWithImpl<_SearchToShareState>(this, _$identity);
}

abstract class _SearchToShareState implements SearchToShareState {
  const factory _SearchToShareState(
      {required SearchTerm searchTerm,
      required KtList<User> searchedUsers,
      required KtList<User> allUsers,
      required Option<Failure> failureOrSuccessOption}) = _$_SearchToShareState;

  @override
  SearchTerm get searchTerm;
  @override
  KtList<User> get searchedUsers;
  @override
  KtList<User> get allUsers;
  @override
  Option<Failure> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SearchToShareStateCopyWith<_SearchToShareState> get copyWith =>
      throw _privateConstructorUsedError;
}
