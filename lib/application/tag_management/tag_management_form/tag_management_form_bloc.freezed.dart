// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tag_management_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TagManagementFormEventTearOff {
  const _$TagManagementFormEventTearOff();

  _Initialized initialized(Option<Tag> tagOption) {
    return _Initialized(
      tagOption,
    );
  }

  _NameChanged nameChanged(String name) {
    return _NameChanged(
      name,
    );
  }

  _Submitted submitted() {
    return const _Submitted();
  }
}

/// @nodoc
const $TagManagementFormEvent = _$TagManagementFormEventTearOff();

/// @nodoc
mixin _$TagManagementFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Tag> tagOption) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Tag> tagOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagManagementFormEventCopyWith<$Res> {
  factory $TagManagementFormEventCopyWith(TagManagementFormEvent value,
          $Res Function(TagManagementFormEvent) then) =
      _$TagManagementFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TagManagementFormEventCopyWithImpl<$Res>
    implements $TagManagementFormEventCopyWith<$Res> {
  _$TagManagementFormEventCopyWithImpl(this._value, this._then);

  final TagManagementFormEvent _value;
  // ignore: unused_field
  final $Res Function(TagManagementFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Tag> tagOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$TagManagementFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? tagOption = freezed,
  }) {
    return _then(_Initialized(
      tagOption == freezed
          ? _value.tagOption
          : tagOption // ignore: cast_nullable_to_non_nullable
              as Option<Tag>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.tagOption);

  @override
  final Option<Tag> tagOption;

  @override
  String toString() {
    return 'TagManagementFormEvent.initialized(tagOption: $tagOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.tagOption, tagOption) ||
                const DeepCollectionEquality()
                    .equals(other.tagOption, tagOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tagOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Tag> tagOption) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function() submitted,
  }) {
    return initialized(tagOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Tag> tagOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(tagOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TagManagementFormEvent {
  const factory _Initialized(Option<Tag> tagOption) = _$_Initialized;

  Option<Tag> get tagOption => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$TagManagementFormEventCopyWithImpl<$Res>
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
    return 'TagManagementFormEvent.nameChanged(name: $name)';
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
    required TResult Function(Option<Tag> tagOption) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function() submitted,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Tag> tagOption)? initialized,
    TResult Function(String name)? nameChanged,
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
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements TagManagementFormEvent {
  const factory _NameChanged(String name) = _$_NameChanged;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
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
    extends _$TagManagementFormEventCopyWithImpl<$Res>
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
    return 'TagManagementFormEvent.submitted()';
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
    required TResult Function(Option<Tag> tagOption) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Tag> tagOption)? initialized,
    TResult Function(String name)? nameChanged,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements TagManagementFormEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
class _$TagManagementFormStateTearOff {
  const _$TagManagementFormStateTearOff();

  _TagManagementFormState call(
      {required Tag tag,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSubmitting,
      required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
    return _TagManagementFormState(
      tag: tag,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $TagManagementFormState = _$TagManagementFormStateTearOff();

/// @nodoc
mixin _$TagManagementFormState {
  Tag get tag => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagManagementFormStateCopyWith<TagManagementFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagManagementFormStateCopyWith<$Res> {
  factory $TagManagementFormStateCopyWith(TagManagementFormState value,
          $Res Function(TagManagementFormState) then) =
      _$TagManagementFormStateCopyWithImpl<$Res>;
  $Res call(
      {Tag tag,
      bool showErrorMessages,
      bool isEditing,
      bool isSubmitting,
      Option<Either<Failure, Unit>> failureOrSuccessOption});

  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class _$TagManagementFormStateCopyWithImpl<$Res>
    implements $TagManagementFormStateCopyWith<$Res> {
  _$TagManagementFormStateCopyWithImpl(this._value, this._then);

  final TagManagementFormState _value;
  // ignore: unused_field
  final $Res Function(TagManagementFormState) _then;

  @override
  $Res call({
    Object? tag = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
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
abstract class _$TagManagementFormStateCopyWith<$Res>
    implements $TagManagementFormStateCopyWith<$Res> {
  factory _$TagManagementFormStateCopyWith(_TagManagementFormState value,
          $Res Function(_TagManagementFormState) then) =
      __$TagManagementFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Tag tag,
      bool showErrorMessages,
      bool isEditing,
      bool isSubmitting,
      Option<Either<Failure, Unit>> failureOrSuccessOption});

  @override
  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class __$TagManagementFormStateCopyWithImpl<$Res>
    extends _$TagManagementFormStateCopyWithImpl<$Res>
    implements _$TagManagementFormStateCopyWith<$Res> {
  __$TagManagementFormStateCopyWithImpl(_TagManagementFormState _value,
      $Res Function(_TagManagementFormState) _then)
      : super(_value, (v) => _then(v as _TagManagementFormState));

  @override
  _TagManagementFormState get _value => super._value as _TagManagementFormState;

  @override
  $Res call({
    Object? tag = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_TagManagementFormState(
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_TagManagementFormState implements _TagManagementFormState {
  const _$_TagManagementFormState(
      {required this.tag,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSubmitting,
      required this.failureOrSuccessOption});

  @override
  final Tag tag;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Failure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'TagManagementFormState(tag: $tag, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TagManagementFormState &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tag) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$TagManagementFormStateCopyWith<_TagManagementFormState> get copyWith =>
      __$TagManagementFormStateCopyWithImpl<_TagManagementFormState>(
          this, _$identity);
}

abstract class _TagManagementFormState implements TagManagementFormState {
  const factory _TagManagementFormState(
          {required Tag tag,
          required bool showErrorMessages,
          required bool isEditing,
          required bool isSubmitting,
          required Option<Either<Failure, Unit>> failureOrSuccessOption}) =
      _$_TagManagementFormState;

  @override
  Tag get tag => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<Failure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TagManagementFormStateCopyWith<_TagManagementFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
