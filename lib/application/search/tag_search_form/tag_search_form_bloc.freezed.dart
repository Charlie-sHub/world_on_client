// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'tag_search_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TagSearchFormEventTearOff {
  const _$TagSearchFormEventTearOff();

  _SubmittedSearchTerm submittedSearchTerm(String searchTermString) {
    return _SubmittedSearchTerm(
      searchTermString,
    );
  }

  _AddedTag addedTag(Tag tag) {
    return _AddedTag(
      tag,
    );
  }

  _SubtractedTag subtractedTag(Tag tag) {
    return _SubtractedTag(
      tag,
    );
  }
}

// ignore: unused_element
const $TagSearchFormEvent = _$TagSearchFormEventTearOff();

mixin _$TagSearchFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submittedSearchTerm(String searchTermString),
    @required Result addedTag(Tag tag),
    @required Result subtractedTag(Tag tag),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submittedSearchTerm(String searchTermString),
    Result addedTag(Tag tag),
    Result subtractedTag(Tag tag),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submittedSearchTerm(_SubmittedSearchTerm value),
    @required Result addedTag(_AddedTag value),
    @required Result subtractedTag(_SubtractedTag value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submittedSearchTerm(_SubmittedSearchTerm value),
    Result addedTag(_AddedTag value),
    Result subtractedTag(_SubtractedTag value),
    @required Result orElse(),
  });
}

abstract class $TagSearchFormEventCopyWith<$Res> {
  factory $TagSearchFormEventCopyWith(TagSearchFormEvent value, $Res Function(TagSearchFormEvent) then) = _$TagSearchFormEventCopyWithImpl<$Res>;
}

class _$TagSearchFormEventCopyWithImpl<$Res> implements $TagSearchFormEventCopyWith<$Res> {
  _$TagSearchFormEventCopyWithImpl(this._value, this._then);

  final TagSearchFormEvent _value;

  // ignore: unused_field
  final $Res Function(TagSearchFormEvent) _then;
}

abstract class _$SubmittedSearchTermCopyWith<$Res> {
  factory _$SubmittedSearchTermCopyWith(_SubmittedSearchTerm value, $Res Function(_SubmittedSearchTerm) then) = __$SubmittedSearchTermCopyWithImpl<$Res>;

  $Res call({String searchTermString});
}

class __$SubmittedSearchTermCopyWithImpl<$Res> extends _$TagSearchFormEventCopyWithImpl<$Res> implements _$SubmittedSearchTermCopyWith<$Res> {
  __$SubmittedSearchTermCopyWithImpl(_SubmittedSearchTerm _value, $Res Function(_SubmittedSearchTerm) _then) : super(_value, (v) => _then(v as _SubmittedSearchTerm));

  @override
  _SubmittedSearchTerm get _value => super._value as _SubmittedSearchTerm;

  @override
  $Res call({
    Object searchTermString = freezed,
  }) {
    return _then(_SubmittedSearchTerm(
      searchTermString == freezed ? _value.searchTermString : searchTermString as String,
    ));
  }
}

class _$_SubmittedSearchTerm implements _SubmittedSearchTerm {
  const _$_SubmittedSearchTerm(this.searchTermString) : assert(searchTermString != null);

  @override
  final String searchTermString;

  @override
  String toString() {
    return 'TagSearchFormEvent.submittedSearchTerm(searchTermString: $searchTermString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubmittedSearchTerm && (identical(other.searchTermString, searchTermString) || const DeepCollectionEquality().equals(other.searchTermString, searchTermString)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchTermString);

  @override
  _$SubmittedSearchTermCopyWith<_SubmittedSearchTerm> get copyWith => __$SubmittedSearchTermCopyWithImpl<_SubmittedSearchTerm>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submittedSearchTerm(String searchTermString),
    @required Result addedTag(Tag tag),
    @required Result subtractedTag(Tag tag),
  }) {
    assert(submittedSearchTerm != null);
    assert(addedTag != null);
    assert(subtractedTag != null);
    return submittedSearchTerm(searchTermString);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submittedSearchTerm(String searchTermString),
    Result addedTag(Tag tag),
    Result subtractedTag(Tag tag),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submittedSearchTerm != null) {
      return submittedSearchTerm(searchTermString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submittedSearchTerm(_SubmittedSearchTerm value),
    @required Result addedTag(_AddedTag value),
    @required Result subtractedTag(_SubtractedTag value),
  }) {
    assert(submittedSearchTerm != null);
    assert(addedTag != null);
    assert(subtractedTag != null);
    return submittedSearchTerm(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submittedSearchTerm(_SubmittedSearchTerm value),
    Result addedTag(_AddedTag value),
    Result subtractedTag(_SubtractedTag value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submittedSearchTerm != null) {
      return submittedSearchTerm(this);
    }
    return orElse();
  }
}

