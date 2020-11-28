// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchResultsTearOff {
  const _$SearchResultsTearOff();

// ignore: unused_element
  _SearchResults call(
      {@required Either<Failure, Set<Experience>> experiencesFound,
      @required Either<Failure, Set<User>> usersFoundByName,
      @required Either<Failure, Set<User>> usersFoundByUserName,
      @required Either<Failure, Set<Tag>> tagsFound}) {
    return _SearchResults(
      experiencesFound: experiencesFound,
      usersFoundByName: usersFoundByName,
      usersFoundByUserName: usersFoundByUserName,
      tagsFound: tagsFound,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchResults = _$SearchResultsTearOff();

/// @nodoc
mixin _$SearchResults {
  Either<Failure, Set<Experience>> get experiencesFound;

  Either<Failure, Set<User>> get usersFoundByName;

  Either<Failure, Set<User>> get usersFoundByUserName;

  Either<Failure, Set<Tag>> get tagsFound;

  $SearchResultsCopyWith<SearchResults> get copyWith;
}

/// @nodoc
abstract class $SearchResultsCopyWith<$Res> {
  factory $SearchResultsCopyWith(SearchResults value, $Res Function(SearchResults) then) = _$SearchResultsCopyWithImpl<$Res>;

  $Res call({Either<Failure, Set<Experience>> experiencesFound, Either<Failure, Set<User>> usersFoundByName, Either<Failure, Set<User>> usersFoundByUserName, Either<Failure, Set<Tag>> tagsFound});
}

/// @nodoc
class _$SearchResultsCopyWithImpl<$Res> implements $SearchResultsCopyWith<$Res> {
  _$SearchResultsCopyWithImpl(this._value, this._then);

  final SearchResults _value;

  // ignore: unused_field
  final $Res Function(SearchResults) _then;

  @override
  $Res call({
    Object experiencesFound = freezed,
    Object usersFoundByName = freezed,
    Object usersFoundByUserName = freezed,
    Object tagsFound = freezed,
  }) {
    return _then(_value.copyWith(
      experiencesFound: experiencesFound == freezed ? _value.experiencesFound : experiencesFound as Either<Failure, Set<Experience>>,
      usersFoundByName: usersFoundByName == freezed ? _value.usersFoundByName : usersFoundByName as Either<Failure, Set<User>>,
      usersFoundByUserName: usersFoundByUserName == freezed ? _value.usersFoundByUserName : usersFoundByUserName as Either<Failure, Set<User>>,
      tagsFound: tagsFound == freezed ? _value.tagsFound : tagsFound as Either<Failure, Set<Tag>>,
    ));
  }
}

/// @nodoc
abstract class _$SearchResultsCopyWith<$Res> implements $SearchResultsCopyWith<$Res> {
  factory _$SearchResultsCopyWith(_SearchResults value, $Res Function(_SearchResults) then) = __$SearchResultsCopyWithImpl<$Res>;

  @override
  $Res call({Either<Failure, Set<Experience>> experiencesFound, Either<Failure, Set<User>> usersFoundByName, Either<Failure, Set<User>> usersFoundByUserName, Either<Failure, Set<Tag>> tagsFound});
}

/// @nodoc
class __$SearchResultsCopyWithImpl<$Res> extends _$SearchResultsCopyWithImpl<$Res> implements _$SearchResultsCopyWith<$Res> {
  __$SearchResultsCopyWithImpl(_SearchResults _value, $Res Function(_SearchResults) _then) : super(_value, (v) => _then(v as _SearchResults));

  @override
  _SearchResults get _value => super._value as _SearchResults;

  @override
  $Res call({
    Object experiencesFound = freezed,
    Object usersFoundByName = freezed,
    Object usersFoundByUserName = freezed,
    Object tagsFound = freezed,
  }) {
    return _then(_SearchResults(
      experiencesFound: experiencesFound == freezed ? _value.experiencesFound : experiencesFound as Either<Failure, Set<Experience>>,
      usersFoundByName: usersFoundByName == freezed ? _value.usersFoundByName : usersFoundByName as Either<Failure, Set<User>>,
      usersFoundByUserName: usersFoundByUserName == freezed ? _value.usersFoundByUserName : usersFoundByUserName as Either<Failure, Set<User>>,
      tagsFound: tagsFound == freezed ? _value.tagsFound : tagsFound as Either<Failure, Set<Tag>>,
    ));
  }
}

/// @nodoc
class _$_SearchResults extends _SearchResults with DiagnosticableTreeMixin {
  const _$_SearchResults({@required this.experiencesFound, @required this.usersFoundByName, @required this.usersFoundByUserName, @required this.tagsFound})
      : assert(experiencesFound != null),
        assert(usersFoundByName != null),
        assert(usersFoundByUserName != null),
        assert(tagsFound != null),
        super._();

  @override
  final Either<Failure, Set<Experience>> experiencesFound;
  @override
  final Either<Failure, Set<User>> usersFoundByName;
  @override
  final Either<Failure, Set<User>> usersFoundByUserName;
  @override
  final Either<Failure, Set<Tag>> tagsFound;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchResults(experiencesFound: $experiencesFound, usersFoundByName: $usersFoundByName, usersFoundByUserName: $usersFoundByUserName, tagsFound: $tagsFound)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchResults'))
      ..add(DiagnosticsProperty('experiencesFound', experiencesFound))
      ..add(DiagnosticsProperty('usersFoundByName', usersFoundByName))
      ..add(DiagnosticsProperty('usersFoundByUserName', usersFoundByUserName))
      ..add(DiagnosticsProperty('tagsFound', tagsFound));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchResults &&
            (identical(other.experiencesFound, experiencesFound) || const DeepCollectionEquality().equals(other.experiencesFound, experiencesFound)) &&
            (identical(other.usersFoundByName, usersFoundByName) || const DeepCollectionEquality().equals(other.usersFoundByName, usersFoundByName)) &&
            (identical(other.usersFoundByUserName, usersFoundByUserName) || const DeepCollectionEquality().equals(other.usersFoundByUserName, usersFoundByUserName)) &&
            (identical(other.tagsFound, tagsFound) || const DeepCollectionEquality().equals(other.tagsFound, tagsFound)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(experiencesFound) ^
      const DeepCollectionEquality().hash(usersFoundByName) ^
      const DeepCollectionEquality().hash(usersFoundByUserName) ^
      const DeepCollectionEquality().hash(tagsFound);

  @override
  _$SearchResultsCopyWith<_SearchResults> get copyWith => __$SearchResultsCopyWithImpl<_SearchResults>(this, _$identity);
}

abstract class _SearchResults extends SearchResults {
  const _SearchResults._() : super._();

  const factory _SearchResults(
      {@required Either<Failure, Set<Experience>> experiencesFound,
      @required Either<Failure, Set<User>> usersFoundByName,
      @required Either<Failure, Set<User>> usersFoundByUserName,
      @required Either<Failure, Set<Tag>> tagsFound}) = _$_SearchResults;

  @override
  Either<Failure, Set<Experience>> get experiencesFound;

  @override
  Either<Failure, Set<User>> get usersFoundByName;

  @override
  Either<Failure, Set<User>> get usersFoundByUserName;

  @override
  Either<Failure, Set<Tag>> get tagsFound;

  @override
  _$SearchResultsCopyWith<_SearchResults> get copyWith;
}
