// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_by_name_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchByNameFormEventTearOff {
  const _$SearchByNameFormEventTearOff();

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
const $SearchByNameFormEvent = _$SearchByNameFormEventTearOff();

/// @nodoc
mixin _$SearchByNameFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchTermString) searchTermChanged,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchTermString)? searchTermChanged,
    TResult Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchTermString)? searchTermChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchTermChanged value) searchTermChanged,
    required TResult Function(_Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchTermChanged value)? searchTermChanged,
    TResult Function(_Submitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchTermChanged value)? searchTermChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchByNameFormEventCopyWith<$Res> {
  factory $SearchByNameFormEventCopyWith(SearchByNameFormEvent value,
          $Res Function(SearchByNameFormEvent) then) =
      _$SearchByNameFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchByNameFormEventCopyWithImpl<$Res>
    implements $SearchByNameFormEventCopyWith<$Res> {
  _$SearchByNameFormEventCopyWithImpl(this._value, this._then);

  final SearchByNameFormEvent _value;
  // ignore: unused_field
  final $Res Function(SearchByNameFormEvent) _then;
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
    extends _$SearchByNameFormEventCopyWithImpl<$Res>
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
    return 'SearchByNameFormEvent.searchTermChanged(searchTermString: $searchTermString)';
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
    required TResult Function(String searchTermString) searchTermChanged,
    required TResult Function() submitted,
  }) {
    return searchTermChanged(searchTermString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchTermString)? searchTermChanged,
    TResult Function()? submitted,
  }) {
    return searchTermChanged?.call(searchTermString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_SearchTermChanged value) searchTermChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return searchTermChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchTermChanged value)? searchTermChanged,
    TResult Function(_Submitted value)? submitted,
  }) {
    return searchTermChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class _SearchTermChanged implements SearchByNameFormEvent {
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
    extends _$SearchByNameFormEventCopyWithImpl<$Res>
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
    return 'SearchByNameFormEvent.submitted()';
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
    required TResult Function(String searchTermString) searchTermChanged,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchTermString)? searchTermChanged,
    TResult Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_SearchTermChanged value) searchTermChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchTermChanged value)? searchTermChanged,
    TResult Function(_Submitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class _Submitted implements SearchByNameFormEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
class _$SearchByNameFormStateTearOff {
  const _$SearchByNameFormStateTearOff();

  _SearchByNameFormState call(
      {required SearchTerm searchTerm,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<ValueFailure> failureOrSuccessOption}) {
    return _SearchByNameFormState(
      searchTerm: searchTerm,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SearchByNameFormState = _$SearchByNameFormStateTearOff();

/// @nodoc
mixin _$SearchByNameFormState {
  SearchTerm get searchTerm => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<ValueFailure> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchByNameFormStateCopyWith<SearchByNameFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchByNameFormStateCopyWith<$Res> {
  factory $SearchByNameFormStateCopyWith(SearchByNameFormState value,
          $Res Function(SearchByNameFormState) then) =
      _$SearchByNameFormStateCopyWithImpl<$Res>;
  $Res call(
      {SearchTerm searchTerm,
      bool showErrorMessages,
      bool isSubmitting,
      Option<ValueFailure> failureOrSuccessOption});
}

/// @nodoc
class _$SearchByNameFormStateCopyWithImpl<$Res>
    implements $SearchByNameFormStateCopyWith<$Res> {
  _$SearchByNameFormStateCopyWithImpl(this._value, this._then);

  final SearchByNameFormState _value;
  // ignore: unused_field
  final $Res Function(SearchByNameFormState) _then;

  @override
  $Res call({
    Object? searchTerm = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      searchTerm: searchTerm == freezed
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as SearchTerm,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure>,
    ));
  }
}

/// @nodoc
abstract class _$SearchByNameFormStateCopyWith<$Res>
    implements $SearchByNameFormStateCopyWith<$Res> {
  factory _$SearchByNameFormStateCopyWith(_SearchByNameFormState value,
          $Res Function(_SearchByNameFormState) then) =
      __$SearchByNameFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {SearchTerm searchTerm,
      bool showErrorMessages,
      bool isSubmitting,
      Option<ValueFailure> failureOrSuccessOption});
}

/// @nodoc
class __$SearchByNameFormStateCopyWithImpl<$Res>
    extends _$SearchByNameFormStateCopyWithImpl<$Res>
    implements _$SearchByNameFormStateCopyWith<$Res> {
  __$SearchByNameFormStateCopyWithImpl(_SearchByNameFormState _value,
      $Res Function(_SearchByNameFormState) _then)
      : super(_value, (v) => _then(v as _SearchByNameFormState));

  @override
  _SearchByNameFormState get _value => super._value as _SearchByNameFormState;

  @override
  $Res call({
    Object? searchTerm = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_SearchByNameFormState(
      searchTerm: searchTerm == freezed
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as SearchTerm,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure>,
    ));
  }
}

/// @nodoc

class _$_SearchByNameFormState implements _SearchByNameFormState {
  const _$_SearchByNameFormState(
      {required this.searchTerm,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.failureOrSuccessOption});

  @override
  final SearchTerm searchTerm;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<ValueFailure> failureOrSuccessOption;

  @override
  String toString() {
    return 'SearchByNameFormState(searchTerm: $searchTerm, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchByNameFormState &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchTerm, showErrorMessages,
      isSubmitting, failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SearchByNameFormStateCopyWith<_SearchByNameFormState> get copyWith =>
      __$SearchByNameFormStateCopyWithImpl<_SearchByNameFormState>(
          this, _$identity);
}

abstract class _SearchByNameFormState implements SearchByNameFormState {
  const factory _SearchByNameFormState(
          {required SearchTerm searchTerm,
          required bool showErrorMessages,
          required bool isSubmitting,
          required Option<ValueFailure> failureOrSuccessOption}) =
      _$_SearchByNameFormState;

  @override
  SearchTerm get searchTerm;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<ValueFailure> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SearchByNameFormStateCopyWith<_SearchByNameFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
