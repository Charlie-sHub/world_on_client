// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tag_selector_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TagSelectorEventTearOff {
  const _$TagSelectorEventTearOff();

  _Initialized initialized(Option<TagSet> tagSetOption) {
    return _Initialized(
      tagSetOption,
    );
  }

  _AddedTag addedTag(Tag tag) {
    return _AddedTag(
      tag,
    );
  }

  _RemovedTag removedTag(Tag tag) {
    return _RemovedTag(
      tag,
    );
  }
}

/// @nodoc
const $TagSelectorEvent = _$TagSelectorEventTearOff();

/// @nodoc
mixin _$TagSelectorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TagSet> tagSetOption) initialized,
    required TResult Function(Tag tag) addedTag,
    required TResult Function(Tag tag) removedTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TagSet> tagSetOption)? initialized,
    TResult Function(Tag tag)? addedTag,
    TResult Function(Tag tag)? removedTag,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddedTag value) addedTag,
    required TResult Function(_RemovedTag value) removedTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedTag value)? addedTag,
    TResult Function(_RemovedTag value)? removedTag,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagSelectorEventCopyWith<$Res> {
  factory $TagSelectorEventCopyWith(TagSelectorEvent value, $Res Function(TagSelectorEvent) then) = _$TagSelectorEventCopyWithImpl<$Res>;
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
    Object? tagSetOption = freezed,
  }) {
    return _then(_Initialized(
      tagSetOption == freezed
          ? _value.tagSetOption
          : tagSetOption // ignore: cast_nullable_to_non_nullable
              as Option<TagSet>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.tagSetOption);

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
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TagSet> tagSetOption) initialized,
    required TResult Function(Tag tag) addedTag,
    required TResult Function(Tag tag) removedTag,
  }) {
    return initialized(tagSetOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TagSet> tagSetOption)? initialized,
    TResult Function(Tag tag)? addedTag,
    TResult Function(Tag tag)? removedTag,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(tagSetOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddedTag value) addedTag,
    required TResult Function(_RemovedTag value) removedTag,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedTag value)? addedTag,
    TResult Function(_RemovedTag value)? removedTag,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TagSelectorEvent {
  const factory _Initialized(Option<TagSet> tagSetOption) = _$_Initialized;

  Option<TagSet> get tagSetOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddedTagCopyWith<$Res> {
  factory _$AddedTagCopyWith(_AddedTag value, $Res Function(_AddedTag) then) = __$AddedTagCopyWithImpl<$Res>;

  $Res call({Tag tag});

  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class __$AddedTagCopyWithImpl<$Res> extends _$TagSelectorEventCopyWithImpl<$Res> implements _$AddedTagCopyWith<$Res> {
  __$AddedTagCopyWithImpl(_AddedTag _value, $Res Function(_AddedTag) _then) : super(_value, (v) => _then(v as _AddedTag));

  @override
  _AddedTag get _value => super._value as _AddedTag;

  @override
  $Res call({
    Object? tag = freezed,
  }) {
    return _then(_AddedTag(
      tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag,
    ));
  }

  @override
  $TagCopyWith<$Res> get tag {
    return $TagCopyWith<$Res>(_value.tag, (value) {
      return _then(_value.copyWith(tag: value));
    });
  }
}

/// @nodoc
class _$_AddedTag implements _AddedTag {
  const _$_AddedTag(this.tag);

  @override
  final Tag tag;

  @override
  String toString() {
    return 'TagSelectorEvent.addedTag(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddedTag && (identical(other.tag, tag) || const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(tag);

  @JsonKey(ignore: true)
  @override
  _$AddedTagCopyWith<_AddedTag> get copyWith => __$AddedTagCopyWithImpl<_AddedTag>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TagSet> tagSetOption) initialized,
    required TResult Function(Tag tag) addedTag,
    required TResult Function(Tag tag) removedTag,
  }) {
    return addedTag(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TagSet> tagSetOption)? initialized,
    TResult Function(Tag tag)? addedTag,
    TResult Function(Tag tag)? removedTag,
    required TResult orElse(),
  }) {
    if (addedTag != null) {
      return addedTag(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddedTag value) addedTag,
    required TResult Function(_RemovedTag value) removedTag,
  }) {
    return addedTag(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedTag value)? addedTag,
    TResult Function(_RemovedTag value)? removedTag,
    required TResult orElse(),
  }) {
    if (addedTag != null) {
      return addedTag(this);
    }
    return orElse();
  }
}

abstract class _AddedTag implements TagSelectorEvent {
  const factory _AddedTag(Tag tag) = _$_AddedTag;