abstract class _SubmittedSearchTerm implements TagSearchFormEvent {
  const factory _SubmittedSearchTerm(String searchTermString) = _$_SubmittedSearchTerm;

  String get searchTermString;

  _$SubmittedSearchTermCopyWith<_SubmittedSearchTerm> get copyWith;
}

abstract class _$AddedTagCopyWith<$Res> {
  factory _$AddedTagCopyWith(_AddedTag value, $Res Function(_AddedTag) then) = __$AddedTagCopyWithImpl<$Res>;

  $Res call({Tag tag});

  $TagCopyWith<$Res> get tag;
}

class __$AddedTagCopyWithImpl<$Res> extends _$TagSearchFormEventCopyWithImpl<$Res> implements _$AddedTagCopyWith<$Res> {
  __$AddedTagCopyWithImpl(_AddedTag _value, $Res Function(_AddedTag) _then) : super(_value, (v) => _then(v as _AddedTag));

  @override
  _AddedTag get _value => super._value as _AddedTag;

  @override
  $Res call({
    Object tag = freezed,
  }) {
    return _then(_AddedTag(
      tag == freezed ? _value.tag : tag as Tag,
    ));
  }

  @override
  $TagCopyWith<$Res> get tag {
    if (_value.tag == null) {
      return null;
    }
    return $TagCopyWith<$Res>(_value.tag, (value) {
      return _then(_value.copyWith(tag: value));
    });
  }
}

class _$_AddedTag implements _AddedTag {
  const _$_AddedTag(this.tag) : assert(tag != null);

  @override
  final Tag tag;

  @override
  String toString() {
    return 'TagSearchFormEvent.addedTag(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddedTag && (identical(other.tag, tag) || const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(tag);

  @override
  _$AddedTagCopyWith<_AddedTag> get copyWith => __$AddedTagCopyWithImpl<_AddedTag>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submittedSearchTerm(String searchTermString),
    @required Result addedTag(Tag tag),
    @required Result subtractedTag(Tag tag),
  }) {
    assert(submittedSearchTerm != null);
    assert(addedTag != null);
    assert(subtractedTag != null);
    return addedTag(tag);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submittedSearchTerm(String searchTermString),
    Result addedTag(Tag tag),
    Result subtractedTag(Tag tag),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addedTag != null) {
      return addedTag(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submittedSearchTerm(_SubmittedSearchTerm value),
    @required Result addedTag(_AddedTag value),
    @required Result subtractedTag(_SubtractedTag value),
  }) {
    assert(submittedSearchTerm != null);
    assert(addedTag != null);
    assert(subtractedTag != null);
    return addedTag(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submittedSearchTerm(_SubmittedSearchTerm value),
    Result addedTag(_AddedTag value),
    Result subtractedTag(_SubtractedTag value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addedTag != null) {
      return addedTag(this);
    }
    return orElse();
  }
}

abstract class _AddedTag implements TagSearchFormEvent {
  const factory _AddedTag(Tag tag) = _$_AddedTag;

  Tag get tag;

  _$AddedTagCopyWith<_AddedTag> get copyWith;
}

abstract class _$SubtractedTagCopyWith<$Res> {
  factory _$SubtractedTagCopyWith(_SubtractedTag value, $Res Function(_SubtractedTag) then) = __$SubtractedTagCopyWithImpl<$Res>;

  $Res call({Tag tag});

  $TagCopyWith<$Res> get tag;
}

