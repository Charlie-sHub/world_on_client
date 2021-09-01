// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'comment_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommentFormEventTearOff {
  const _$CommentFormEventTearOff();

  _Initialized initialized(
      {required SimpleUser user,
      required Option<Comment> commentOption,
      required UniqueId experienceId}) {
    return _Initialized(
      user: user,
      commentOption: commentOption,
      experienceId: experienceId,
    );
  }

  _ContentChanged contentChanged(String content) {
    return _ContentChanged(
      content,
    );
  }

  _Submitted submitted(User currentUser) {
    return _Submitted(
      currentUser,
    );
  }
}

/// @nodoc
const $CommentFormEvent = _$CommentFormEventTearOff();

/// @nodoc
mixin _$CommentFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SimpleUser user, Option<Comment> commentOption,
            UniqueId experienceId)
        initialized,
    required TResult Function(String content) contentChanged,
    required TResult Function(User currentUser) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleUser user, Option<Comment> commentOption,
            UniqueId experienceId)?
        initialized,
    TResult Function(String content)? contentChanged,
    TResult Function(User currentUser)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ContentChanged value) contentChanged,
    required TResult Function(_Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ContentChanged value)? contentChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentFormEventCopyWith<$Res> {
  factory $CommentFormEventCopyWith(
          CommentFormEvent value, $Res Function(CommentFormEvent) then) =
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
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call(
      {SimpleUser user, Option<Comment> commentOption, UniqueId experienceId});

  $SimpleUserCopyWith<$Res> get user;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$CommentFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? user = freezed,
    Object? commentOption = freezed,
    Object? experienceId = freezed,
  }) {
    return _then(_Initialized(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as SimpleUser,
      commentOption: commentOption == freezed
          ? _value.commentOption
          : commentOption // ignore: cast_nullable_to_non_nullable
              as Option<Comment>,
      experienceId: experienceId == freezed
          ? _value.experienceId
          : experienceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }

  @override
  $SimpleUserCopyWith<$Res> get user {
    return $SimpleUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(
      {required this.user,
      required this.commentOption,
      required this.experienceId});

  @override
  final SimpleUser user;
  @override
  final Option<Comment> commentOption;
  @override
  final UniqueId experienceId;

  @override
  String toString() {
    return 'CommentFormEvent.initialized(user: $user, commentOption: $commentOption, experienceId: $experienceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
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
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(commentOption) ^
      const DeepCollectionEquality().hash(experienceId);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SimpleUser user, Option<Comment> commentOption,
            UniqueId experienceId)
        initialized,
    required TResult Function(String content) contentChanged,
    required TResult Function(User currentUser) submitted,
  }) {
    return initialized(user, commentOption, experienceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleUser user, Option<Comment> commentOption,
            UniqueId experienceId)?
        initialized,
    TResult Function(String content)? contentChanged,
    TResult Function(User currentUser)? submitted,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(user, commentOption, experienceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ContentChanged value) contentChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ContentChanged value)? contentChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements CommentFormEvent {
  const factory _Initialized(
      {required SimpleUser user,
      required Option<Comment> commentOption,
      required UniqueId experienceId}) = _$_Initialized;

  SimpleUser get user => throw _privateConstructorUsedError;
  Option<Comment> get commentOption => throw _privateConstructorUsedError;
  UniqueId get experienceId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ContentChangedCopyWith<$Res> {
  factory _$ContentChangedCopyWith(
          _ContentChanged value, $Res Function(_ContentChanged) then) =
      __$ContentChangedCopyWithImpl<$Res>;
  $Res call({String content});
}

/// @nodoc
class __$ContentChangedCopyWithImpl<$Res>
    extends _$CommentFormEventCopyWithImpl<$Res>
    implements _$ContentChangedCopyWith<$Res> {
  __$ContentChangedCopyWithImpl(
      _ContentChanged _value, $Res Function(_ContentChanged) _then)
      : super(_value, (v) => _then(v as _ContentChanged));

  @override
  _ContentChanged get _value => super._value as _ContentChanged;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_ContentChanged(
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ContentChanged implements _ContentChanged {
  const _$_ContentChanged(this.content);

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

  @JsonKey(ignore: true)
  @override
  _$ContentChangedCopyWith<_ContentChanged> get copyWith =>
      __$ContentChangedCopyWithImpl<_ContentChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SimpleUser user, Option<Comment> commentOption,
            UniqueId experienceId)
        initialized,
    required TResult Function(String content) contentChanged,
    required TResult Function(User currentUser) submitted,
  }) {
    return contentChanged(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleUser user, Option<Comment> commentOption,
            UniqueId experienceId)?
        initialized,
    TResult Function(String content)? contentChanged,
    TResult Function(User currentUser)? submitted,
    required TResult orElse(),
  }) {
    if (contentChanged != null) {
      return contentChanged(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ContentChanged value) contentChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return contentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ContentChanged value)? contentChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (contentChanged != null) {
      return contentChanged(this);
    }
    return orElse();
  }
}

