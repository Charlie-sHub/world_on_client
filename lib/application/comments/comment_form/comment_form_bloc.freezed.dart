// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'comment_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CommentFormEventTearOff {
  const _$CommentFormEventTearOff();

// ignore: unused_element
  _Initialized initialized({@required Option<Comment> commentOption, @required UniqueId experienceId}) {
    return _Initialized(
      commentOption: commentOption,
      experienceId: experienceId,
    );
  }

// ignore: unused_element
  _ContentChanged contentChanged(String content) {
    return _ContentChanged(
      content,
    );
  }

// ignore: unused_element
  _Submitted submitted() {
    return const _Submitted();
  }
}

/// @nodoc
// ignore: unused_element
const $CommentFormEvent = _$CommentFormEventTearOff();

/// @nodoc
mixin _$CommentFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Comment> commentOption, UniqueId experienceId),
    @required Result contentChanged(String content),
    @required Result submitted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Comment> commentOption, UniqueId experienceId),
    Result contentChanged(String content),
    Result submitted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result contentChanged(_ContentChanged value),
    @required Result submitted(_Submitted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result contentChanged(_ContentChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CommentFormEventCopyWith<$Res> {
  factory $CommentFormEventCopyWith(CommentFormEvent value, $Res Function(CommentFormEvent) then) =
  _$CommentFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentFormEventCopyWithImpl<$Res>
  implements $CommentFormEventCopyWith<$Res> {
  _$CommentFormEventCopyWithImpl(this._value, this._then);
  
  final CommentFormEvent _value;
  
  // ignore: unused_field
  final $Res Function(CommentFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) =
  __$InitializedCopyWithImpl<$Res>;
  
  $Res call({Option<Comment> commentOption, UniqueId experienceId});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$CommentFormEventCopyWithImpl<$Res>
  implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then)
    : super(_value, (v) => _then(v as _Initialized));
  
  @override
  _Initialized get _value => super._value as _Initialized;
  
  @override
  $Res call({
    Object commentOption = freezed,
    Object experienceId = freezed,
  }) {
    return _then(_Initialized(
      commentOption: commentOption == freezed
        ? _value.commentOption
        : commentOption as Option<Comment>,
      experienceId: experienceId == freezed
        ? _value.experienceId
        : experienceId as UniqueId,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized({@required this.commentOption, @required this.experienceId})
    : assert(commentOption != null),
      assert(experienceId != null);
  
  @override
  final Option<Comment> commentOption;
  @override
  final UniqueId experienceId;
  
  @override
  String toString() {
    return 'CommentFormEvent.initialized(commentOption: $commentOption, experienceId: $experienceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _Initialized &&
        (identical(other.commentOption, commentOption) ||
          const DeepCollectionEquality()
            .equals(other.commentOption, commentOption)) &&
        (identical(other.experienceId, experienceId) ||
          const DeepCollectionEquality()
            .equals(other.experienceId, experienceId)));
  }
  
  @override
  int get hashCode =>
    runtimeType.hashCode ^
    const DeepCollectionEquality().hash(commentOption) ^
    const DeepCollectionEquality().hash(experienceId);
  
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
    __$InitializedCopyWithImpl<_Initialized>(this, _$identity);
  
  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Comment> commentOption, UniqueId experienceId),
    @required Result contentChanged(String content),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(contentChanged != null);
    assert(submitted != null);
    return initialized(commentOption, experienceId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Comment> commentOption, UniqueId experienceId),
    Result contentChanged(String content),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(commentOption, experienceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result contentChanged(_ContentChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(contentChanged != null);
    assert(submitted != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result contentChanged(_ContentChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements CommentFormEvent {
  const factory _Initialized({@required Option<Comment> commentOption,
    @required UniqueId experienceId}) = _$_Initialized;
  
  Option<Comment> get commentOption;
  
  UniqueId get experienceId;
  
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$ContentChangedCopyWith<$Res> {
  factory _$ContentChangedCopyWith(_ContentChanged value, $Res Function(_ContentChanged) then) =
  __$ContentChangedCopyWithImpl<$Res>;
  
  $Res call({String content});
}

/// @nodoc
class __$ContentChangedCopyWithImpl<$Res> extends _$CommentFormEventCopyWithImpl<$Res>
  implements _$ContentChangedCopyWith<$Res> {
  __$ContentChangedCopyWithImpl(_ContentChanged _value, $Res Function(_ContentChanged) _then)
    : super(_value, (v) => _then(v as _ContentChanged));
  
  @override
  _ContentChanged get _value => super._value as _ContentChanged;
  
  @override
  $Res call({
    Object content = freezed,
  }) {
    return _then(_ContentChanged(
      content == freezed ? _value.content : content as String,
    ));
  }
}

/// @nodoc
class _$_ContentChanged implements _ContentChanged {
  const _$_ContentChanged(this.content) : assert(content != null);

  @override
  final String content;

  @override
  String toString() {
    return 'CommentFormEvent.contentChanged(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _ContentChanged &&
        (identical(other.content, content) ||
          const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(content);

  @override
  _$ContentChangedCopyWith<_ContentChanged> get copyWith =>
    __$ContentChangedCopyWithImpl<_ContentChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Comment> commentOption, UniqueId experienceId),
    @required Result contentChanged(String content),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(contentChanged != null);
    assert(submitted != null);
    return contentChanged(content);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Comment> commentOption, UniqueId experienceId),
    Result contentChanged(String content),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (contentChanged != null) {
      return contentChanged(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result contentChanged(_ContentChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(contentChanged != null);
    assert(submitted != null);
    return contentChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result contentChanged(_ContentChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (contentChanged != null) {
      return contentChanged(this);
    }
    return orElse();
  }
}

abstract class _ContentChanged implements CommentFormEvent {
  const factory _ContentChanged(String content) = _$_ContentChanged;

  String get content;
  _$ContentChangedCopyWith<_ContentChanged> get copyWith;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(_Submitted value, $Res Function(_Submitted) then) =
  __$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res> extends _$CommentFormEventCopyWithImpl<$Res>
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
    return 'CommentFormEvent.submitted()';
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
    @required Result initialized(Option<Comment> commentOption, UniqueId experienceId),
    @required Result contentChanged(String content),
    @required Result submitted(),
  }) {
    assert(initialized != null);
    assert(contentChanged != null);
    assert(submitted != null);
    return submitted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Comment> commentOption, UniqueId experienceId),
    Result contentChanged(String content),
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
    @required Result initialized(_Initialized value),
    @required Result contentChanged(_ContentChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(initialized != null);
    assert(contentChanged != null);
    assert(submitted != null);
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result contentChanged(_ContentChanged value),
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

abstract class _Submitted implements CommentFormEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
class _$CommentFormStateTearOff {
  const _$CommentFormStateTearOff();

// ignore: unused_element
  _CommentFormState call({@required Comment comment,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSubmitting,
    @required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
    return _CommentFormState(
      comment: comment,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CommentFormState = _$CommentFormStateTearOff();

/// @nodoc
mixin _$CommentFormState {
  Comment get comment;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSubmitting;
  Option<Either<Failure, Unit>> get failureOrSuccessOption;

  $CommentFormStateCopyWith<CommentFormState> get copyWith;
}

/// @nodoc
abstract class $CommentFormStateCopyWith<$Res> {
  factory $CommentFormStateCopyWith(CommentFormState value, $Res Function(CommentFormState) then) =
  _$CommentFormStateCopyWithImpl<$Res>;
  
  $Res call({Comment comment,
    bool showErrorMessages,
    bool isEditing,
    bool isSubmitting,
    Option<Either<Failure, Unit>> failureOrSuccessOption});
  
  $CommentCopyWith<$Res> get comment;
}

/// @nodoc
class _$CommentFormStateCopyWithImpl<$Res>
  implements $CommentFormStateCopyWith<$Res> {
  _$CommentFormStateCopyWithImpl(this._value, this._then);
  
  final CommentFormState _value;
  
  // ignore: unused_field
  final $Res Function(CommentFormState) _then;
  
  @override
  $Res call({
    Object comment = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      comment: comment == freezed ? _value.comment : comment as Comment,
      showErrorMessages: showErrorMessages == freezed
        ? _value.showErrorMessages
        : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSubmitting:
      isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
        ? _value.failureOrSuccessOption
        : failureOrSuccessOption as Option<Either<Failure, Unit>>,
    ));
  }

  @override
  $CommentCopyWith<$Res> get comment {
    if (_value.comment == null) {
      return null;
    }
    return $CommentCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value));
    });
  }
}

/// @nodoc
abstract class _$CommentFormStateCopyWith<$Res>
  implements $CommentFormStateCopyWith<$Res> {
  factory _$CommentFormStateCopyWith(_CommentFormState value, $Res Function(_CommentFormState) then) =
  __$CommentFormStateCopyWithImpl<$Res>;
  
  @override
  $Res call({Comment comment,
    bool showErrorMessages,
    bool isEditing,
    bool isSubmitting,
    Option<Either<Failure, Unit>> failureOrSuccessOption});
  
  @override
  $CommentCopyWith<$Res> get comment;
}

/// @nodoc
class __$CommentFormStateCopyWithImpl<$Res> extends _$CommentFormStateCopyWithImpl<$Res>
  implements _$CommentFormStateCopyWith<$Res> {
  __$CommentFormStateCopyWithImpl(_CommentFormState _value, $Res Function(_CommentFormState) _then)
    : super(_value, (v) => _then(v as _CommentFormState));
  
  @override
  _CommentFormState get _value => super._value as _CommentFormState;
  
  @override
  $Res call({
    Object comment = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_CommentFormState(
      comment: comment == freezed ? _value.comment : comment as Comment,
      showErrorMessages: showErrorMessages == freezed
        ? _value.showErrorMessages
        : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSubmitting:
      isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
        ? _value.failureOrSuccessOption
        : failureOrSuccessOption as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_CommentFormState implements _CommentFormState {
  const _$_CommentFormState({@required this.comment,
    @required this.showErrorMessages,
    @required this.isEditing,
    @required this.isSubmitting,
    @required this.failureOrSuccessOption})
    : assert(comment != null),
      assert(showErrorMessages != null),
      assert(isEditing != null),
      assert(isSubmitting != null),
      assert(failureOrSuccessOption != null);
  
  @override
  final Comment comment;
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
    return 'CommentFormState(comment: $comment, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _CommentFormState &&
        (identical(other.comment, comment) ||
          const DeepCollectionEquality()
            .equals(other.comment, comment)) &&
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
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @override
  _$CommentFormStateCopyWith<_CommentFormState> get copyWith =>
    __$CommentFormStateCopyWithImpl<_CommentFormState>(this, _$identity);
}

abstract class _CommentFormState implements CommentFormState {
  const factory _CommentFormState({@required Comment comment,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSubmitting,
    @required Option<Either<Failure, Unit>> failureOrSuccessOption}) =
  _$_CommentFormState;
  
  @override
  Comment get comment;
  
  @override
  bool get showErrorMessages;
  
  @override
  bool get isEditing;
  
  @override
  bool get isSubmitting;
  
  @override
  Option<Either<Failure, Unit>> get failureOrSuccessOption;
  @override
  _$CommentFormStateCopyWith<_CommentFormState> get copyWith;
}