class __$SubtractedTagCopyWithImpl<$Res> extends _$TagSearchFormEventCopyWithImpl<$Res> implements _$SubtractedTagCopyWith<$Res> {
  __$SubtractedTagCopyWithImpl(_SubtractedTag _value, $Res Function(_SubtractedTag) _then) : super(_value, (v) => _then(v as _SubtractedTag));

  @override
  _SubtractedTag get _value => super._value as _SubtractedTag;

  @override
  $Res call({
    Object tag = freezed,
  }) {
    return _then(_SubtractedTag(
      tag == freezed ? _value.tag : tag as Tag,
    ));
  }

  @override
  $TagCopyWith<$Res> get tag {
    if (_value.tag == null) {
      return null;
    }
    return $TagCopyWith<$Res>(_value.tag, (value) {
      return _then(_value.copyWith(tag: value));
    });
  }
}

class _$_SubtractedTag implements _SubtractedTag {
  const _$_SubtractedTag(this.tag) : assert(tag != null);

  @override
  final Tag tag;

  @override
  String toString() {
    return 'TagSearchFormEvent.subtractedTag(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SubtractedTag && (identical(other.tag, tag) || const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(tag);

  @override
  _$SubtractedTagCopyWith<_SubtractedTag> get copyWith => __$SubtractedTagCopyWithImpl<_SubtractedTag>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submittedSearchTerm(String searchTermString),
    @required Result addedTag(Tag tag),
    @required Result subtractedTag(Tag tag),
  }) {
    assert(submittedSearchTerm != null);
    assert(addedTag != null);
    assert(subtractedTag != null);
    return subtractedTag(tag);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submittedSearchTerm(String searchTermString),
    Result addedTag(Tag tag),
    Result subtractedTag(Tag tag),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (subtractedTag != null) {
      return subtractedTag(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submittedSearchTerm(_SubmittedSearchTerm value),
    @required Result addedTag(_AddedTag value),
    @required Result subtractedTag(_SubtractedTag value),
  }) {
    assert(submittedSearchTerm != null);
    assert(addedTag != null);
    assert(subtractedTag != null);
    return subtractedTag(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submittedSearchTerm(_SubmittedSearchTerm value),
    Result addedTag(_AddedTag value),
    Result subtractedTag(_SubtractedTag value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (subtractedTag != null) {
      return subtractedTag(this);
    }
    return orElse();
  }
}

abstract class _SubtractedTag implements TagSearchFormEvent {
  const factory _SubtractedTag(Tag tag) = _$_SubtractedTag;

  Tag get tag;

  _$SubtractedTagCopyWith<_SubtractedTag> get copyWith;
}

class _$TagSearchFormStateTearOff {
  const _$TagSearchFormStateTearOff();

  _TagSearchFormState call({@required Set<Tag> tagsSelected, @required Set<Tag> tagsFound, @required bool isSubmitting, @required bool showErrorMessages, @required Option<Failure> failureOption}) {
    return _TagSearchFormState(
      tagsSelected: tagsSelected,
      tagsFound: tagsFound,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      failureOption: failureOption,
    );
  }
}

// ignore: unused_element
const $TagSearchFormState = _$TagSearchFormStateTearOff();

mixin _$TagSearchFormState {
  Set<Tag> get tagsSelected;

  Set<Tag> get tagsFound;

  bool get isSubmitting;

  bool get showErrorMessages;

  Option<Failure> get failureOption;

  $TagSearchFormStateCopyWith<TagSearchFormState> get copyWith;
}

abstract class $TagSearchFormStateCopyWith<$Res> {
  factory $TagSearchFormStateCopyWith(TagSearchFormState value, $Res Function(TagSearchFormState) then) = _$TagSearchFormStateCopyWithImpl<$Res>;

  $Res call({Set<Tag> tagsSelected, Set<Tag> tagsFound, bool isSubmitting, bool showErrorMessages, Option<Failure> failureOption});
}

class _$TagSearchFormStateCopyWithImpl<$Res> implements $TagSearchFormStateCopyWith<$Res> {
  _$TagSearchFormStateCopyWithImpl(this._value, this._then);

  final TagSearchFormState _value;

  // ignore: unused_field
  final $Res Function(TagSearchFormState) _then;

  @override
  $Res call({
    Object tagsSelected = freezed,
    Object tagsFound = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object failureOption = freezed,
  }) {
    return _then(_value.copyWith(
      tagsSelected: tagsSelected == freezed ? _value.tagsSelected : tagsSelected as Set<Tag>,
      tagsFound: tagsFound == freezed ? _value.tagsFound : tagsFound as Set<Tag>,
      isSubmitting: isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed ? _value.showErrorMessages : showErrorMessages as bool,
      failureOption: failureOption == freezed ? _value.failureOption : failureOption as Option<Failure>,
    ));
  }
}

abstract class _$TagSearchFormStateCopyWith<$Res> implements $TagSearchFormStateCopyWith<$Res> {
  factory _$TagSearchFormStateCopyWith(_TagSearchFormState value, $Res Function(_TagSearchFormState) then) = __$TagSearchFormStateCopyWithImpl<$Res>;

  @override
  $Res call({Set<Tag> tagsSelected, Set<Tag> tagsFound, bool isSubmitting, bool showErrorMessages, Option<Failure> failureOption});
}

class __$TagSearchFormStateCopyWithImpl<$Res> extends _$TagSearchFormStateCopyWithImpl<$Res> implements _$TagSearchFormStateCopyWith<$Res> {
  __$TagSearchFormStateCopyWithImpl(_TagSearchFormState _value, $Res Function(_TagSearchFormState) _then) : super(_value, (v) => _then(v as _TagSearchFormState));

  @override
  _TagSearchFormState get _value => super._value as _TagSearchFormState;

  @override
  $Res call({
    Object tagsSelected = freezed,
    Object tagsFound = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object failureOption = freezed,
  }) {
    return _then(_TagSearchFormState(
      tagsSelected: tagsSelected == freezed ? _value.tagsSelected : tagsSelected as Set<Tag>,
      tagsFound: tagsFound == freezed ? _value.tagsFound : tagsFound as Set<Tag>,
      isSubmitting: isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed ? _value.showErrorMessages : showErrorMessages as bool,
      failureOption: failureOption == freezed ? _value.failureOption : failureOption as Option<Failure>,
    ));
  }
}

class _$_TagSearchFormState implements _TagSearchFormState {
  const _$_TagSearchFormState({@required this.tagsSelected, @required this.tagsFound, @required this.isSubmitting, @required this.showErrorMessages, @required this.failureOption})
      : assert(tagsSelected != null),
        assert(tagsFound != null),
        assert(isSubmitting != null),
        assert(showErrorMessages != null),
        assert(failureOption != null);

  @override
  final Set<Tag> tagsSelected;
  @override
  final Set<Tag> tagsFound;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Failure> failureOption;

  @override
  String toString() {
    return 'TagSearchFormState(tagsSelected: $tagsSelected, tagsFound: $tagsFound, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TagSearchFormState &&
            (identical(other.tagsSelected, tagsSelected) || const DeepCollectionEquality().equals(other.tagsSelected, tagsSelected)) &&
            (identical(other.tagsFound, tagsFound) || const DeepCollectionEquality().equals(other.tagsFound, tagsFound)) &&
            (identical(other.isSubmitting, isSubmitting) || const DeepCollectionEquality().equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) || const DeepCollectionEquality().equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.failureOption, failureOption) || const DeepCollectionEquality().equals(other.failureOption, failureOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tagsSelected) ^
      const DeepCollectionEquality().hash(tagsFound) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(failureOption);

  @override
  _$TagSearchFormStateCopyWith<_TagSearchFormState> get copyWith => __$TagSearchFormStateCopyWithImpl<_TagSearchFormState>(this, _$identity);
}

abstract class _TagSearchFormState implements TagSearchFormState {
  const factory _TagSearchFormState(
      {@required Set<Tag> tagsSelected, @required Set<Tag> tagsFound, @required bool isSubmitting, @required bool showErrorMessages, @required Option<Failure> failureOption}) = _$_TagSearchFormState;

  @override
  Set<Tag> get tagsSelected;

  @override
  Set<Tag> get tagsFound;

  @override
  bool get isSubmitting;

  @override
  bool get showErrorMessages;

  @override
  Option<Failure> get failureOption;

  @override
  _$TagSearchFormStateCopyWith<_TagSearchFormState> get copyWith;
}
