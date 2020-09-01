// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_by_name_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchByNameFormEventTearOff {
  const _$SearchByNameFormEventTearOff();

// ignore: unused_element
  _SearchTermChanged searchTermChanged(String searchTermString) {
    return _SearchTermChanged(
      searchTermString,
    );
  }

// ignore: unused_element
  _Submitted submitted() {
    return const _Submitted();
  }
}

// ignore: unused_element
const $SearchByNameFormEvent = _$SearchByNameFormEventTearOff();

mixin _$SearchByNameFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchTermChanged(String searchTermString),
    @required Result submitted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchTermChanged(String searchTermString),
    Result submitted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchTermChanged(_SearchTermChanged value),
    @required Result submitted(_Submitted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchTermChanged(_SearchTermChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  });
}

abstract class $SearchByNameFormEventCopyWith<$Res> {
  factory $SearchByNameFormEventCopyWith(SearchByNameFormEvent value, $Res Function(SearchByNameFormEvent) then) = _$SearchByNameFormEventCopyWithImpl<$Res>;
}

class _$SearchByNameFormEventCopyWithImpl<$Res> implements $SearchByNameFormEventCopyWith<$Res> {
  _$SearchByNameFormEventCopyWithImpl(this._value, this._then);

  final SearchByNameFormEvent _value;

  // ignore: unused_field
  final $Res Function(SearchByNameFormEvent) _then;
}

abstract class _$SearchTermChangedCopyWith<$Res> {
  factory _$SearchTermChangedCopyWith(_SearchTermChanged value, $Res Function(_SearchTermChanged) then) = __$SearchTermChangedCopyWithImpl<$Res>;

  $Res call({String searchTermString});
}

class __$SearchTermChangedCopyWithImpl<$Res> extends _$SearchByNameFormEventCopyWithImpl<$Res> implements _$SearchTermChangedCopyWith<$Res> {
  __$SearchTermChangedCopyWithImpl(_SearchTermChanged _value, $Res Function(_SearchTermChanged) _then) : super(_value, (v) => _then(v as _SearchTermChanged));

  @override
  _SearchTermChanged get _value => super._value as _SearchTermChanged;

  @override
  $Res call({
    Object searchTermString = freezed,
  }) {
    return _then(_SearchTermChanged(
      searchTermString == freezed ? _value.searchTermString : searchTermString as String,
    ));
  }
}

class _$_SearchTermChanged implements _SearchTermChanged {
  const _$_SearchTermChanged(this.searchTermString) : assert(searchTermString != null);

  @override
  final String searchTermString;

