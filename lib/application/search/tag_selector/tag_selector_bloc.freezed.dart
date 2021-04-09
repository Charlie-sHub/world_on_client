// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tag_selector_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TagSelectorEventTearOff {
  const _$TagSelectorEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<TagSet> tagSetOption) {
    return _Initialized(
      tagSetOption,
    );
  }

// ignore: unused_element
  _AddedTag addedTag(Tag tag) {
    return _AddedTag(
      tag,
    );
  }

// ignore: unused_element
  _RemovedTag removedTag(Tag tag) {
    return _RemovedTag(
      tag,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TagSelectorEvent = _$TagSelectorEventTearOff();

/// @nodoc
mixin _$TagSelectorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<TagSet> tagSetOption),
    @required TResult addedTag(Tag tag),
    @required TResult removedTag(Tag tag),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<TagSet> tagSetOption),
    TResult addedTag(Tag tag),
    TResult removedTag(Tag tag),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult addedTag(_AddedTag value),
    @required TResult removedTag(_RemovedTag value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult addedTag(_AddedTag value),
    TResult removedTag(_RemovedTag value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TagSelectorEventCopyWith<$Res> {
  factory $TagSelectorEventCopyWith(
          TagSelectorEvent value, $Res Function(TagSelectorEvent) then) =
      _$TagSelectorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TagSelectorEventCopyWithImpl<$Res> implements $TagSelectorEventCopyWith<$Res> {
  _$TagSelectorEventCopyWithImpl(this._value, this._then);

  final TagSelectorEvent _value;

  // ignore: unused_field
  final $Res Function(TagSelectorEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) = __$InitializedCopyWithImpl<$Res>;

  $Res call({Option<TagSet> tagSetOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$TagSelectorEventCopyWithImpl<$Res> implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then) : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object tagSetOption = freezed,
  }) {
    return _then(_Initialized(
      tagSetOption == freezed ? _value.tagSetOption : tagSetOption as Option<TagSet>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.tagSetOption) : assert(tagSetOption != null);

  @override
  final Option<TagSet> tagSetOption;

  @override
  String toString() {
    return 'TagSelectorEvent.initialized(tagSetOption: $tagSetOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized && (identical(other.tagSetOption, tagSetOption) || const DeepCollectionEquality().equals(other.tagSetOption, tagSetOption)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(tagSetOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith => __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<TagSet> tagSetOption),
    @required TResult addedTag(Tag tag),
    @required TResult removedTag(Tag tag),
  }) {
    assert(initialized != null);
    assert(addedTag != null);
    assert(removedTag != null);
    return initialized(tagSetOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<TagSet> tagSetOption),
    TResult addedTag(Tag tag),
    TResult removedTag(Tag tag),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(tagSetOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult addedTag(_AddedTag value),
    @required TResult removedTag(_RemovedTag value),
  }) {
    assert(initialized != null);
    assert(addedTag != null);
    assert(removedTag != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult addedTag(_AddedTag value),
    TResult removedTag(_RemovedTag value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TagSelectorEvent {
  const factory _Initialized(Option<TagSet> tagSetOption) = _$_Initialized;

  Option<TagSet> get tagSetOption;

  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$AddedTagCopyWith<$Res> {
  factory _$AddedTagCopyWith(_AddedTag value, $Res Function(_AddedTag) then) = __$AddedTagCopyWithImpl<$Res>;

  $Res call({Tag tag});

  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class __$AddedTagCopyWithImpl<$Res> extends _$TagSelectorEventCopyWithImpl<$Res>
    implements _$AddedTagCopyWith<$Res> {
  __$AddedTagCopyWithImpl(_AddedTag _value, $Res Function(_AddedTag) _then)
      : super(_value, (v) => _then(v as _AddedTag));

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

/// @nodoc
class _$_AddedTag implements _AddedTag {
  const _$_AddedTag(this.tag) : assert(tag != null);

  @override
  final Tag tag;

  @override
  String toString() {
    return 'TagSelectorEvent.addedTag(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddedTag &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tag);

  @JsonKey(ignore: true)
  @override
  _$AddedTagCopyWith<_AddedTag> get copyWith =>
      __$AddedTagCopyWithImpl<_AddedTag>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<TagSet> tagSetOption),
    @required TResult addedTag(Tag tag),
    @required TResult removedTag(Tag tag),
  }) {
    assert(initialized != null);
    assert(addedTag != null);
    assert(removedTag != null);
    return addedTag(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<TagSet> tagSetOption),
    TResult addedTag(Tag tag),
    TResult removedTag(Tag tag),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addedTag != null) {
      return addedTag(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult addedTag(_AddedTag value),
    @required TResult removedTag(_RemovedTag value),
  }) {
    assert(initialized != null);
    assert(addedTag != null);
    assert(removedTag != null);
    return addedTag(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult addedTag(_AddedTag value),
    TResult removedTag(_RemovedTag value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addedTag != null) {
      return addedTag(this);
    }
    return orElse();
  }
}

abstract class _AddedTag implements TagSelectorEvent {
  const factory _AddedTag(Tag tag) = _$_AddedTag;

  Tag get tag;
  @JsonKey(ignore: true)
  _$AddedTagCopyWith<_AddedTag> get copyWith;
}

/// @nodoc
abstract class _$RemovedTagCopyWith<$Res> {
  factory _$RemovedTagCopyWith(_RemovedTag value, $Res Function(_RemovedTag) then) = __$RemovedTagCopyWithImpl<$Res>;

  $Res call({Tag tag});

  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class __$RemovedTagCopyWithImpl<$Res>
    extends _$TagSelectorEventCopyWithImpl<$Res>
    implements _$RemovedTagCopyWith<$Res> {
  __$RemovedTagCopyWithImpl(
      _RemovedTag _value, $Res Function(_RemovedTag) _then)
      : super(_value, (v) => _then(v as _RemovedTag));

  @override
  _RemovedTag get _value => super._value as _RemovedTag;

  @override
  $Res call({
    Object tag = freezed,
  }) {
    return _then(_RemovedTag(
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

/// @nodoc
class _$_RemovedTag implements _RemovedTag {
  const _$_RemovedTag(this.tag) : assert(tag != null);

  @override
  final Tag tag;

  @override
  String toString() {
    return 'TagSelectorEvent.removedTag(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemovedTag &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tag);

  @JsonKey(ignore: true)
  @override
  _$RemovedTagCopyWith<_RemovedTag> get copyWith =>
      __$RemovedTagCopyWithImpl<_RemovedTag>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<TagSet> tagSetOption),
    @required TResult addedTag(Tag tag),
    @required TResult removedTag(Tag tag),
  }) {
    assert(initialized != null);
    assert(addedTag != null);
    assert(removedTag != null);
    return removedTag(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<TagSet> tagSetOption),
    TResult addedTag(Tag tag),
    TResult removedTag(Tag tag),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removedTag != null) {
      return removedTag(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult addedTag(_AddedTag value),
    @required TResult removedTag(_RemovedTag value),
  }) {
    assert(initialized != null);
    assert(addedTag != null);
    assert(removedTag != null);
    return removedTag(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult addedTag(_AddedTag value),
    TResult removedTag(_RemovedTag value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removedTag != null) {
      return removedTag(this);
    }
    return orElse();
  }
}

abstract class _RemovedTag implements TagSelectorEvent {
  const factory _RemovedTag(Tag tag) = _$_RemovedTag;

  Tag get tag;
  @JsonKey(ignore: true)
  _$RemovedTagCopyWith<_RemovedTag> get copyWith;
}

/// @nodoc
class _$TagSelectorStateTearOff {
  const _$TagSelectorStateTearOff();

// ignore: unused_element
  _TagSearchFormState call({@required KtSet<Tag> tagsSelected}) {
    return _TagSearchFormState(
      tagsSelected: tagsSelected,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TagSelectorState = _$TagSelectorStateTearOff();

/// @nodoc
mixin _$TagSelectorState {
  KtSet<Tag> get tagsSelected;

  @JsonKey(ignore: true)
  $TagSelectorStateCopyWith<TagSelectorState> get copyWith;
}

/// @nodoc
abstract class $TagSelectorStateCopyWith<$Res> {
  factory $TagSelectorStateCopyWith(
          TagSelectorState value, $Res Function(TagSelectorState) then) =
      _$TagSelectorStateCopyWithImpl<$Res>;
  $Res call({KtSet<Tag> tagsSelected});
}

/// @nodoc
class _$TagSelectorStateCopyWithImpl<$Res>
    implements $TagSelectorStateCopyWith<$Res> {
  _$TagSelectorStateCopyWithImpl(this._value, this._then);

  final TagSelectorState _value;
  // ignore: unused_field
  final $Res Function(TagSelectorState) _then;

  @override
  $Res call({
    Object tagsSelected = freezed,
  }) {
    return _then(_value.copyWith(
      tagsSelected: tagsSelected == freezed
          ? _value.tagsSelected
          : tagsSelected as KtSet<Tag>,
    ));
  }
}

/// @nodoc
abstract class _$TagSearchFormStateCopyWith<$Res>
    implements $TagSelectorStateCopyWith<$Res> {
  factory _$TagSearchFormStateCopyWith(
          _TagSearchFormState value, $Res Function(_TagSearchFormState) then) =
      __$TagSearchFormStateCopyWithImpl<$Res>;
  @override
  $Res call({KtSet<Tag> tagsSelected});
}

/// @nodoc
class __$TagSearchFormStateCopyWithImpl<$Res>
    extends _$TagSelectorStateCopyWithImpl<$Res>
    implements _$TagSearchFormStateCopyWith<$Res> {
  __$TagSearchFormStateCopyWithImpl(
      _TagSearchFormState _value, $Res Function(_TagSearchFormState) _then)
      : super(_value, (v) => _then(v as _TagSearchFormState));

  @override
  _TagSearchFormState get _value => super._value as _TagSearchFormState;

  @override
  $Res call({
    Object tagsSelected = freezed,
  }) {
    return _then(_TagSearchFormState(
      tagsSelected: tagsSelected == freezed
          ? _value.tagsSelected
          : tagsSelected as KtSet<Tag>,
    ));
  }
}

/// @nodoc
class _$_TagSearchFormState implements _TagSearchFormState {
  const _$_TagSearchFormState({@required this.tagsSelected})
      : assert(tagsSelected != null);

  @override
  final KtSet<Tag> tagsSelected;

  @override
  String toString() {
    return 'TagSelectorState(tagsSelected: $tagsSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TagSearchFormState &&
            (identical(other.tagsSelected, tagsSelected) ||
                const DeepCollectionEquality()
                    .equals(other.tagsSelected, tagsSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tagsSelected);

  @JsonKey(ignore: true)
  @override
  _$TagSearchFormStateCopyWith<_TagSearchFormState> get copyWith =>
      __$TagSearchFormStateCopyWithImpl<_TagSearchFormState>(this, _$identity);
}

abstract class _TagSearchFormState implements TagSelectorState {
  const factory _TagSearchFormState({@required KtSet<Tag> tagsSelected}) =
      _$_TagSearchFormState;

  @override
  KtSet<Tag> get tagsSelected;
  @override
  @JsonKey(ignore: true)
  _$TagSearchFormStateCopyWith<_TagSearchFormState> get copyWith;
}
