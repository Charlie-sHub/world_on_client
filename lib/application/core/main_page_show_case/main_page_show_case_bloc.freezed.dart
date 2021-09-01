// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'main_page_show_case_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainPageShowCaseEventTearOff {
  const _$MainPageShowCaseEventTearOff();

  _Initialized initialized({required bool isNewUser}) {
    return _Initialized(
      isNewUser: isNewUser,
    );
  }

  _Finished finished() {
    return const _Finished();
  }
}

/// @nodoc
const $MainPageShowCaseEvent = _$MainPageShowCaseEventTearOff();

/// @nodoc
mixin _$MainPageShowCaseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isNewUser) initialized,
    required TResult Function() finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isNewUser)? initialized,
    TResult Function()? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Finished value) finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageShowCaseEventCopyWith<$Res> {
  factory $MainPageShowCaseEventCopyWith(MainPageShowCaseEvent value,
          $Res Function(MainPageShowCaseEvent) then) =
      _$MainPageShowCaseEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainPageShowCaseEventCopyWithImpl<$Res>
    implements $MainPageShowCaseEventCopyWith<$Res> {
  _$MainPageShowCaseEventCopyWithImpl(this._value, this._then);

  final MainPageShowCaseEvent _value;
  // ignore: unused_field
  final $Res Function(MainPageShowCaseEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({bool isNewUser});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$MainPageShowCaseEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? isNewUser = freezed,
  }) {
    return _then(_Initialized(
      isNewUser: isNewUser == freezed
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized({required this.isNewUser});

  @override
  final bool isNewUser;

  @override
  String toString() {
    return 'MainPageShowCaseEvent.initialized(isNewUser: $isNewUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.isNewUser, isNewUser) ||
                const DeepCollectionEquality()
                    .equals(other.isNewUser, isNewUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isNewUser);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isNewUser) initialized,
    required TResult Function() finished,
  }) {
    return initialized(isNewUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isNewUser)? initialized,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(isNewUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Finished value) finished,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements MainPageShowCaseEvent {
  const factory _Initialized({required bool isNewUser}) = _$_Initialized;

  bool get isNewUser => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FinishedCopyWith<$Res> {
  factory _$FinishedCopyWith(_Finished value, $Res Function(_Finished) then) =
      __$FinishedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FinishedCopyWithImpl<$Res>
    extends _$MainPageShowCaseEventCopyWithImpl<$Res>
    implements _$FinishedCopyWith<$Res> {
  __$FinishedCopyWithImpl(_Finished _value, $Res Function(_Finished) _then)
      : super(_value, (v) => _then(v as _Finished));

  @override
  _Finished get _value => super._value as _Finished;
}

/// @nodoc

class _$_Finished implements _Finished {
  const _$_Finished();

  @override
  String toString() {
    return 'MainPageShowCaseEvent.finished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Finished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isNewUser) initialized,
    required TResult Function() finished,
  }) {
    return finished();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isNewUser)? initialized,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Finished value) finished,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class _Finished implements MainPageShowCaseEvent {
  const factory _Finished() = _$_Finished;
}

/// @nodoc
class _$MainPageShowCaseStateTearOff {
  const _$MainPageShowCaseStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Show show() {
    return const _Show();
  }

  _ShowNot showNot() {
    return const _ShowNot();
  }
}

/// @nodoc
const $MainPageShowCaseState = _$MainPageShowCaseStateTearOff();

/// @nodoc
mixin _$MainPageShowCaseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() show,
    required TResult Function() showNot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? show,
    TResult Function()? showNot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Show value) show,
    required TResult Function(_ShowNot value) showNot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Show value)? show,
    TResult Function(_ShowNot value)? showNot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageShowCaseStateCopyWith<$Res> {
  factory $MainPageShowCaseStateCopyWith(MainPageShowCaseState value,
          $Res Function(MainPageShowCaseState) then) =
      _$MainPageShowCaseStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainPageShowCaseStateCopyWithImpl<$Res>
    implements $MainPageShowCaseStateCopyWith<$Res> {
  _$MainPageShowCaseStateCopyWithImpl(this._value, this._then);

  final MainPageShowCaseState _value;
  // ignore: unused_field
  final $Res Function(MainPageShowCaseState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$MainPageShowCaseStateCopyWithImpl<$Res>
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
    return 'MainPageShowCaseState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() show,
    required TResult Function() showNot,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? show,
    TResult Function()? showNot,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Show value) show,
    required TResult Function(_ShowNot value) showNot,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Show value)? show,
    TResult Function(_ShowNot value)? showNot,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MainPageShowCaseState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ShowCopyWith<$Res> {
  factory _$ShowCopyWith(_Show value, $Res Function(_Show) then) =
      __$ShowCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowCopyWithImpl<$Res>
    extends _$MainPageShowCaseStateCopyWithImpl<$Res>
    implements _$ShowCopyWith<$Res> {
  __$ShowCopyWithImpl(_Show _value, $Res Function(_Show) _then)
      : super(_value, (v) => _then(v as _Show));

  @override
  _Show get _value => super._value as _Show;
}

/// @nodoc

class _$_Show implements _Show {
  const _$_Show();

  @override
  String toString() {
    return 'MainPageShowCaseState.show()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Show);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() show,
    required TResult Function() showNot,
  }) {
    return show();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? show,
    TResult Function()? showNot,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Show value) show,
    required TResult Function(_ShowNot value) showNot,
  }) {
    return show(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Show value)? show,
    TResult Function(_ShowNot value)? showNot,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class _Show implements MainPageShowCaseState {
  const factory _Show() = _$_Show;
}

/// @nodoc
abstract class _$ShowNotCopyWith<$Res> {
  factory _$ShowNotCopyWith(_ShowNot value, $Res Function(_ShowNot) then) =
      __$ShowNotCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowNotCopyWithImpl<$Res>
    extends _$MainPageShowCaseStateCopyWithImpl<$Res>
    implements _$ShowNotCopyWith<$Res> {
  __$ShowNotCopyWithImpl(_ShowNot _value, $Res Function(_ShowNot) _then)
      : super(_value, (v) => _then(v as _ShowNot));

  @override
  _ShowNot get _value => super._value as _ShowNot;
}

/// @nodoc

class _$_ShowNot implements _ShowNot {
  const _$_ShowNot();

  @override
  String toString() {
    return 'MainPageShowCaseState.showNot()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ShowNot);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() show,
    required TResult Function() showNot,
  }) {
    return showNot();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? show,
    TResult Function()? showNot,
    required TResult orElse(),
  }) {
    if (showNot != null) {
      return showNot();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Show value) show,
    required TResult Function(_ShowNot value) showNot,
  }) {
    return showNot(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Show value)? show,
    TResult Function(_ShowNot value)? showNot,
    required TResult orElse(),
  }) {
    if (showNot != null) {
      return showNot(this);
    }
    return orElse();
  }
}

abstract class _ShowNot implements MainPageShowCaseState {
  const factory _ShowNot() = _$_ShowNot;
}