  Tag get tag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$AddedTagCopyWith<_AddedTag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemovedTagCopyWith<$Res> {
  factory _$RemovedTagCopyWith(_RemovedTag value, $Res Function(_RemovedTag) then) = __$RemovedTagCopyWithImpl<$Res>;

  $Res call({Tag tag});

  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class __$RemovedTagCopyWithImpl<$Res> extends _$TagSelectorEventCopyWithImpl<$Res> implements _$RemovedTagCopyWith<$Res> {
  __$RemovedTagCopyWithImpl(_RemovedTag _value, $Res Function(_RemovedTag) _then) : super(_value, (v) => _then(v as _RemovedTag));

  @override
  _RemovedTag get _value => super._value as _RemovedTag;

  @override
  $Res call({
    Object? tag = freezed,
  }) {
    return _then(_RemovedTag(
      tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag,
    ));
  }

  @override
  $TagCopyWith<$Res> get tag {
    return $TagCopyWith<$Res>(_value.tag, (value) {
      return _then(_value.copyWith(tag: value));
    });
  }
}

/// @nodoc
class _$_RemovedTag implements _RemovedTag {
  const _$_RemovedTag(this.tag);

  @override
  final Tag tag;

  @override
  String toString() {
    return 'TagSelectorEvent.removedTag(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RemovedTag && (identical(other.tag, tag) || const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(tag);

  @JsonKey(ignore: true)
  @override
  _$RemovedTagCopyWith<_RemovedTag> get copyWith => __$RemovedTagCopyWithImpl<_RemovedTag>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TagSet> tagSetOption) initialized,
    required TResult Function(Tag tag) addedTag,
    required TResult Function(Tag tag) removedTag,
  }) {
    return removedTag(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TagSet> tagSetOption)? initialized,
    TResult Function(Tag tag)? addedTag,
    TResult Function(Tag tag)? removedTag,
    required TResult orElse(),
  }) {
    if (removedTag != null) {
      return removedTag(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddedTag value) addedTag,
    required TResult Function(_RemovedTag value) removedTag,
  }) {
    return removedTag(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedTag value)? addedTag,
    TResult Function(_RemovedTag value)? removedTag,
    required TResult orElse(),
  }) {
    if (removedTag != null) {
      return removedTag(this);
    }
    return orElse();
  }
}

abstract class _RemovedTag implements TagSelectorEvent {
  const factory _RemovedTag(Tag tag) = _$_RemovedTag;

  Tag get tag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$RemovedTagCopyWith<_RemovedTag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$TagSelectorStateTearOff {
  const _$TagSelectorStateTearOff();

  _TagSearchFormState call({required KtSet<Tag> tagsSelected}) {
    return _TagSearchFormState(
      tagsSelected: tagsSelected,
    );
  }
}

/// @nodoc
const $TagSelectorState = _$TagSelectorStateTearOff();

/// @nodoc
mixin _$TagSelectorState {
  KtSet<Tag> get tagsSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagSelectorStateCopyWith<TagSelectorState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagSelectorStateCopyWith<$Res> {
  factory $TagSelectorStateCopyWith(TagSelectorState value, $Res Function(TagSelectorState) then) = _$TagSelectorStateCopyWithImpl<$Res>;

  $Res call({KtSet<Tag> tagsSelected});
}

/// @nodoc
class _$TagSelectorStateCopyWithImpl<$Res> implements $TagSelectorStateCopyWith<$Res> {
  _$TagSelectorStateCopyWithImpl(this._value, this._then);

  final TagSelectorState _value;

  // ignore: unused_field
  final $Res Function(TagSelectorState) _then;

  @override
  $Res call({
    Object? tagsSelected = freezed,
  }) {
    return _then(_value.copyWith(
      tagsSelected: tagsSelected == freezed
          ? _value.tagsSelected
          : tagsSelected // ignore: cast_nullable_to_non_nullable
              as KtSet<Tag>,
    ));
  }
}

/// @nodoc
abstract class _$TagSearchFormStateCopyWith<$Res> implements $TagSelectorStateCopyWith<$Res> {
  factory _$TagSearchFormStateCopyWith(_TagSearchFormState value, $Res Function(_TagSearchFormState) then) = __$TagSearchFormStateCopyWithImpl<$Res>;

  @override
  $Res call({KtSet<Tag> tagsSelected});
}

/// @nodoc
class __$TagSearchFormStateCopyWithImpl<$Res> extends _$TagSelectorStateCopyWithImpl<$Res> implements _$TagSearchFormStateCopyWith<$Res> {
  __$TagSearchFormStateCopyWithImpl(_TagSearchFormState _value, $Res Function(_TagSearchFormState) _then) : super(_value, (v) => _then(v as _TagSearchFormState));

  @override
  _TagSearchFormState get _value => super._value as _TagSearchFormState;

  @override
  $Res call({
    Object? tagsSelected = freezed,
  }) {
    return _then(_TagSearchFormState(
      tagsSelected: tagsSelected == freezed
          ? _value.tagsSelected
          : tagsSelected // ignore: cast_nullable_to_non_nullable
              as KtSet<Tag>,
    ));
  }
}

/// @nodoc
class _$_TagSearchFormState implements _TagSearchFormState {
  const _$_TagSearchFormState({required this.tagsSelected});

  @override
  final KtSet<Tag> tagsSelected;

  @override
  String toString() {
    return 'TagSelectorState(tagsSelected: $tagsSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TagSearchFormState && (identical(other.tagsSelected, tagsSelected) || const DeepCollectionEquality().equals(other.tagsSelected, tagsSelected)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(tagsSelected);

  @JsonKey(ignore: true)
  @override
  _$TagSearchFormStateCopyWith<_TagSearchFormState> get copyWith => __$TagSearchFormStateCopyWithImpl<_TagSearchFormState>(this, _$identity);
}

abstract class _TagSearchFormState implements TagSelectorState {
  const factory _TagSearchFormState({required KtSet<Tag> tagsSelected}) = _$_TagSearchFormState;

  @override
  KtSet<Tag> get tagsSelected => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$TagSearchFormStateCopyWith<_TagSearchFormState> get copyWith => throw _privateConstructorUsedError;
}