  @override
  String toString() {
    return 'SearchByNameFormEvent.searchTermChanged(searchTermString: $searchTermString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchTermChanged && (identical(other.searchTermString, searchTermString) || const DeepCollectionEquality().equals(other.searchTermString, searchTermString)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchTermString);

  @override
  _$SearchTermChangedCopyWith<_SearchTermChanged> get copyWith => __$SearchTermChangedCopyWithImpl<_SearchTermChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchTermChanged(String searchTermString),
    @required Result submitted(),
  }) {
    assert(searchTermChanged != null);
    assert(submitted != null);
    return searchTermChanged(searchTermString);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchTermChanged(String searchTermString),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchTermChanged != null) {
      return searchTermChanged(searchTermString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchTermChanged(_SearchTermChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(searchTermChanged != null);
    assert(submitted != null);
    return searchTermChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchTermChanged(_SearchTermChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchTermChanged != null) {
      return searchTermChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchTermChanged implements SearchByNameFormEvent {
  const factory _SearchTermChanged(String searchTermString) = _$_SearchTermChanged;

  String get searchTermString;

  _$SearchTermChangedCopyWith<_SearchTermChanged> get copyWith;
}

abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(_Submitted value, $Res Function(_Submitted) then) = __$SubmittedCopyWithImpl<$Res>;
}

class __$SubmittedCopyWithImpl<$Res> extends _$SearchByNameFormEventCopyWithImpl<$Res> implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then) : super(_value, (v) => _then(v as _Submitted));

  @override
  _Submitted get _value => super._value as _Submitted;
}

class _$_Submitted implements _Submitted {
  const _$_Submitted();

  @override
  String toString() {
    return 'SearchByNameFormEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchTermChanged(String searchTermString),
    @required Result submitted(),
  }) {
    assert(searchTermChanged != null);
    assert(submitted != null);
    return submitted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchTermChanged(String searchTermString),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchTermChanged(_SearchTermChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(searchTermChanged != null);
    assert(submitted != null);
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchTermChanged(_SearchTermChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements SearchByNameFormEvent {
  const factory _Submitted() = _$_Submitted;
}

class _$SearchByNameFormStateTearOff {
  const _$SearchByNameFormStateTearOff();

// ignore: unused_element
  _SearchByNameFormState call({@required SearchTerm searchTerm, @required bool showErrorMessages, @required bool isSubmitting, @required Option<ValueFailure> failureOrSuccessOption}) {
    return _SearchByNameFormState(
      searchTerm: searchTerm,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $SearchByNameFormState = _$SearchByNameFormStateTearOff();

mixin _$SearchByNameFormState {
  SearchTerm get searchTerm;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<ValueFailure> get failureOrSuccessOption;

  $SearchByNameFormStateCopyWith<SearchByNameFormState> get copyWith;
}

abstract class $SearchByNameFormStateCopyWith<$Res> {
  factory $SearchByNameFormStateCopyWith(SearchByNameFormState value, $Res Function(SearchByNameFormState) then) = _$SearchByNameFormStateCopyWithImpl<$Res>;

  $Res call({SearchTerm searchTerm, bool showErrorMessages, bool isSubmitting, Option<ValueFailure> failureOrSuccessOption});
}

class _$SearchByNameFormStateCopyWithImpl<$Res> implements $SearchByNameFormStateCopyWith<$Res> {
  _$SearchByNameFormStateCopyWithImpl(this._value, this._then);

  final SearchByNameFormState _value;

  // ignore: unused_field
  final $Res Function(SearchByNameFormState) _then;

  @override
  $Res call({
    Object searchTerm = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      searchTerm: searchTerm == freezed ? _value.searchTerm : searchTerm as SearchTerm,
      showErrorMessages: showErrorMessages == freezed ? _value.showErrorMessages : showErrorMessages as bool,
      isSubmitting: isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed ? _value.failureOrSuccessOption : failureOrSuccessOption as Option<ValueFailure>,
    ));
  }
}

abstract class _$SearchByNameFormStateCopyWith<$Res> implements $SearchByNameFormStateCopyWith<$Res> {
  factory _$SearchByNameFormStateCopyWith(_SearchByNameFormState value, $Res Function(_SearchByNameFormState) then) = __$SearchByNameFormStateCopyWithImpl<$Res>;

  @override
  $Res call({SearchTerm searchTerm, bool showErrorMessages, bool isSubmitting, Option<ValueFailure> failureOrSuccessOption});
}

class __$SearchByNameFormStateCopyWithImpl<$Res> extends _$SearchByNameFormStateCopyWithImpl<$Res> implements _$SearchByNameFormStateCopyWith<$Res> {
  __$SearchByNameFormStateCopyWithImpl(_SearchByNameFormState _value, $Res Function(_SearchByNameFormState) _then) : super(_value, (v) => _then(v as _SearchByNameFormState));

  @override
  _SearchByNameFormState get _value => super._value as _SearchByNameFormState;

  @override
  $Res call({
    Object searchTerm = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_SearchByNameFormState(
      searchTerm: searchTerm == freezed ? _value.searchTerm : searchTerm as SearchTerm,
      showErrorMessages: showErrorMessages == freezed ? _value.showErrorMessages : showErrorMessages as bool,
      isSubmitting: isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed ? _value.failureOrSuccessOption : failureOrSuccessOption as Option<ValueFailure>,
    ));
  }
}

class _$_SearchByNameFormState implements _SearchByNameFormState {
  const _$_SearchByNameFormState({@required this.searchTerm, @required this.showErrorMessages, @required this.isSubmitting, @required this.failureOrSuccessOption})
      : assert(searchTerm != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(failureOrSuccessOption != null);

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
        (other is _SearchByNameFormState &&
            (identical(other.searchTerm, searchTerm) || const DeepCollectionEquality().equals(other.searchTerm, searchTerm)) &&
            (identical(other.showErrorMessages, showErrorMessages) || const DeepCollectionEquality().equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) || const DeepCollectionEquality().equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) || const DeepCollectionEquality().equals(other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchTerm) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @override
  _$SearchByNameFormStateCopyWith<_SearchByNameFormState> get copyWith => __$SearchByNameFormStateCopyWithImpl<_SearchByNameFormState>(this, _$identity);
}

abstract class _SearchByNameFormState implements SearchByNameFormState {
  const factory _SearchByNameFormState({@required SearchTerm searchTerm, @required bool showErrorMessages, @required bool isSubmitting, @required Option<ValueFailure> failureOrSuccessOption}) =
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
  _$SearchByNameFormStateCopyWith<_SearchByNameFormState> get copyWith;
}