abstract class _ContentChanged implements CommentFormEvent {
  const factory _ContentChanged(String content) = _$_ContentChanged;

  String get content => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ContentChangedCopyWith<_ContentChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(
          _Submitted value, $Res Function(_Submitted) then) =
      __$SubmittedCopyWithImpl<$Res>;
  $Res call({User currentUser});

  $UserCopyWith<$Res> get currentUser;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res>
    extends _$CommentFormEventCopyWithImpl<$Res>
    implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then)
      : super(_value, (v) => _then(v as _Submitted));

  @override
  _Submitted get _value => super._value as _Submitted;

  @override
  $Res call({
    Object? currentUser = freezed,
  }) {
    return _then(_Submitted(
      currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get currentUser {
    return $UserCopyWith<$Res>(_value.currentUser, (value) {
      return _then(_value.copyWith(currentUser: value));
    });
  }
}

/// @nodoc

class _$_Submitted implements _Submitted {
  const _$_Submitted(this.currentUser);

  @override
  final User currentUser;

  @override
  String toString() {
    return 'CommentFormEvent.submitted(currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Submitted &&
            (identical(other.currentUser, currentUser) ||
                const DeepCollectionEquality()
                    .equals(other.currentUser, currentUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentUser);

  @JsonKey(ignore: true)
  @override
  _$SubmittedCopyWith<_Submitted> get copyWith =>
      __$SubmittedCopyWithImpl<_Submitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SimpleUser user, Option<Comment> commentOption,
            UniqueId experienceId)
        initialized,
    required TResult Function(String content) contentChanged,
    required TResult Function(User currentUser) submitted,
  }) {
    return submitted(currentUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleUser user, Option<Comment> commentOption,
            UniqueId experienceId)?
        initialized,
    TResult Function(String content)? contentChanged,
    TResult Function(User currentUser)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(currentUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ContentChanged value) contentChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ContentChanged value)? contentChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements CommentFormEvent {
  const factory _Submitted(User currentUser) = _$_Submitted;

  User get currentUser => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SubmittedCopyWith<_Submitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommentFormStateTearOff {
  const _$CommentFormStateTearOff();

  _CommentFormState call(
      {required Comment comment,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSubmitting,
      required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
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
const $CommentFormState = _$CommentFormStateTearOff();

/// @nodoc
mixin _$CommentFormState {
  Comment get comment => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentFormStateCopyWith<CommentFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentFormStateCopyWith<$Res> {
  factory $CommentFormStateCopyWith(
          CommentFormState value, $Res Function(CommentFormState) then) =
      _$CommentFormStateCopyWithImpl<$Res>;
  $Res call(
      {Comment comment,
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
    Object? comment = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment,
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
  $CommentCopyWith<$Res> get comment {
    return $CommentCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value));
    });
  }
}

/// @nodoc
abstract class _$CommentFormStateCopyWith<$Res>
    implements $CommentFormStateCopyWith<$Res> {
  factory _$CommentFormStateCopyWith(
          _CommentFormState value, $Res Function(_CommentFormState) then) =
      __$CommentFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Comment comment,
      bool showErrorMessages,
      bool isEditing,
      bool isSubmitting,
      Option<Either<Failure, Unit>> failureOrSuccessOption});

  @override
  $CommentCopyWith<$Res> get comment;
}

/// @nodoc
class __$CommentFormStateCopyWithImpl<$Res>
    extends _$CommentFormStateCopyWithImpl<$Res>
    implements _$CommentFormStateCopyWith<$Res> {
  __$CommentFormStateCopyWithImpl(
      _CommentFormState _value, $Res Function(_CommentFormState) _then)
      : super(_value, (v) => _then(v as _CommentFormState));

  @override
  _CommentFormState get _value => super._value as _CommentFormState;

  @override
  $Res call({
    Object? comment = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_CommentFormState(
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment,
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

class _$_CommentFormState implements _CommentFormState {
  const _$_CommentFormState(
      {required this.comment,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSubmitting,
      required this.failureOrSuccessOption});

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

  @JsonKey(ignore: true)
  @override
  _$CommentFormStateCopyWith<_CommentFormState> get copyWith =>
      __$CommentFormStateCopyWithImpl<_CommentFormState>(this, _$identity);
}

abstract class _CommentFormState implements CommentFormState {
  const factory _CommentFormState(
          {required Comment comment,
          required bool showErrorMessages,
          required bool isEditing,
          required bool isSubmitting,
          required Option<Either<Failure, Unit>> failureOrSuccessOption}) =
      _$_CommentFormState;

  @override
  Comment get comment => throw _privateConstructorUsedError;
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
  _$CommentFormStateCopyWith<_CommentFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
