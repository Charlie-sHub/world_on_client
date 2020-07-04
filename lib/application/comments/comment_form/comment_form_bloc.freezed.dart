// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'comment_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CommentFormEventTearOff {
  const _$CommentFormEventTearOff();

  _Initialize initialize({@required Option<Comment> commentOption, @required int experienceId}) {
    return _Initialize(
      commentOption: commentOption,
      experienceId: experienceId,
    );
  }

  _ContentChange contentChange(String content) {
    return _ContentChange(
      content,
    );
  }

  _Submit submit() {
    return const _Submit();
  }
}

// ignore: unused_element
const $CommentFormEvent = _$CommentFormEventTearOff();

mixin _$CommentFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(Option<Comment> commentOption, int experienceId),
    @required Result contentChange(String content),
    @required Result submit(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Comment> commentOption, int experienceId),
    Result contentChange(String content),
    Result submit(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result contentChange(_ContentChange value),
    @required Result submit(_Submit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result contentChange(_ContentChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  });
}

abstract class $CommentFormEventCopyWith<$Res> {
  factory $CommentFormEventCopyWith(CommentFormEvent value, $Res Function(CommentFormEvent) then) = _$CommentFormEventCopyWithImpl<$Res>;
}

class _$CommentFormEventCopyWithImpl<$Res> implements $CommentFormEventCopyWith<$Res> {
  _$CommentFormEventCopyWithImpl(this._value, this._then);

  final CommentFormEvent _value;
  // ignore: unused_field
  final $Res Function(CommentFormEvent) _then;
}

abstract class _$InitializeCopyWith<$Res> {
  factory _$InitializeCopyWith(_Initialize value, $Res Function(_Initialize) then) =
  __$InitializeCopyWithImpl<$Res>;
  $Res call({Option<Comment> commentOption, int experienceId});
}

class __$InitializeCopyWithImpl<$Res> extends _$CommentFormEventCopyWithImpl<$Res>
  implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(_Initialize _value, $Res Function(_Initialize) _then)
    : super(_value, (v) => _then(v as _Initialize));

  @override
  _Initialize get _value => super._value as _Initialize;

  @override
  $Res call({
    Object commentOption = freezed,
    Object experienceId = freezed,
  }) {
    return _then(_Initialize(
      commentOption: commentOption == freezed
        ? _value.commentOption
        : commentOption as Option<Comment>,
      experienceId:
      experienceId == freezed ? _value.experienceId : experienceId as int,
    ));
  }
}

class _$_Initialize implements _Initialize {
  const _$_Initialize({@required this.commentOption, @required this.experienceId})
      : assert(commentOption != null),
        assert(experienceId != null);

  @override
  final Option<Comment> commentOption;
  @override
  final int experienceId;

