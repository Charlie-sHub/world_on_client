// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'experience_management_application_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ExperienceManagementApplicationFailureTearOff {
  const _$ExperienceManagementApplicationFailureTearOff();

// ignore: unused_element
  SurpassedImageLimit<T> surpassedImageLimit<T>({@required int limit}) {
    return SurpassedImageLimit<T>(
      limit: limit,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ExperienceManagementApplicationFailure = _$ExperienceManagementApplicationFailureTearOff();

/// @nodoc
mixin _$ExperienceManagementApplicationFailure<T> {
  int get limit;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult surpassedImageLimit(int limit),
  });

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult surpassedImageLimit(int limit),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult surpassedImageLimit(SurpassedImageLimit<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult surpassedImageLimit(SurpassedImageLimit<T> value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ExperienceManagementApplicationFailureCopyWith<T, ExperienceManagementApplicationFailure<T>> get copyWith;
}

/// @nodoc
abstract class $ExperienceManagementApplicationFailureCopyWith<T, $Res> {
  factory $ExperienceManagementApplicationFailureCopyWith(ExperienceManagementApplicationFailure<T> value, $Res Function(ExperienceManagementApplicationFailure<T>) then) =
      _$ExperienceManagementApplicationFailureCopyWithImpl<T, $Res>;

  $Res call({int limit});
}

/// @nodoc
class _$ExperienceManagementApplicationFailureCopyWithImpl<T, $Res> implements $ExperienceManagementApplicationFailureCopyWith<T, $Res> {
  _$ExperienceManagementApplicationFailureCopyWithImpl(this._value, this._then);

  final ExperienceManagementApplicationFailure<T> _value;

  // ignore: unused_field
  final $Res Function(ExperienceManagementApplicationFailure<T>) _then;

  @override
  $Res call({
    Object limit = freezed,
  }) {
    return _then(_value.copyWith(
      limit: limit == freezed ? _value.limit : limit as int,
    ));
  }
}

/// @nodoc
abstract class $SurpassedImageLimitCopyWith<T, $Res> implements $ExperienceManagementApplicationFailureCopyWith<T, $Res> {
  factory $SurpassedImageLimitCopyWith(SurpassedImageLimit<T> value, $Res Function(SurpassedImageLimit<T>) then) = _$SurpassedImageLimitCopyWithImpl<T, $Res>;

  @override
  $Res call({int limit});
}

/// @nodoc
class _$SurpassedImageLimitCopyWithImpl<T, $Res> extends _$ExperienceManagementApplicationFailureCopyWithImpl<T, $Res> implements $SurpassedImageLimitCopyWith<T, $Res> {
  _$SurpassedImageLimitCopyWithImpl(SurpassedImageLimit<T> _value, $Res Function(SurpassedImageLimit<T>) _then) : super(_value, (v) => _then(v as SurpassedImageLimit<T>));

  @override
  SurpassedImageLimit<T> get _value => super._value as SurpassedImageLimit<T>;

  @override
  $Res call({
    Object limit = freezed,
  }) {
    return _then(SurpassedImageLimit<T>(
      limit: limit == freezed ? _value.limit : limit as int,
    ));
  }
}

/// @nodoc
class _$SurpassedImageLimit<T> implements SurpassedImageLimit<T> {
  const _$SurpassedImageLimit({@required this.limit}) : assert(limit != null);

  @override
  final int limit;

  @override
  String toString() {
    return 'ExperienceManagementApplicationFailure<$T>.surpassedImageLimit(limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SurpassedImageLimit<T> && (identical(other.limit, limit) || const DeepCollectionEquality().equals(other.limit, limit)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(limit);

  @JsonKey(ignore: true)
  @override
  $SurpassedImageLimitCopyWith<T, SurpassedImageLimit<T>> get copyWith => _$SurpassedImageLimitCopyWithImpl<T, SurpassedImageLimit<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult surpassedImageLimit(int limit),
  }) {
    assert(surpassedImageLimit != null);
    return surpassedImageLimit(limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult surpassedImageLimit(int limit),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (surpassedImageLimit != null) {
      return surpassedImageLimit(limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult surpassedImageLimit(SurpassedImageLimit<T> value),
  }) {
    assert(surpassedImageLimit != null);
    return surpassedImageLimit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult surpassedImageLimit(SurpassedImageLimit<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (surpassedImageLimit != null) {
      return surpassedImageLimit(this);
    }
    return orElse();
  }
}

abstract class SurpassedImageLimit<T> implements ExperienceManagementApplicationFailure<T> {
  const factory SurpassedImageLimit({@required int limit}) = _$SurpassedImageLimit<T>;

  @override
  int get limit;

  @override
  @JsonKey(ignore: true)
  $SurpassedImageLimitCopyWith<T, SurpassedImageLimit<T>> get copyWith;
}
