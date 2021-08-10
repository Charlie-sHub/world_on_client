// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'reward_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RewardFormEventTearOff {
  const _$RewardFormEventTearOff();

  _NameChanged nameChanged(String name) {
    return _NameChanged(
      name,
    );
  }

  _DescriptionChanged descriptionChanged(String description) {
    return _DescriptionChanged(
      description,
    );
  }

  _ImageChanged imageChanged(File imageFile) {
    return _ImageChanged(
      imageFile,
    );
  }

  _Submitted submitted() {
    return const _Submitted();
  }
}

/// @nodoc
const $RewardFormEvent = _$RewardFormEventTearOff();

/// @nodoc
mixin _$RewardFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardFormEventCopyWith<$Res> {
  factory $RewardFormEventCopyWith(
          RewardFormEvent value, $Res Function(RewardFormEvent) then) =
      _$RewardFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RewardFormEventCopyWithImpl<$Res>
    implements $RewardFormEventCopyWith<$Res> {
  _$RewardFormEventCopyWithImpl(this._value, this._then);

  final RewardFormEvent _value;
  // ignore: unused_field
  final $Res Function(RewardFormEvent) _then;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    extends _$RewardFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_NameChanged(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'RewardFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function() submitted,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements RewardFormEvent {
  const factory _NameChanged(String name) = _$_NameChanged;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(
          _DescriptionChanged value, $Res Function(_DescriptionChanged) then) =
      __$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class __$DescriptionChangedCopyWithImpl<$Res>
    extends _$RewardFormEventCopyWithImpl<$Res>
    implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(
      _DescriptionChanged _value, $Res Function(_DescriptionChanged) _then)
      : super(_value, (v) => _then(v as _DescriptionChanged));

  @override
  _DescriptionChanged get _value => super._value as _DescriptionChanged;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_DescriptionChanged(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'RewardFormEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DescriptionChanged &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function() submitted,
  }) {
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements RewardFormEvent {
  const factory _DescriptionChanged(String description) = _$_DescriptionChanged;

  String get description => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ImageChangedCopyWith<$Res> {
  factory _$ImageChangedCopyWith(
          _ImageChanged value, $Res Function(_ImageChanged) then) =
      __$ImageChangedCopyWithImpl<$Res>;
  $Res call({File imageFile});
}

/// @nodoc
class __$ImageChangedCopyWithImpl<$Res>
    extends _$RewardFormEventCopyWithImpl<$Res>
    implements _$ImageChangedCopyWith<$Res> {
  __$ImageChangedCopyWithImpl(
      _ImageChanged _value, $Res Function(_ImageChanged) _then)
      : super(_value, (v) => _then(v as _ImageChanged));

  @override
  _ImageChanged get _value => super._value as _ImageChanged;

  @override
  $Res call({
    Object? imageFile = freezed,
  }) {
    return _then(_ImageChanged(
      imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_ImageChanged implements _ImageChanged {
  const _$_ImageChanged(this.imageFile);

  @override
  final File imageFile;

  @override
  String toString() {
    return 'RewardFormEvent.imageChanged(imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageChanged &&
            (identical(other.imageFile, imageFile) ||
                const DeepCollectionEquality()
                    .equals(other.imageFile, imageFile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageFile);

  @JsonKey(ignore: true)
  @override
  _$ImageChangedCopyWith<_ImageChanged> get copyWith =>
      __$ImageChangedCopyWithImpl<_ImageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function() submitted,
  }) {
    return imageChanged(imageFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return imageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageChanged implements RewardFormEvent {
  const factory _ImageChanged(File imageFile) = _$_ImageChanged;

  File get imageFile => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ImageChangedCopyWith<_ImageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(
          _Submitted value, $Res Function(_Submitted) then) =
      __$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res> extends _$RewardFormEventCopyWithImpl<$Res>
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
    return 'RewardFormEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(File imageFile)? imageChanged,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements RewardFormEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
class _$RewardFormStateTearOff {
  const _$RewardFormStateTearOff();

  _RewardFormState call(
      {required Reward reward,
      required bool showErrorMessages,
      required bool isSubmitting}) {
    return _RewardFormState(
      reward: reward,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
    );
  }
}

/// @nodoc
const $RewardFormState = _$RewardFormStateTearOff();

/// @nodoc
mixin _$RewardFormState {
  Reward get reward => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RewardFormStateCopyWith<RewardFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardFormStateCopyWith<$Res> {
  factory $RewardFormStateCopyWith(
          RewardFormState value, $Res Function(RewardFormState) then) =
      _$RewardFormStateCopyWithImpl<$Res>;
  $Res call({Reward reward, bool showErrorMessages, bool isSubmitting});

  $RewardCopyWith<$Res> get reward;
}

/// @nodoc
class _$RewardFormStateCopyWithImpl<$Res>
    implements $RewardFormStateCopyWith<$Res> {
  _$RewardFormStateCopyWithImpl(this._value, this._then);

  final RewardFormState _value;
  // ignore: unused_field
  final $Res Function(RewardFormState) _then;

  @override
  $Res call({
    Object? reward = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      reward: reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as Reward,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $RewardCopyWith<$Res> get reward {
    return $RewardCopyWith<$Res>(_value.reward, (value) {
      return _then(_value.copyWith(reward: value));
    });
  }
}

/// @nodoc
abstract class _$RewardFormStateCopyWith<$Res>
    implements $RewardFormStateCopyWith<$Res> {
  factory _$RewardFormStateCopyWith(
          _RewardFormState value, $Res Function(_RewardFormState) then) =
      __$RewardFormStateCopyWithImpl<$Res>;
  @override
  $Res call({Reward reward, bool showErrorMessages, bool isSubmitting});

  @override
  $RewardCopyWith<$Res> get reward;
}

/// @nodoc
class __$RewardFormStateCopyWithImpl<$Res>
    extends _$RewardFormStateCopyWithImpl<$Res>
    implements _$RewardFormStateCopyWith<$Res> {
  __$RewardFormStateCopyWithImpl(
      _RewardFormState _value, $Res Function(_RewardFormState) _then)
      : super(_value, (v) => _then(v as _RewardFormState));

  @override
  _RewardFormState get _value => super._value as _RewardFormState;

  @override
  $Res call({
    Object? reward = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
  }) {
    return _then(_RewardFormState(
      reward: reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as Reward,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RewardFormState implements _RewardFormState {
  const _$_RewardFormState(
      {required this.reward,
      required this.showErrorMessages,
      required this.isSubmitting});

  @override
  final Reward reward;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'RewardFormState(reward: $reward, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RewardFormState &&
            (identical(other.reward, reward) ||
                const DeepCollectionEquality().equals(other.reward, reward)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reward) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting);

  @JsonKey(ignore: true)
  @override
  _$RewardFormStateCopyWith<_RewardFormState> get copyWith =>
      __$RewardFormStateCopyWithImpl<_RewardFormState>(this, _$identity);
}

abstract class _RewardFormState implements RewardFormState {
  const factory _RewardFormState(
      {required Reward reward,
      required bool showErrorMessages,
      required bool isSubmitting}) = _$_RewardFormState;

  @override
  Reward get reward => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RewardFormStateCopyWith<_RewardFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