  @override
  String toString() {
    return 'CommentFormEvent.initialize(commentOption: $commentOption, experienceId: $experienceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialize &&
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
  _$InitializeCopyWith<_Initialize> get copyWith =>
    __$InitializeCopyWithImpl<_Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(Option<Comment> commentOption, int experienceId),
    @required Result contentChange(String content),
    @required Result submit(),
  }) {
    assert(initialize != null);
    assert(contentChange != null);
    assert(submit != null);
    return initialize(commentOption, experienceId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Comment> commentOption, int experienceId),
    Result contentChange(String content),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(commentOption, experienceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result contentChange(_ContentChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialize != null);
    assert(contentChange != null);
    assert(submit != null);
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result contentChange(_ContentChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements CommentFormEvent {
  const factory _Initialize({@required Option<Comment> commentOption,
    @required int experienceId}) = _$_Initialize;

  Option<Comment> get commentOption;
  int get experienceId;
  _$InitializeCopyWith<_Initialize> get copyWith;
}

abstract class _$ContentChangeCopyWith<$Res> {
  factory _$ContentChangeCopyWith(_ContentChange value, $Res Function(_ContentChange) then) =
  __$ContentChangeCopyWithImpl<$Res>;
  $Res call({String content});
}

class __$ContentChangeCopyWithImpl<$Res> extends _$CommentFormEventCopyWithImpl<$Res>
  implements _$ContentChangeCopyWith<$Res> {
  __$ContentChangeCopyWithImpl(_ContentChange _value, $Res Function(_ContentChange) _then)
    : super(_value, (v) => _then(v as _ContentChange));

  @override
  _ContentChange get _value => super._value as _ContentChange;

  @override
  $Res call({
    Object content = freezed,
  }) {
    return _then(_ContentChange(
      content == freezed ? _value.content : content as String,
    ));
  }
}

class _$_ContentChange implements _ContentChange {
  const _$_ContentChange(this.content) : assert(content != null);

  @override
  final String content;

  @override
  String toString() {
    return 'CommentFormEvent.contentChange(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _ContentChange &&
        (identical(other.content, content) ||
          const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(content);

  @override
  _$ContentChangeCopyWith<_ContentChange> get copyWith =>
    __$ContentChangeCopyWithImpl<_ContentChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(Option<Comment> commentOption, int experienceId),
    @required Result contentChange(String content),
    @required Result submit(),
  }) {
    assert(initialize != null);
    assert(contentChange != null);
    assert(submit != null);
    return contentChange(content);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Comment> commentOption, int experienceId),
    Result contentChange(String content),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (contentChange != null) {
      return contentChange(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result contentChange(_ContentChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialize != null);
    assert(contentChange != null);
    assert(submit != null);
    return contentChange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result contentChange(_ContentChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (contentChange != null) {
      return contentChange(this);
    }
    return orElse();
  }
}

abstract class _ContentChange implements CommentFormEvent {
  const factory _ContentChange(String content) = _$_ContentChange;

  String get content;
  _$ContentChangeCopyWith<_ContentChange> get copyWith;
}

abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
  __$SubmitCopyWithImpl<$Res>;
}

class __$SubmitCopyWithImpl<$Res> extends _$CommentFormEventCopyWithImpl<$Res>
  implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(_Submit _value, $Res Function(_Submit) _then)
    : super(_value, (v) => _then(v as _Submit));

  @override
  _Submit get _value => super._value as _Submit;
}

class _$_Submit implements _Submit {
  const _$_Submit();

  @override
  String toString() {
    return 'CommentFormEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(Option<Comment> commentOption, int experienceId),
    @required Result contentChange(String content),
    @required Result submit(),
  }) {
    assert(initialize != null);
    assert(contentChange != null);
    assert(submit != null);
    return submit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Comment> commentOption, int experienceId),
    Result contentChange(String content),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result contentChange(_ContentChange value),
    @required Result submit(_Submit value),
  }) {
    assert(initialize != null);
    assert(contentChange != null);
    assert(submit != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result contentChange(_ContentChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements CommentFormEvent {
  const factory _Submit() = _$_Submit;
}

class _$CommentFormStateTearOff {
  const _$CommentFormStateTearOff();

  _CommentFormState call(
      {@required Comment comment,
      @required int experienceId,
      @required bool showErrorMessages,
      @required bool isEditing,
      @required bool isSubmitting,
      @required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
    return _CommentFormState(
      comment: comment,
      experienceId: experienceId,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $CommentFormState = _$CommentFormStateTearOff();

mixin _$CommentFormState {
  Comment get comment;
  int get experienceId;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSubmitting;
  Option<Either<Failure, Unit>> get failureOrSuccessOption;

  $CommentFormStateCopyWith<CommentFormState> get copyWith;
}

abstract class $CommentFormStateCopyWith<$Res> {
  factory $CommentFormStateCopyWith(CommentFormState value, $Res Function(CommentFormState) then) =
  _$CommentFormStateCopyWithImpl<$Res>;
  
  $Res call({Comment comment,
    int experienceId,
    bool showErrorMessages,
    bool isEditing,
    bool isSubmitting,
    Option<Either<Failure, Unit>> failureOrSuccessOption});

  $CommentCopyWith<$Res> get comment;
}

class _$CommentFormStateCopyWithImpl<$Res>
  implements $CommentFormStateCopyWith<$Res> {
  _$CommentFormStateCopyWithImpl(this._value, this._then);

  final CommentFormState _value;
  // ignore: unused_field
  final $Res Function(CommentFormState) _then;

  @override
  $Res call({
    Object comment = freezed,
    Object experienceId = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      comment: comment == freezed ? _value.comment : comment as Comment,
      experienceId:
      experienceId == freezed ? _value.experienceId : experienceId as int,
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

abstract class _$CommentFormStateCopyWith<$Res>
  implements $CommentFormStateCopyWith<$Res> {
  factory _$CommentFormStateCopyWith(_CommentFormState value, $Res Function(_CommentFormState) then) =
  __$CommentFormStateCopyWithImpl<$Res>;
  @override
  $Res call({Comment comment,
    int experienceId,
    bool showErrorMessages,
    bool isEditing,
    bool isSubmitting,
    Option<Either<Failure, Unit>> failureOrSuccessOption});

  @override
  $CommentCopyWith<$Res> get comment;
}

class __$CommentFormStateCopyWithImpl<$Res> extends _$CommentFormStateCopyWithImpl<$Res>
  implements _$CommentFormStateCopyWith<$Res> {
  __$CommentFormStateCopyWithImpl(_CommentFormState _value, $Res Function(_CommentFormState) _then)
    : super(_value, (v) => _then(v as _CommentFormState));

  @override
  _CommentFormState get _value => super._value as _CommentFormState;

  @override
  $Res call({
    Object comment = freezed,
    Object experienceId = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_CommentFormState(
      comment: comment == freezed ? _value.comment : comment as Comment,
      experienceId:
      experienceId == freezed ? _value.experienceId : experienceId as int,
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

class _$_CommentFormState implements _CommentFormState {
  const _$_CommentFormState({@required this.comment,
    @required this.experienceId,
    @required this.showErrorMessages,
    @required this.isEditing,
    @required this.isSubmitting,
    @required this.failureOrSuccessOption})
      : assert(comment != null),
        assert(experienceId != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSubmitting != null),
        assert(failureOrSuccessOption != null);

  @override
  final Comment comment;
  @override
  final int experienceId;
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
    return 'CommentFormState(comment: $comment, experienceId: $experienceId, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentFormState &&
          (identical(other.comment, comment) ||
            const DeepCollectionEquality()
              .equals(other.comment, comment)) &&
          (identical(other.experienceId, experienceId) ||
            const DeepCollectionEquality()
              .equals(other.experienceId, experienceId)) &&
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
      const DeepCollectionEquality().hash(experienceId) ^
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
    @required int experienceId,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSubmitting,
    @required Option<Either<Failure, Unit>> failureOrSuccessOption}) =
  _$_CommentFormState;

  @override
  Comment get comment;
  @override
  int get experienceId;
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
