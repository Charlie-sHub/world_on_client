// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  NullInput<T> nullInput<T>() {
    return NullInput<T>();
  }

  InvalidDate<T> invalidDate<T>({@required DateTime failedValue}) {
    return InvalidDate<T>(
      failedValue: failedValue,
    );
  }

  InvalidEmail<T> invalidEmail<T>({@required String failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  InvalidPassword<T> invalidPassword<T>({@required String failedValue}) {
    return InvalidPassword<T>(
      failedValue: failedValue,
    );
  }

  InvalidName<T> invalidName<T>({@required String failedValue}) {
    return InvalidName<T>(
      failedValue: failedValue,
    );
  }

  StringExceedsLength<T> stringExceedsLength<T>({@required String failedValue}) {
    return StringExceedsLength<T>(
      failedValue: failedValue,
    );
  }

  IntegerOutOfBounds<T> integerOutOfBounds<T>({@required int failedValue}) {
    return IntegerOutOfBounds<T>(
      failedValue: failedValue,
    );
  }

  StringWithInvalidCharacters<T> stringWithInvalidCharacters<T>({@required String failedValue}) {
    return StringWithInvalidCharacters<T>(
      failedValue: failedValue,
    );
  }

  InvalidCoordinates<T> invalidCoordinate<T>({@required double coordinate}) {
    return InvalidCoordinates<T>(
      coordinate: coordinate,
    );
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nullInput(),
    @required Result invalidDate(DateTime failedValue),
    @required Result invalidEmail(String failedValue),
    @required Result invalidPassword(String failedValue),
    @required Result invalidName(String failedValue),
    @required Result stringExceedsLength(String failedValue),
    @required Result integerOutOfBounds(int failedValue),
    @required Result stringWithInvalidCharacters(String failedValue),
    @required Result invalidCoordinate(double coordinate),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nullInput(),
    Result invalidDate(DateTime failedValue),
    Result invalidEmail(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidName(String failedValue),
    Result stringExceedsLength(String failedValue),
    Result integerOutOfBounds(int failedValue),
    Result stringWithInvalidCharacters(String failedValue),
    Result invalidCoordinate(double coordinate),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nullInput(NullInput<T> value),
    @required Result invalidDate(InvalidDate<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidName(InvalidName<T> value),
    @required Result stringExceedsLength(StringExceedsLength<T> value),
    @required Result integerOutOfBounds(IntegerOutOfBounds<T> value),
    @required Result stringWithInvalidCharacters(StringWithInvalidCharacters<T> value),
    @required Result invalidCoordinate(InvalidCoordinates<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nullInput(NullInput<T> value),
    Result invalidDate(InvalidDate<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidName(InvalidName<T> value),
    Result stringExceedsLength(StringExceedsLength<T> value),
    Result integerOutOfBounds(IntegerOutOfBounds<T> value),
    Result stringWithInvalidCharacters(StringWithInvalidCharacters<T> value),
    Result invalidCoordinate(InvalidCoordinates<T> value),
    @required Result orElse(),
  });
}

abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(ValueFailure<T> value, $Res Function(ValueFailure<T>) then) = _$ValueFailureCopyWithImpl<T, $Res>;
}

class _$ValueFailureCopyWithImpl<T, $Res> implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

abstract class $NullInputCopyWith<T, $Res> {
  factory $NullInputCopyWith(NullInput<T> value, $Res Function(NullInput<T>) then) =
  _$NullInputCopyWithImpl<T, $Res>;
}

class _$NullInputCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
  implements $NullInputCopyWith<T, $Res> {
  _$NullInputCopyWithImpl(NullInput<T> _value, $Res Function(NullInput<T>) _then)
    : super(_value, (v) => _then(v as NullInput<T>));

  @override
  NullInput<T> get _value => super._value as NullInput<T>;
}

class _$NullInput<T> with DiagnosticableTreeMixin implements NullInput<T> {
  const _$NullInput();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.nullInput()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ValueFailure<$T>.nullInput'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NullInput<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nullInput(),
    @required Result invalidDate(DateTime failedValue),
    @required Result invalidEmail(String failedValue),
    @required Result invalidPassword(String failedValue),
    @required Result invalidName(String failedValue),
    @required Result stringExceedsLength(String failedValue),
    @required Result integerOutOfBounds(int failedValue),
    @required Result stringWithInvalidCharacters(String failedValue),
    @required Result invalidCoordinate(double coordinate),
  }) {
    assert(nullInput != null);
    assert(invalidDate != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidName != null);
    assert(stringExceedsLength != null);
    assert(integerOutOfBounds != null);
    assert(stringWithInvalidCharacters != null);
    assert(invalidCoordinate != null);
    return nullInput();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nullInput(),
    Result invalidDate(DateTime failedValue),
    Result invalidEmail(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidName(String failedValue),
    Result stringExceedsLength(String failedValue),
    Result integerOutOfBounds(int failedValue),
    Result stringWithInvalidCharacters(String failedValue),
    Result invalidCoordinate(double coordinate),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nullInput != null) {
      return nullInput();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nullInput(NullInput<T> value),
    @required Result invalidDate(InvalidDate<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidName(InvalidName<T> value),
    @required Result stringExceedsLength(StringExceedsLength<T> value),
    @required Result integerOutOfBounds(IntegerOutOfBounds<T> value),
    @required Result stringWithInvalidCharacters(StringWithInvalidCharacters<T> value),
    @required Result invalidCoordinate(InvalidCoordinates<T> value),
  }) {
    assert(nullInput != null);
    assert(invalidDate != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidName != null);
    assert(stringExceedsLength != null);
    assert(integerOutOfBounds != null);
    assert(stringWithInvalidCharacters != null);
    assert(invalidCoordinate != null);
    return nullInput(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nullInput(NullInput<T> value),
    Result invalidDate(InvalidDate<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidName(InvalidName<T> value),
    Result stringExceedsLength(StringExceedsLength<T> value),
    Result integerOutOfBounds(IntegerOutOfBounds<T> value),
    Result stringWithInvalidCharacters(StringWithInvalidCharacters<T> value),
    Result invalidCoordinate(InvalidCoordinates<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nullInput != null) {
      return nullInput(this);
    }
    return orElse();
  }
}

abstract class NullInput<T> implements ValueFailure<T> {
  const factory NullInput() = _$NullInput<T>;
}

abstract class $InvalidDateCopyWith<T, $Res> {
  factory $InvalidDateCopyWith(InvalidDate<T> value, $Res Function(InvalidDate<T>) then) =
  _$InvalidDateCopyWithImpl<T, $Res>;
  $Res call({DateTime failedValue});
}

class _$InvalidDateCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
  implements $InvalidDateCopyWith<T, $Res> {
  _$InvalidDateCopyWithImpl(InvalidDate<T> _value, $Res Function(InvalidDate<T>) _then)
    : super(_value, (v) => _then(v as InvalidDate<T>));

  @override
  InvalidDate<T> get _value => super._value as InvalidDate<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidDate<T>(
      failedValue:
      failedValue == freezed ? _value.failedValue : failedValue as DateTime,
    ));
  }
}

class _$InvalidDate<T> with DiagnosticableTreeMixin implements InvalidDate<T> {
  const _$InvalidDate({@required this.failedValue})
    : assert(failedValue != null);

  @override
  final DateTime failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidDate(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidDate'))..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is InvalidDate<T> &&
        (identical(other.failedValue, failedValue) ||
          const DeepCollectionEquality()
            .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidDateCopyWith<T, InvalidDate<T>> get copyWith =>
    _$InvalidDateCopyWithImpl<T, InvalidDate<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nullInput(),
    @required Result invalidDate(DateTime failedValue),
    @required Result invalidEmail(String failedValue),
    @required Result invalidPassword(String failedValue),
    @required Result invalidName(String failedValue),
    @required Result stringExceedsLength(String failedValue),
    @required Result integerOutOfBounds(int failedValue),
    @required Result stringWithInvalidCharacters(String failedValue),
    @required Result invalidCoordinate(double coordinate),
  }) {
    assert(nullInput != null);
    assert(invalidDate != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidName != null);
    assert(stringExceedsLength != null);
    assert(integerOutOfBounds != null);
    assert(stringWithInvalidCharacters != null);
    assert(invalidCoordinate != null);
    return invalidDate(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nullInput(),
    Result invalidDate(DateTime failedValue),
    Result invalidEmail(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidName(String failedValue),
    Result stringExceedsLength(String failedValue),
    Result integerOutOfBounds(int failedValue),
    Result stringWithInvalidCharacters(String failedValue),
    Result invalidCoordinate(double coordinate),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidDate != null) {
      return invalidDate(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nullInput(NullInput<T> value),
    @required Result invalidDate(InvalidDate<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidName(InvalidName<T> value),
    @required Result stringExceedsLength(StringExceedsLength<T> value),
    @required Result integerOutOfBounds(IntegerOutOfBounds<T> value),
    @required Result stringWithInvalidCharacters(StringWithInvalidCharacters<T> value),
    @required Result invalidCoordinate(InvalidCoordinates<T> value),
  }) {
    assert(nullInput != null);
    assert(invalidDate != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidName != null);
    assert(stringExceedsLength != null);
    assert(integerOutOfBounds != null);
    assert(stringWithInvalidCharacters != null);
    assert(invalidCoordinate != null);
    return invalidDate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nullInput(NullInput<T> value),
    Result invalidDate(InvalidDate<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidName(InvalidName<T> value),
    Result stringExceedsLength(StringExceedsLength<T> value),
    Result integerOutOfBounds(IntegerOutOfBounds<T> value),
    Result stringWithInvalidCharacters(StringWithInvalidCharacters<T> value),
    Result invalidCoordinate(InvalidCoordinates<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidDate != null) {
      return invalidDate(this);
    }
    return orElse();
  }
}

abstract class InvalidDate<T> implements ValueFailure<T> {
  const factory InvalidDate({@required DateTime failedValue}) =
  _$InvalidDate<T>;

  DateTime get failedValue;
  $InvalidDateCopyWith<T, InvalidDate<T>> get copyWith;
}

abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
  _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

class _$InvalidEmailCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
  implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
    : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue:
      failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$InvalidEmail<T>
  with DiagnosticableTreeMixin
  implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.failedValue})
    : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidEmail'))..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is InvalidEmail<T> &&
        (identical(other.failedValue, failedValue) ||
          const DeepCollectionEquality()
            .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
    _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nullInput(),
    @required Result invalidDate(DateTime failedValue),
    @required Result invalidEmail(String failedValue),
    @required Result invalidPassword(String failedValue),
    @required Result invalidName(String failedValue),
    @required Result stringExceedsLength(String failedValue),
    @required Result integerOutOfBounds(int failedValue),
    @required Result stringWithInvalidCharacters(String failedValue),
    @required Result invalidCoordinate(double coordinate),
  }) {
    assert(nullInput != null);
    assert(invalidDate != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidName != null);
    assert(stringExceedsLength != null);
    assert(integerOutOfBounds != null);
    assert(stringWithInvalidCharacters != null);
    assert(invalidCoordinate != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nullInput(),
    Result invalidDate(DateTime failedValue),
    Result invalidEmail(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidName(String failedValue),
    Result stringExceedsLength(String failedValue),
    Result integerOutOfBounds(int failedValue),
    Result stringWithInvalidCharacters(String failedValue),
    Result invalidCoordinate(double coordinate),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nullInput(NullInput<T> value),
    @required Result invalidDate(InvalidDate<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidName(InvalidName<T> value),
    @required Result stringExceedsLength(StringExceedsLength<T> value),
    @required Result integerOutOfBounds(IntegerOutOfBounds<T> value),
    @required Result stringWithInvalidCharacters(StringWithInvalidCharacters<T> value),
    @required Result invalidCoordinate(InvalidCoordinates<T> value),
  }) {
    assert(nullInput != null);
    assert(invalidDate != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidName != null);
    assert(stringExceedsLength != null);
    assert(integerOutOfBounds != null);
    assert(stringWithInvalidCharacters != null);
    assert(invalidCoordinate != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nullInput(NullInput<T> value),
    Result invalidDate(InvalidDate<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidName(InvalidName<T> value),
    Result stringExceedsLength(StringExceedsLength<T> value),
    Result integerOutOfBounds(IntegerOutOfBounds<T> value),
    Result stringWithInvalidCharacters(StringWithInvalidCharacters<T> value),
    Result invalidCoordinate(InvalidCoordinates<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({@required String failedValue}) =
  _$InvalidEmail<T>;

  String get failedValue;
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

abstract class $InvalidPasswordCopyWith<T, $Res> {
  factory $InvalidPasswordCopyWith(InvalidPassword<T> value, $Res Function(InvalidPassword<T>) then) =
  _$InvalidPasswordCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

class _$InvalidPasswordCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
  implements $InvalidPasswordCopyWith<T, $Res> {
  _$InvalidPasswordCopyWithImpl(InvalidPassword<T> _value, $Res Function(InvalidPassword<T>) _then)
    : super(_value, (v) => _then(v as InvalidPassword<T>));

  @override
  InvalidPassword<T> get _value => super._value as InvalidPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidPassword<T>(
      failedValue:
      failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$InvalidPassword<T>
  with DiagnosticableTreeMixin
  implements InvalidPassword<T> {
  const _$InvalidPassword({@required this.failedValue})
    : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidPassword(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidPassword'))..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is InvalidPassword<T> &&
        (identical(other.failedValue, failedValue) ||
          const DeepCollectionEquality()
            .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith =>
    _$InvalidPasswordCopyWithImpl<T, InvalidPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nullInput(),
    @required Result invalidDate(DateTime failedValue),
    @required Result invalidEmail(String failedValue),
    @required Result invalidPassword(String failedValue),
    @required Result invalidName(String failedValue),
    @required Result stringExceedsLength(String failedValue),
    @required Result integerOutOfBounds(int failedValue),
    @required Result stringWithInvalidCharacters(String failedValue),
    @required Result invalidCoordinate(double coordinate),
  }) {
    assert(nullInput != null);
    assert(invalidDate != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidName != null);
    assert(stringExceedsLength != null);
    assert(integerOutOfBounds != null);
    assert(stringWithInvalidCharacters != null);
    assert(invalidCoordinate != null);
    return invalidPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nullInput(),
    Result invalidDate(DateTime failedValue),
    Result invalidEmail(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidName(String failedValue),
    Result stringExceedsLength(String failedValue),
    Result integerOutOfBounds(int failedValue),
    Result stringWithInvalidCharacters(String failedValue),
    Result invalidCoordinate(double coordinate),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nullInput(NullInput<T> value),
    @required Result invalidDate(InvalidDate<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidName(InvalidName<T> value),
    @required Result stringExceedsLength(StringExceedsLength<T> value),
    @required Result integerOutOfBounds(IntegerOutOfBounds<T> value),
    @required Result stringWithInvalidCharacters(StringWithInvalidCharacters<T> value),
    @required Result invalidCoordinate(InvalidCoordinates<T> value),
  }) {
    assert(nullInput != null);
    assert(invalidDate != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidName != null);
    assert(stringExceedsLength != null);
    assert(integerOutOfBounds != null);
    assert(stringWithInvalidCharacters != null);
    assert(invalidCoordinate != null);
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nullInput(NullInput<T> value),
    Result invalidDate(InvalidDate<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidName(InvalidName<T> value),
    Result stringExceedsLength(StringExceedsLength<T> value),
    Result integerOutOfBounds(IntegerOutOfBounds<T> value),
    Result stringWithInvalidCharacters(StringWithInvalidCharacters<T> value),
    Result invalidCoordinate(InvalidCoordinates<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassword<T> implements ValueFailure<T> {
  const factory InvalidPassword({@required String failedValue}) =
  _$InvalidPassword<T>;

  String get failedValue;
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith;
}

abstract class $InvalidNameCopyWith<T, $Res> {
  factory $InvalidNameCopyWith(InvalidName<T> value, $Res Function(InvalidName<T>) then) =
  _$InvalidNameCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

class _$InvalidNameCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
  implements $InvalidNameCopyWith<T, $Res> {
  _$InvalidNameCopyWithImpl(InvalidName<T> _value, $Res Function(InvalidName<T>) _then)
    : super(_value, (v) => _then(v as InvalidName<T>));

  @override
  InvalidName<T> get _value => super._value as InvalidName<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidName<T>(
      failedValue:
      failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$InvalidName<T> with DiagnosticableTreeMixin implements InvalidName<T> {
  const _$InvalidName({@required this.failedValue})
    : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidName(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidName'))..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is InvalidName<T> &&
        (identical(other.failedValue, failedValue) ||
          const DeepCollectionEquality()
            .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidNameCopyWith<T, InvalidName<T>> get copyWith =>
    _$InvalidNameCopyWithImpl<T, InvalidName<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nullInput(),
    @required Result invalidDate(DateTime failedValue),
    @required Result invalidEmail(String failedValue),
    @required Result invalidPassword(String failedValue),
    @required Result invalidName(String failedValue),
    @required Result stringExceedsLength(String failedValue),
    @required Result integerOutOfBounds(int failedValue),
    @required Result stringWithInvalidCharacters(String failedValue),
    @required Result invalidCoordinate(double coordinate),
  }) {
    assert(nullInput != null);
    assert(invalidDate != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidName != null);
    assert(stringExceedsLength != null);
    assert(integerOutOfBounds != null);
    assert(stringWithInvalidCharacters != null);
    assert(invalidCoordinate != null);
    return invalidName(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nullInput(),
    Result invalidDate(DateTime failedValue),
    Result invalidEmail(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidName(String failedValue),
    Result stringExceedsLength(String failedValue),
    Result integerOutOfBounds(int failedValue),
    Result stringWithInvalidCharacters(String failedValue),
    Result invalidCoordinate(double coordinate),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidName != null) {
      return invalidName(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nullInput(NullInput<T> value),
    @required Result invalidDate(InvalidDate<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidName(InvalidName<T> value),
    @required Result stringExceedsLength(StringExceedsLength<T> value),
    @required Result integerOutOfBounds(IntegerOutOfBounds<T> value),
    @required Result stringWithInvalidCharacters(StringWithInvalidCharacters<T> value),
    @required Result invalidCoordinate(InvalidCoordinates<T> value),
  }) {
    assert(nullInput != null);
    assert(invalidDate != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidName != null);
    assert(stringExceedsLength != null);
    assert(integerOutOfBounds != null);
    assert(stringWithInvalidCharacters != null);
    assert(invalidCoordinate != null);
    return invalidName(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nullInput(NullInput<T> value),
    Result invalidDate(InvalidDate<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidName(InvalidName<T> value),
    Result stringExceedsLength(StringExceedsLength<T> value),
    Result integerOutOfBounds(IntegerOutOfBounds<T> value),
    Result stringWithInvalidCharacters(StringWithInvalidCharacters<T> value),
    Result invalidCoordinate(InvalidCoordinates<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidName != null) {
      return invalidName(this);
    }
    return orElse();
  }
}

abstract class InvalidName<T> implements ValueFailure<T> {
  const factory InvalidName({@required String failedValue}) = _$InvalidName<T>;

  String get failedValue;
  $InvalidNameCopyWith<T, InvalidName<T>> get copyWith;
}

abstract class $StringExceedsLengthCopyWith<T, $Res> {
  factory $StringExceedsLengthCopyWith(StringExceedsLength<T> value,
    $Res Function(StringExceedsLength<T>) then) =
  _$StringExceedsLengthCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

class _$StringExceedsLengthCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
  implements $StringExceedsLengthCopyWith<T, $Res> {
  _$StringExceedsLengthCopyWithImpl(StringExceedsLength<T> _value,
    $Res Function(StringExceedsLength<T>) _then)
    : super(_value, (v) => _then(v as StringExceedsLength<T>));

  @override
  StringExceedsLength<T> get _value => super._value as StringExceedsLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(StringExceedsLength<T>(
      failedValue:
      failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$StringExceedsLength<T>
  with DiagnosticableTreeMixin
  implements StringExceedsLength<T> {
  const _$StringExceedsLength({@required this.failedValue})
    : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.stringExceedsLength(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ValueFailure<$T>.stringExceedsLength'))..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is StringExceedsLength<T> &&
        (identical(other.failedValue, failedValue) ||
          const DeepCollectionEquality()
            .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $StringExceedsLengthCopyWith<T, StringExceedsLength<T>> get copyWith =>
    _$StringExceedsLengthCopyWithImpl<T, StringExceedsLength<T>>(
      this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nullInput(),
    @required Result invalidDate(DateTime failedValue),
    @required Result invalidEmail(String failedValue),
    @required Result invalidPassword(String failedValue),
    @required Result invalidName(String failedValue),
    @required Result stringExceedsLength(String failedValue),
    @required Result integerOutOfBounds(int failedValue),
    @required Result stringWithInvalidCharacters(String failedValue),
    @required Result invalidCoordinate(double coordinate),
  }) {
    assert(nullInput != null);
    assert(invalidDate != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidName != null);
    assert(stringExceedsLength != null);
    assert(integerOutOfBounds != null);
    assert(stringWithInvalidCharacters != null);
    assert(invalidCoordinate != null);
    return stringExceedsLength(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nullInput(),
    Result invalidDate(DateTime failedValue),
    Result invalidEmail(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidName(String failedValue),
    Result stringExceedsLength(String failedValue),
    Result integerOutOfBounds(int failedValue),
    Result stringWithInvalidCharacters(String failedValue),
    Result invalidCoordinate(double coordinate),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stringExceedsLength != null) {
      return stringExceedsLength(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nullInput(NullInput<T> value),
    @required Result invalidDate(InvalidDate<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidName(InvalidName<T> value),
    @required Result stringExceedsLength(StringExceedsLength<T> value),
    @required Result integerOutOfBounds(IntegerOutOfBounds<T> value),
    @required Result stringWithInvalidCharacters(StringWithInvalidCharacters<T> value),
    @required Result invalidCoordinate(InvalidCoordinates<T> value),
  }) {
    assert(nullInput != null);
    assert(invalidDate != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidName != null);
    assert(stringExceedsLength != null);
    assert(integerOutOfBounds != null);
    assert(stringWithInvalidCharacters != null);
    assert(invalidCoordinate != null);
    return stringExceedsLength(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nullInput(NullInput<T> value),
    Result invalidDate(InvalidDate<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidName(InvalidName<T> value),
    Result stringExceedsLength(StringExceedsLength<T> value),
    Result integerOutOfBounds(IntegerOutOfBounds<T> value),
    Result stringWithInvalidCharacters(StringWithInvalidCharacters<T> value),
    Result invalidCoordinate(InvalidCoordinates<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stringExceedsLength != null) {
      return stringExceedsLength(this);
    }
    return orElse();
  }
}

abstract class StringExceedsLength<T> implements ValueFailure<T> {
  const factory StringExceedsLength({@required String failedValue}) =
  _$StringExceedsLength<T>;

  String get failedValue;
  $StringExceedsLengthCopyWith<T, StringExceedsLength<T>> get copyWith;
}

abstract class $IntegerOutOfBoundsCopyWith<T, $Res> {
  factory $IntegerOutOfBoundsCopyWith(IntegerOutOfBounds<T> value,
    $Res Function(IntegerOutOfBounds<T>) then) =
  _$IntegerOutOfBoundsCopyWithImpl<T, $Res>;
  $Res call({int failedValue});
}

class _$IntegerOutOfBoundsCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
  implements $IntegerOutOfBoundsCopyWith<T, $Res> {
  _$IntegerOutOfBoundsCopyWithImpl(IntegerOutOfBounds<T> _value, $Res Function(IntegerOutOfBounds<T>) _then)
    : super(_value, (v) => _then(v as IntegerOutOfBounds<T>));

  @override
  IntegerOutOfBounds<T> get _value => super._value as IntegerOutOfBounds<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(IntegerOutOfBounds<T>(
      failedValue:
      failedValue == freezed ? _value.failedValue : failedValue as int,
    ));
  }
}

class _$IntegerOutOfBounds<T>
  with DiagnosticableTreeMixin
  implements IntegerOutOfBounds<T> {
  const _$IntegerOutOfBounds({@required this.failedValue})
    : assert(failedValue != null);

  @override
  final int failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.integerOutOfBounds(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ValueFailure<$T>.integerOutOfBounds'))..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is IntegerOutOfBounds<T> &&
        (identical(other.failedValue, failedValue) ||
          const DeepCollectionEquality()
            .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $IntegerOutOfBoundsCopyWith<T, IntegerOutOfBounds<T>> get copyWith =>
    _$IntegerOutOfBoundsCopyWithImpl<T, IntegerOutOfBounds<T>>(
      this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nullInput(),
    @required Result invalidDate(DateTime failedValue),
    @required Result invalidEmail(String failedValue),
    @required Result invalidPassword(String failedValue),
    @required Result invalidName(String failedValue),
    @required Result stringExceedsLength(String failedValue),
    @required Result integerOutOfBounds(int failedValue),
    @required Result stringWithInvalidCharacters(String failedValue),
    @required Result invalidCoordinate(double coordinate),
  }) {
    assert(nullInput != null);
    assert(invalidDate != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidName != null);
    assert(stringExceedsLength != null);
    assert(integerOutOfBounds != null);
    assert(stringWithInvalidCharacters != null);
    assert(invalidCoordinate != null);
    return integerOutOfBounds(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nullInput(),
    Result invalidDate(DateTime failedValue),
    Result invalidEmail(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidName(String failedValue),
    Result stringExceedsLength(String failedValue),
    Result integerOutOfBounds(int failedValue),
    Result stringWithInvalidCharacters(String failedValue),
    Result invalidCoordinate(double coordinate),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (integerOutOfBounds != null) {
      return integerOutOfBounds(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nullInput(NullInput<T> value),
    @required Result invalidDate(InvalidDate<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidName(InvalidName<T> value),
    @required Result stringExceedsLength(StringExceedsLength<T> value),
    @required Result integerOutOfBounds(IntegerOutOfBounds<T> value),
    @required Result stringWithInvalidCharacters(StringWithInvalidCharacters<T> value),
    @required Result invalidCoordinate(InvalidCoordinates<T> value),
  }) {
    assert(nullInput != null);
    assert(invalidDate != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidName != null);
    assert(stringExceedsLength != null);
    assert(integerOutOfBounds != null);
    assert(stringWithInvalidCharacters != null);
    assert(invalidCoordinate != null);
    return integerOutOfBounds(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nullInput(NullInput<T> value),
    Result invalidDate(InvalidDate<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidName(InvalidName<T> value),
    Result stringExceedsLength(StringExceedsLength<T> value),
    Result integerOutOfBounds(IntegerOutOfBounds<T> value),
    Result stringWithInvalidCharacters(StringWithInvalidCharacters<T> value),
    Result invalidCoordinate(InvalidCoordinates<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (integerOutOfBounds != null) {
      return integerOutOfBounds(this);
    }
    return orElse();
  }
}

abstract class IntegerOutOfBounds<T> implements ValueFailure<T> {
  const factory IntegerOutOfBounds({@required int failedValue}) =
  _$IntegerOutOfBounds<T>;

  int get failedValue;
  $IntegerOutOfBoundsCopyWith<T, IntegerOutOfBounds<T>> get copyWith;
}

abstract class $StringWithInvalidCharactersCopyWith<T, $Res> {
  factory $StringWithInvalidCharactersCopyWith(StringWithInvalidCharacters<T> value,
    $Res Function(StringWithInvalidCharacters<T>) then) =
  _$StringWithInvalidCharactersCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

class _$StringWithInvalidCharactersCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
  implements $StringWithInvalidCharactersCopyWith<T, $Res> {
  _$StringWithInvalidCharactersCopyWithImpl(StringWithInvalidCharacters<T> _value,
    $Res Function(StringWithInvalidCharacters<T>) _then)
      : super(_value, (v) => _then(v as StringWithInvalidCharacters<T>));

  @override
  StringWithInvalidCharacters<T> get _value =>
    super._value as StringWithInvalidCharacters<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(StringWithInvalidCharacters<T>(
      failedValue:
      failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$StringWithInvalidCharacters<T>
  with DiagnosticableTreeMixin
  implements StringWithInvalidCharacters<T> {
  const _$StringWithInvalidCharacters({@required this.failedValue})
    : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.stringWithInvalidCharacters(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty(
      'type', 'ValueFailure<$T>.stringWithInvalidCharacters'))..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is StringWithInvalidCharacters<T> &&
        (identical(other.failedValue, failedValue) ||
          const DeepCollectionEquality()
            .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $StringWithInvalidCharactersCopyWith<T, StringWithInvalidCharacters<T>>
  get copyWith =>
    _$StringWithInvalidCharactersCopyWithImpl<T,
      StringWithInvalidCharacters<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nullInput(),
    @required Result invalidDate(DateTime failedValue),
    @required Result invalidEmail(String failedValue),
    @required Result invalidPassword(String failedValue),
    @required Result invalidName(String failedValue),
    @required Result stringExceedsLength(String failedValue),
    @required Result integerOutOfBounds(int failedValue),
    @required Result stringWithInvalidCharacters(String failedValue),
    @required Result invalidCoordinate(double coordinate),
  }) {
    assert(nullInput != null);
    assert(invalidDate != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidName != null);
    assert(stringExceedsLength != null);
    assert(integerOutOfBounds != null);
    assert(stringWithInvalidCharacters != null);
    assert(invalidCoordinate != null);
    return stringWithInvalidCharacters(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nullInput(),
    Result invalidDate(DateTime failedValue),
    Result invalidEmail(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidName(String failedValue),
    Result stringExceedsLength(String failedValue),
    Result integerOutOfBounds(int failedValue),
    Result stringWithInvalidCharacters(String failedValue),
    Result invalidCoordinate(double coordinate),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stringWithInvalidCharacters != null) {
      return stringWithInvalidCharacters(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nullInput(NullInput<T> value),
    @required Result invalidDate(InvalidDate<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidName(InvalidName<T> value),
    @required Result stringExceedsLength(StringExceedsLength<T> value),
    @required Result integerOutOfBounds(IntegerOutOfBounds<T> value),
    @required Result stringWithInvalidCharacters(StringWithInvalidCharacters<T> value),
    @required Result invalidCoordinate(InvalidCoordinates<T> value),
  }) {
    assert(nullInput != null);
    assert(invalidDate != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidName != null);
    assert(stringExceedsLength != null);
    assert(integerOutOfBounds != null);
    assert(stringWithInvalidCharacters != null);
    assert(invalidCoordinate != null);
    return stringWithInvalidCharacters(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nullInput(NullInput<T> value),
    Result invalidDate(InvalidDate<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidName(InvalidName<T> value),
    Result stringExceedsLength(StringExceedsLength<T> value),
    Result integerOutOfBounds(IntegerOutOfBounds<T> value),
    Result stringWithInvalidCharacters(StringWithInvalidCharacters<T> value),
    Result invalidCoordinate(InvalidCoordinates<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stringWithInvalidCharacters != null) {
      return stringWithInvalidCharacters(this);
    }
    return orElse();
  }
}

abstract class StringWithInvalidCharacters<T> implements ValueFailure<T> {
  const factory StringWithInvalidCharacters({@required String failedValue}) =
  _$StringWithInvalidCharacters<T>;

  String get failedValue;
  $StringWithInvalidCharactersCopyWith<T, StringWithInvalidCharacters<T>>
  get copyWith;
}

abstract class $InvalidCoordinatesCopyWith<T, $Res> {
  factory $InvalidCoordinatesCopyWith(InvalidCoordinates<T> value,
    $Res Function(InvalidCoordinates<T>) then) =
  _$InvalidCoordinatesCopyWithImpl<T, $Res>;
  
  $Res call({double coordinate});
}

class _$InvalidCoordinatesCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
  implements $InvalidCoordinatesCopyWith<T, $Res> {
  _$InvalidCoordinatesCopyWithImpl(InvalidCoordinates<T> _value, $Res Function(InvalidCoordinates<T>) _then)
    : super(_value, (v) => _then(v as InvalidCoordinates<T>));
  
  @override
  InvalidCoordinates<T> get _value => super._value as InvalidCoordinates<T>;
  
  @override
  $Res call({
    Object coordinate = freezed,
  }) {
    return _then(InvalidCoordinates<T>(
      coordinate:
      coordinate == freezed ? _value.coordinate : coordinate as double,
    ));
  }
}

class _$InvalidCoordinates<T>
  with DiagnosticableTreeMixin
  implements InvalidCoordinates<T> {
  const _$InvalidCoordinates({@required this.coordinate})
    : assert(coordinate != null);
  
  @override
  final double coordinate;
  
  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidCoordinate(coordinate: $coordinate)';
  }
  
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidCoordinate'))..add(DiagnosticsProperty('coordinate', coordinate));
  }
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is InvalidCoordinates<T> &&
        (identical(other.coordinate, coordinate) ||
          const DeepCollectionEquality()
            .equals(other.coordinate, coordinate)));
  }
  
  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(coordinate);
  
  @override
  $InvalidCoordinatesCopyWith<T, InvalidCoordinates<T>> get copyWith =>
    _$InvalidCoordinatesCopyWithImpl<T, InvalidCoordinates<T>>(
      this, _$identity);
  
  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nullInput(),
    @required Result invalidDate(DateTime failedValue),
    @required Result invalidEmail(String failedValue),
    @required Result invalidPassword(String failedValue),
    @required Result invalidName(String failedValue),
    @required Result stringExceedsLength(String failedValue),
    @required Result integerOutOfBounds(int failedValue),
    @required Result stringWithInvalidCharacters(String failedValue),
    @required Result invalidCoordinate(double coordinate),
  }) {
    assert(nullInput != null);
    assert(invalidDate != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidName != null);
    assert(stringExceedsLength != null);
    assert(integerOutOfBounds != null);
    assert(stringWithInvalidCharacters != null);
    assert(invalidCoordinate != null);
    return invalidCoordinate(coordinate);
  }
  
  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nullInput(),
    Result invalidDate(DateTime failedValue),
    Result invalidEmail(String failedValue),
    Result invalidPassword(String failedValue),
    Result invalidName(String failedValue),
    Result stringExceedsLength(String failedValue),
    Result integerOutOfBounds(int failedValue),
    Result stringWithInvalidCharacters(String failedValue),
    Result invalidCoordinate(double coordinate),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidCoordinate != null) {
      return invalidCoordinate(coordinate);
    }
    return orElse();
  }
  
  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nullInput(NullInput<T> value),
    @required Result invalidDate(InvalidDate<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidName(InvalidName<T> value),
    @required Result stringExceedsLength(StringExceedsLength<T> value),
    @required Result integerOutOfBounds(IntegerOutOfBounds<T> value),
    @required Result stringWithInvalidCharacters(StringWithInvalidCharacters<T> value),
    @required Result invalidCoordinate(InvalidCoordinates<T> value),
  }) {
    assert(nullInput != null);
    assert(invalidDate != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidName != null);
    assert(stringExceedsLength != null);
    assert(integerOutOfBounds != null);
    assert(stringWithInvalidCharacters != null);
    assert(invalidCoordinate != null);
    return invalidCoordinate(this);
  }
  
  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nullInput(NullInput<T> value),
    Result invalidDate(InvalidDate<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidName(InvalidName<T> value),
    Result stringExceedsLength(StringExceedsLength<T> value),
    Result integerOutOfBounds(IntegerOutOfBounds<T> value),
    Result stringWithInvalidCharacters(StringWithInvalidCharacters<T> value),
    Result invalidCoordinate(InvalidCoordinates<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidCoordinate != null) {
      return invalidCoordinate(this);
    }
    return orElse();
  }
}

abstract class InvalidCoordinates<T> implements ValueFailure<T> {
  const factory InvalidCoordinates({@required double coordinate}) =
  _$InvalidCoordinates<T>;
  
  double get coordinate;
  
  $InvalidCoordinatesCopyWith<T, InvalidCoordinates<T>> get copyWith;
}
