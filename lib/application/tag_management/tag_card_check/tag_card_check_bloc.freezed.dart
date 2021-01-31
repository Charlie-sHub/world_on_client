// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tag_card_check_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TagCardCheckEventTearOff {
  const _$TagCardCheckEventTearOff();

// ignore: unused_element
  _Initialized initialized(Tag tag) {
    return _Initialized(
      tag,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TagCardCheckEvent = _$TagCardCheckEventTearOff();

/// @nodoc
mixin _$TagCardCheckEvent {
  Tag get tag;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Tag tag),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Tag tag),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $TagCardCheckEventCopyWith<TagCardCheckEvent> get copyWith;
}

/// @nodoc
abstract class $TagCardCheckEventCopyWith<$Res> {
  factory $TagCardCheckEventCopyWith(
          TagCardCheckEvent value, $Res Function(TagCardCheckEvent) then) =
      _$TagCardCheckEventCopyWithImpl<$Res>;
  $Res call({Tag tag});

  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class _$TagCardCheckEventCopyWithImpl<$Res>
    implements $TagCardCheckEventCopyWith<$Res> {
  _$TagCardCheckEventCopyWithImpl(this._value, this._then);

  final TagCardCheckEvent _value;
  // ignore: unused_field
  final $Res Function(TagCardCheckEvent) _then;

  @override
  $Res call({
    Object tag = freezed,
  }) {
    return _then(_value.copyWith(
      tag: tag == freezed ? _value.tag : tag as Tag,
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
abstract class _$InitializedCopyWith<$Res>
    implements $TagCardCheckEventCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  @override
  $Res call({Tag tag});

  @override
  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$TagCardCheckEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object tag = freezed,
  }) {
    return _then(_Initialized(
      tag == freezed ? _value.tag : tag as Tag,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.tag) : assert(tag != null);

  @override
  final Tag tag;

  @override
  String toString() {
    return 'TagCardCheckEvent.initialized(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tag);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Tag tag),
  }) {
    assert(initialized != null);
    return initialized(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Tag tag),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
  }) {
    assert(initialized != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TagCardCheckEvent {
  const factory _Initialized(Tag tag) = _$_Initialized;

  @override
  Tag get tag;
  @override
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
class _$TagCardCheckStateTearOff {
  const _$TagCardCheckStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _InInterests inInterests() {
    return const _InInterests();
  }

// ignore: unused_element
  _NotInInterests notInInterests() {
    return const _NotInInterests();
  }
}

/// @nodoc
// ignore: unused_element
const $TagCardCheckState = _$TagCardCheckStateTearOff();

/// @nodoc
mixin _$TagCardCheckState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inInterests(),
    @required TResult notInInterests(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inInterests(),
    TResult notInInterests(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inInterests(_InInterests value),
    @required TResult notInInterests(_NotInInterests value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inInterests(_InInterests value),
    TResult notInInterests(_NotInInterests value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TagCardCheckStateCopyWith<$Res> {
  factory $TagCardCheckStateCopyWith(
          TagCardCheckState value, $Res Function(TagCardCheckState) then) =
      _$TagCardCheckStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TagCardCheckStateCopyWithImpl<$Res>
    implements $TagCardCheckStateCopyWith<$Res> {
  _$TagCardCheckStateCopyWithImpl(this._value, this._then);

  final TagCardCheckState _value;
  // ignore: unused_field
  final $Res Function(TagCardCheckState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TagCardCheckStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TagCardCheckState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inInterests(),
    @required TResult notInInterests(),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(notInInterests != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inInterests(),
    TResult notInInterests(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inInterests(_InInterests value),
    @required TResult notInInterests(_NotInInterests value),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(notInInterests != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inInterests(_InInterests value),
    TResult notInInterests(_NotInInterests value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TagCardCheckState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$InInterestsCopyWith<$Res> {
  factory _$InInterestsCopyWith(
          _InInterests value, $Res Function(_InInterests) then) =
      __$InInterestsCopyWithImpl<$Res>;
}

/// @nodoc
class __$InInterestsCopyWithImpl<$Res>
    extends _$TagCardCheckStateCopyWithImpl<$Res>
    implements _$InInterestsCopyWith<$Res> {
  __$InInterestsCopyWithImpl(
      _InInterests _value, $Res Function(_InInterests) _then)
      : super(_value, (v) => _then(v as _InInterests));

  @override
  _InInterests get _value => super._value as _InInterests;
}

/// @nodoc
class _$_InInterests implements _InInterests {
  const _$_InInterests();

  @override
  String toString() {
    return 'TagCardCheckState.inInterests()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InInterests);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inInterests(),
    @required TResult notInInterests(),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(notInInterests != null);
    return inInterests();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inInterests(),
    TResult notInInterests(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inInterests != null) {
      return inInterests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inInterests(_InInterests value),
    @required TResult notInInterests(_NotInInterests value),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(notInInterests != null);
    return inInterests(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inInterests(_InInterests value),
    TResult notInInterests(_NotInInterests value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inInterests != null) {
      return inInterests(this);
    }
    return orElse();
  }
}

abstract class _InInterests implements TagCardCheckState {
  const factory _InInterests() = _$_InInterests;
}

/// @nodoc
abstract class _$NotInInterestsCopyWith<$Res> {
  factory _$NotInInterestsCopyWith(
          _NotInInterests value, $Res Function(_NotInInterests) then) =
      __$NotInInterestsCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotInInterestsCopyWithImpl<$Res>
    extends _$TagCardCheckStateCopyWithImpl<$Res>
    implements _$NotInInterestsCopyWith<$Res> {
  __$NotInInterestsCopyWithImpl(
      _NotInInterests _value, $Res Function(_NotInInterests) _then)
      : super(_value, (v) => _then(v as _NotInInterests));

  @override
  _NotInInterests get _value => super._value as _NotInInterests;
}

/// @nodoc
class _$_NotInInterests implements _NotInInterests {
  const _$_NotInInterests();

  @override
  String toString() {
    return 'TagCardCheckState.notInInterests()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotInInterests);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inInterests(),
    @required TResult notInInterests(),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(notInInterests != null);
    return notInInterests();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inInterests(),
    TResult notInInterests(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notInInterests != null) {
      return notInInterests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inInterests(_InInterests value),
    @required TResult notInInterests(_NotInInterests value),
  }) {
    assert(initial != null);
    assert(inInterests != null);
    assert(notInInterests != null);
    return notInInterests(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inInterests(_InInterests value),
    TResult notInInterests(_NotInInterests value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notInInterests != null) {
      return notInInterests(this);
    }
    return orElse();
  }
}

abstract class _NotInInterests implements TagCardCheckState {
  const factory _NotInInterests() = _$_NotInInterests;
}
