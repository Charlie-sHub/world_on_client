// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'reward_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RewardFormEventTearOff {
  const _$RewardFormEventTearOff();

// ignore: unused_element
  _NameChanged nameChanged(String name) {
    return _NameChanged(
      name,
    );
  }

// ignore: unused_element
  _DescriptionChanged descriptionChanged(String description) {
    return _DescriptionChanged(
      description,
    );
  }

// ignore: unused_element
  _ImageChanged imageChanged(File imageFile) {
    return _ImageChanged(
      imageFile,
    );
  }

// ignore: unused_element
  _Submitted submitted() {
    return const _Submitted();
  }
}

/// @nodoc
// ignore: unused_element
const $RewardFormEvent = _$RewardFormEventTearOff();

/// @nodoc
mixin _$RewardFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result imageChanged(File imageFile),
    @required Result submitted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result imageChanged(File imageFile),
    Result submitted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result imageChanged(_ImageChanged value),
    @required Result submitted(_Submitted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result imageChanged(_ImageChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $RewardFormEventCopyWith<$Res> {
  factory $RewardFormEventCopyWith(RewardFormEvent value, $Res Function(RewardFormEvent) then) = _$RewardFormEventCopyWithImpl<$Res>;
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
  factory _$NameChangedCopyWith(_NameChanged value, $Res Function(_NameChanged) then) =
  __$NameChangedCopyWithImpl<$Res>;
  
  $Res call({String name});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res> extends _$RewardFormEventCopyWithImpl<$Res>
  implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(_NameChanged _value, $Res Function(_NameChanged) _then)
    : super(_value, (v) => _then(v as _NameChanged));
  
  @override
  _NameChanged get _value => super._value as _NameChanged;
  
  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_NameChanged(
      name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name) : assert(name != null);

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

  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
    __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result imageChanged(File imageFile),
    @required Result submitted(),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result imageChanged(File imageFile),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result imageChanged(_ImageChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result imageChanged(_ImageChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements RewardFormEvent {
  const factory _NameChanged(String name) = _$_NameChanged;

  String get name;
  _$NameChangedCopyWith<_NameChanged> get copyWith;
}

/// @nodoc
abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(_DescriptionChanged value, $Res Function(_DescriptionChanged) then) =
  __$DescriptionChangedCopyWithImpl<$Res>;
  
  $Res call({String description});
}

/// @nodoc
class __$DescriptionChangedCopyWithImpl<$Res> extends _$RewardFormEventCopyWithImpl<$Res>
  implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(_DescriptionChanged _value, $Res Function(_DescriptionChanged) _then)
    : super(_value, (v) => _then(v as _DescriptionChanged));
  
  @override
  _DescriptionChanged get _value => super._value as _DescriptionChanged;
  
  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(_DescriptionChanged(
      description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.description) : assert(description != null);

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

  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
    __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result imageChanged(File imageFile),
    @required Result submitted(),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result imageChanged(File imageFile),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result imageChanged(_ImageChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result imageChanged(_ImageChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements RewardFormEvent {
  const factory _DescriptionChanged(String description) = _$_DescriptionChanged;

  String get description;
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith;
}

/// @nodoc
abstract class _$ImageChangedCopyWith<$Res> {
  factory _$ImageChangedCopyWith(_ImageChanged value, $Res Function(_ImageChanged) then) =
  __$ImageChangedCopyWithImpl<$Res>;
  
  $Res call({File imageFile});
}

/// @nodoc
class __$ImageChangedCopyWithImpl<$Res> extends _$RewardFormEventCopyWithImpl<$Res>
  implements _$ImageChangedCopyWith<$Res> {
  __$ImageChangedCopyWithImpl(_ImageChanged _value, $Res Function(_ImageChanged) _then)
    : super(_value, (v) => _then(v as _ImageChanged));
  
  @override
  _ImageChanged get _value => super._value as _ImageChanged;
  
  @override
  $Res call({
    Object imageFile = freezed,
  }) {
    return _then(_ImageChanged(
      imageFile == freezed ? _value.imageFile : imageFile as File,
    ));
  }
}

/// @nodoc
class _$_ImageChanged implements _ImageChanged {
  const _$_ImageChanged(this.imageFile) : assert(imageFile != null);

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

  @override
  _$ImageChangedCopyWith<_ImageChanged> get copyWith =>
    __$ImageChangedCopyWithImpl<_ImageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result imageChanged(File imageFile),
    @required Result submitted(),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return imageChanged(imageFile);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result imageChanged(File imageFile),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageChanged != null) {
      return imageChanged(imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result imageChanged(_ImageChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return imageChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result imageChanged(_ImageChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageChanged != null) {
      return imageChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageChanged implements RewardFormEvent {
  const factory _ImageChanged(File imageFile) = _$_ImageChanged;

  File get imageFile;
  _$ImageChangedCopyWith<_ImageChanged> get copyWith;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(_Submitted value, $Res Function(_Submitted) then) =
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
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result imageChanged(File imageFile),
    @required Result submitted(),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return submitted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result imageChanged(File imageFile),
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
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result imageChanged(_ImageChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result imageChanged(_ImageChanged value),
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

abstract class _Submitted implements RewardFormEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
class _$RewardFormStateTearOff {
  const _$RewardFormStateTearOff();

// ignore: unused_element
  _RewardFormState call({@required Reward reward,
    @required bool showErrorMessages,
    @required bool isSubmitting}) {
    return _RewardFormState(
      reward: reward,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RewardFormState = _$RewardFormStateTearOff();

/// @nodoc
mixin _$RewardFormState {
  Reward get reward;
  bool get showErrorMessages;
  bool get isSubmitting;

  $RewardFormStateCopyWith<RewardFormState> get copyWith;
}

/// @nodoc
abstract class $RewardFormStateCopyWith<$Res> {
  factory $RewardFormStateCopyWith(RewardFormState value, $Res Function(RewardFormState) then) =
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
    Object reward = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      reward: reward == freezed ? _value.reward : reward as Reward,
      showErrorMessages: showErrorMessages == freezed
        ? _value.showErrorMessages
        : showErrorMessages as bool,
      isSubmitting:
      isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }

  @override
  $RewardCopyWith<$Res> get reward {
    if (_value.reward == null) {
      return null;
    }
    return $RewardCopyWith<$Res>(_value.reward, (value) {
      return _then(_value.copyWith(reward: value));
    });
  }
}

/// @nodoc
abstract class _$RewardFormStateCopyWith<$Res>
  implements $RewardFormStateCopyWith<$Res> {
  factory _$RewardFormStateCopyWith(_RewardFormState value, $Res Function(_RewardFormState) then) =
  __$RewardFormStateCopyWithImpl<$Res>;
  
  @override
  $Res call({Reward reward, bool showErrorMessages, bool isSubmitting});
  
  @override
  $RewardCopyWith<$Res> get reward;
}

/// @nodoc
class __$RewardFormStateCopyWithImpl<$Res> extends _$RewardFormStateCopyWithImpl<$Res>
  implements _$RewardFormStateCopyWith<$Res> {
  __$RewardFormStateCopyWithImpl(_RewardFormState _value, $Res Function(_RewardFormState) _then)
    : super(_value, (v) => _then(v as _RewardFormState));
  
  @override
  _RewardFormState get _value => super._value as _RewardFormState;
  
  @override
  $Res call({
    Object reward = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_RewardFormState(
      reward: reward == freezed ? _value.reward : reward as Reward,
      showErrorMessages: showErrorMessages == freezed
        ? _value.showErrorMessages
        : showErrorMessages as bool,
      isSubmitting:
      isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

/// @nodoc
class _$_RewardFormState implements _RewardFormState {
  const _$_RewardFormState({@required this.reward,
    @required this.showErrorMessages,
    @required this.isSubmitting})
    : assert(reward != null),
      assert(showErrorMessages != null),
      assert(isSubmitting != null);
  
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
  
  @override
  _$RewardFormStateCopyWith<_RewardFormState> get copyWith =>
    __$RewardFormStateCopyWithImpl<_RewardFormState>(this, _$identity);
}

abstract class _RewardFormState implements RewardFormState {
  const factory _RewardFormState({@required Reward reward,
    @required bool showErrorMessages,
    @required bool isSubmitting}) = _$_RewardFormState;
  
  @override
  Reward get reward;
  
  @override
  bool get showErrorMessages;
  
  @override
  bool get isSubmitting;
  
  @override
  _$RewardFormStateCopyWith<_RewardFormState> get copyWith;
}
