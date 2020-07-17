// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bottom_navigation_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BottomNavigationActorEventTearOff {
  const _$BottomNavigationActorEventTearOff();

// ignore: unused_element
  _ItemTapped itemTapped(int index) {
    return _ItemTapped(
      index,
    );
  }
}

// ignore: unused_element
const $BottomNavigationActorEvent = _$BottomNavigationActorEventTearOff();

mixin _$BottomNavigationActorEvent {
  int get index;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result itemTapped(int index),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result itemTapped(int index),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result itemTapped(_ItemTapped value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result itemTapped(_ItemTapped value),
    @required Result orElse(),
  });

  $BottomNavigationActorEventCopyWith<BottomNavigationActorEvent> get copyWith;
}

abstract class $BottomNavigationActorEventCopyWith<$Res> {
  factory $BottomNavigationActorEventCopyWith(BottomNavigationActorEvent value, $Res Function(BottomNavigationActorEvent) then) = _$BottomNavigationActorEventCopyWithImpl<$Res>;
  $Res call({int index});
}

class _$BottomNavigationActorEventCopyWithImpl<$Res>
  implements $BottomNavigationActorEventCopyWith<$Res> {
  _$BottomNavigationActorEventCopyWithImpl(this._value, this._then);

  final BottomNavigationActorEvent _value;
  // ignore: unused_field
  final $Res Function(BottomNavigationActorEvent) _then;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

abstract class _$ItemTappedCopyWith<$Res>
  implements $BottomNavigationActorEventCopyWith<$Res> {
  factory _$ItemTappedCopyWith(_ItemTapped value, $Res Function(_ItemTapped) then) =
  __$ItemTappedCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

class __$ItemTappedCopyWithImpl<$Res> extends _$BottomNavigationActorEventCopyWithImpl<$Res>
  implements _$ItemTappedCopyWith<$Res> {
  __$ItemTappedCopyWithImpl(_ItemTapped _value, $Res Function(_ItemTapped) _then)
    : super(_value, (v) => _then(v as _ItemTapped));

  @override
  _ItemTapped get _value => super._value as _ItemTapped;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_ItemTapped(
      index == freezed ? _value.index : index as int,
    ));
  }
}

class _$_ItemTapped implements _ItemTapped {
  const _$_ItemTapped(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'BottomNavigationActorEvent.itemTapped(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _ItemTapped &&
        (identical(other.index, index) ||
          const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  _$ItemTappedCopyWith<_ItemTapped> get copyWith =>
    __$ItemTappedCopyWithImpl<_ItemTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result itemTapped(int index),
  }) {
    assert(itemTapped != null);
    return itemTapped(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result itemTapped(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (itemTapped != null) {
      return itemTapped(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result itemTapped(_ItemTapped value),
  }) {
    assert(itemTapped != null);
    return itemTapped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result itemTapped(_ItemTapped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (itemTapped != null) {
      return itemTapped(this);
    }
    return orElse();
  }
}

abstract class _ItemTapped implements BottomNavigationActorEvent {
  const factory _ItemTapped(int index) = _$_ItemTapped;

  @override
  int get index;
  @override
  _$ItemTappedCopyWith<_ItemTapped> get copyWith;
}

class _$BottomNavigationActorStateTearOff {
  const _$BottomNavigationActorStateTearOff();

// ignore: unused_element
  _MainFeedView mainFeedView() {
    return const _MainFeedView();
  }

// ignore: unused_element
  _SearchView searchView() {
    return const _SearchView();
  }

// ignore: unused_element
  _CreateExperienceView createExperienceView() {
    return const _CreateExperienceView();
  }

// ignore: unused_element
  _NavigateExperienceView navigateExperienceView() {
    return const _NavigateExperienceView();
  }

// ignore: unused_element
  _ProfileView profileView() {
    return const _ProfileView();
  }

// ignore: unused_element
  _ErrorView errorView() {
    return const _ErrorView();
  }
}

// ignore: unused_element
const $BottomNavigationActorState = _$BottomNavigationActorStateTearOff();

mixin _$BottomNavigationActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result mainFeedView(),
    @required Result searchView(),
    @required Result createExperienceView(),
    @required Result navigateExperienceView(),
    @required Result profileView(),
    @required Result errorView(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result mainFeedView(),
    Result searchView(),
    Result createExperienceView(),
    Result navigateExperienceView(),
    Result profileView(),
    Result errorView(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result mainFeedView(_MainFeedView value),
    @required Result searchView(_SearchView value),
    @required Result createExperienceView(_CreateExperienceView value),
    @required Result navigateExperienceView(_NavigateExperienceView value),
    @required Result profileView(_ProfileView value),
    @required Result errorView(_ErrorView value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result mainFeedView(_MainFeedView value),
    Result searchView(_SearchView value),
    Result createExperienceView(_CreateExperienceView value),
    Result navigateExperienceView(_NavigateExperienceView value),
    Result profileView(_ProfileView value),
    Result errorView(_ErrorView value),
    @required Result orElse(),
  });
}

abstract class $BottomNavigationActorStateCopyWith<$Res> {
  factory $BottomNavigationActorStateCopyWith(BottomNavigationActorState value,
    $Res Function(BottomNavigationActorState) then) =
  _$BottomNavigationActorStateCopyWithImpl<$Res>;
}

class _$BottomNavigationActorStateCopyWithImpl<$Res>
  implements $BottomNavigationActorStateCopyWith<$Res> {
  _$BottomNavigationActorStateCopyWithImpl(this._value, this._then);

  final BottomNavigationActorState _value;
  // ignore: unused_field
  final $Res Function(BottomNavigationActorState) _then;
}

abstract class _$MainFeedViewCopyWith<$Res> {
  factory _$MainFeedViewCopyWith(_MainFeedView value, $Res Function(_MainFeedView) then) =
  __$MainFeedViewCopyWithImpl<$Res>;
}

class __$MainFeedViewCopyWithImpl<$Res> extends _$BottomNavigationActorStateCopyWithImpl<$Res>
  implements _$MainFeedViewCopyWith<$Res> {
  __$MainFeedViewCopyWithImpl(_MainFeedView _value, $Res Function(_MainFeedView) _then)
    : super(_value, (v) => _then(v as _MainFeedView));

  @override
  _MainFeedView get _value => super._value as _MainFeedView;
}

class _$_MainFeedView implements _MainFeedView {
  const _$_MainFeedView();

  @override
  String toString() {
    return 'BottomNavigationActorState.mainFeedView()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MainFeedView);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result mainFeedView(),
    @required Result searchView(),
    @required Result createExperienceView(),
    @required Result navigateExperienceView(),
    @required Result profileView(),
    @required Result errorView(),
  }) {
    assert(mainFeedView != null);
    assert(searchView != null);
    assert(createExperienceView != null);
    assert(navigateExperienceView != null);
    assert(profileView != null);
    assert(errorView != null);
    return mainFeedView();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result mainFeedView(),
    Result searchView(),
    Result createExperienceView(),
    Result navigateExperienceView(),
    Result profileView(),
    Result errorView(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (mainFeedView != null) {
      return mainFeedView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result mainFeedView(_MainFeedView value),
    @required Result searchView(_SearchView value),
    @required Result createExperienceView(_CreateExperienceView value),
    @required Result navigateExperienceView(_NavigateExperienceView value),
    @required Result profileView(_ProfileView value),
    @required Result errorView(_ErrorView value),
  }) {
    assert(mainFeedView != null);
    assert(searchView != null);
    assert(createExperienceView != null);
    assert(navigateExperienceView != null);
    assert(profileView != null);
    assert(errorView != null);
    return mainFeedView(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result mainFeedView(_MainFeedView value),
    Result searchView(_SearchView value),
    Result createExperienceView(_CreateExperienceView value),
    Result navigateExperienceView(_NavigateExperienceView value),
    Result profileView(_ProfileView value),
    Result errorView(_ErrorView value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (mainFeedView != null) {
      return mainFeedView(this);
    }
    return orElse();
  }
}

abstract class _MainFeedView implements BottomNavigationActorState {
  const factory _MainFeedView() = _$_MainFeedView;
}

abstract class _$SearchViewCopyWith<$Res> {
  factory _$SearchViewCopyWith(_SearchView value, $Res Function(_SearchView) then) =
  __$SearchViewCopyWithImpl<$Res>;
}

class __$SearchViewCopyWithImpl<$Res> extends _$BottomNavigationActorStateCopyWithImpl<$Res>
  implements _$SearchViewCopyWith<$Res> {
  __$SearchViewCopyWithImpl(_SearchView _value, $Res Function(_SearchView) _then)
    : super(_value, (v) => _then(v as _SearchView));

  @override
  _SearchView get _value => super._value as _SearchView;
}

class _$_SearchView implements _SearchView {
  const _$_SearchView();

  @override
  String toString() {
    return 'BottomNavigationActorState.searchView()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchView);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result mainFeedView(),
    @required Result searchView(),
    @required Result createExperienceView(),
    @required Result navigateExperienceView(),
    @required Result profileView(),
    @required Result errorView(),
  }) {
    assert(mainFeedView != null);
    assert(searchView != null);
    assert(createExperienceView != null);
    assert(navigateExperienceView != null);
    assert(profileView != null);
    assert(errorView != null);
    return searchView();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result mainFeedView(),
    Result searchView(),
    Result createExperienceView(),
    Result navigateExperienceView(),
    Result profileView(),
    Result errorView(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchView != null) {
      return searchView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result mainFeedView(_MainFeedView value),
    @required Result searchView(_SearchView value),
    @required Result createExperienceView(_CreateExperienceView value),
    @required Result navigateExperienceView(_NavigateExperienceView value),
    @required Result profileView(_ProfileView value),
    @required Result errorView(_ErrorView value),
  }) {
    assert(mainFeedView != null);
    assert(searchView != null);
    assert(createExperienceView != null);
    assert(navigateExperienceView != null);
    assert(profileView != null);
    assert(errorView != null);
    return searchView(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result mainFeedView(_MainFeedView value),
    Result searchView(_SearchView value),
    Result createExperienceView(_CreateExperienceView value),
    Result navigateExperienceView(_NavigateExperienceView value),
    Result profileView(_ProfileView value),
    Result errorView(_ErrorView value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchView != null) {
      return searchView(this);
    }
    return orElse();
  }
}

abstract class _SearchView implements BottomNavigationActorState {
  const factory _SearchView() = _$_SearchView;
}

abstract class _$CreateExperienceViewCopyWith<$Res> {
  factory _$CreateExperienceViewCopyWith(_CreateExperienceView value,
    $Res Function(_CreateExperienceView) then) =
  __$CreateExperienceViewCopyWithImpl<$Res>;
}

class __$CreateExperienceViewCopyWithImpl<$Res> extends _$BottomNavigationActorStateCopyWithImpl<$Res>
  implements _$CreateExperienceViewCopyWith<$Res> {
  __$CreateExperienceViewCopyWithImpl(_CreateExperienceView _value, $Res Function(_CreateExperienceView) _then)
    : super(_value, (v) => _then(v as _CreateExperienceView));

  @override
  _CreateExperienceView get _value => super._value as _CreateExperienceView;
}

class _$_CreateExperienceView implements _CreateExperienceView {
  const _$_CreateExperienceView();

  @override
  String toString() {
    return 'BottomNavigationActorState.createExperienceView()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreateExperienceView);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result mainFeedView(),
    @required Result searchView(),
    @required Result createExperienceView(),
    @required Result navigateExperienceView(),
    @required Result profileView(),
    @required Result errorView(),
  }) {
    assert(mainFeedView != null);
    assert(searchView != null);
    assert(createExperienceView != null);
    assert(navigateExperienceView != null);
    assert(profileView != null);
    assert(errorView != null);
    return createExperienceView();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result mainFeedView(),
    Result searchView(),
    Result createExperienceView(),
    Result navigateExperienceView(),
    Result profileView(),
    Result errorView(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createExperienceView != null) {
      return createExperienceView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result mainFeedView(_MainFeedView value),
    @required Result searchView(_SearchView value),
    @required Result createExperienceView(_CreateExperienceView value),
    @required Result navigateExperienceView(_NavigateExperienceView value),
    @required Result profileView(_ProfileView value),
    @required Result errorView(_ErrorView value),
  }) {
    assert(mainFeedView != null);
    assert(searchView != null);
    assert(createExperienceView != null);
    assert(navigateExperienceView != null);
    assert(profileView != null);
    assert(errorView != null);
    return createExperienceView(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result mainFeedView(_MainFeedView value),
    Result searchView(_SearchView value),
    Result createExperienceView(_CreateExperienceView value),
    Result navigateExperienceView(_NavigateExperienceView value),
    Result profileView(_ProfileView value),
    Result errorView(_ErrorView value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createExperienceView != null) {
      return createExperienceView(this);
    }
    return orElse();
  }
}

abstract class _CreateExperienceView implements BottomNavigationActorState {
  const factory _CreateExperienceView() = _$_CreateExperienceView;
}

abstract class _$NavigateExperienceViewCopyWith<$Res> {
  factory _$NavigateExperienceViewCopyWith(_NavigateExperienceView value,
    $Res Function(_NavigateExperienceView) then) =
  __$NavigateExperienceViewCopyWithImpl<$Res>;
}

class __$NavigateExperienceViewCopyWithImpl<$Res> extends _$BottomNavigationActorStateCopyWithImpl<$Res>
  implements _$NavigateExperienceViewCopyWith<$Res> {
  __$NavigateExperienceViewCopyWithImpl(_NavigateExperienceView _value,
    $Res Function(_NavigateExperienceView) _then)
    : super(_value, (v) => _then(v as _NavigateExperienceView));

  @override
  _NavigateExperienceView get _value => super._value as _NavigateExperienceView;
}

class _$_NavigateExperienceView implements _NavigateExperienceView {
  const _$_NavigateExperienceView();

  @override
  String toString() {
    return 'BottomNavigationActorState.navigateExperienceView()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NavigateExperienceView);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result mainFeedView(),
    @required Result searchView(),
    @required Result createExperienceView(),
    @required Result navigateExperienceView(),
    @required Result profileView(),
    @required Result errorView(),
  }) {
    assert(mainFeedView != null);
    assert(searchView != null);
    assert(createExperienceView != null);
    assert(navigateExperienceView != null);
    assert(profileView != null);
    assert(errorView != null);
    return navigateExperienceView();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result mainFeedView(),
    Result searchView(),
    Result createExperienceView(),
    Result navigateExperienceView(),
    Result profileView(),
    Result errorView(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (navigateExperienceView != null) {
      return navigateExperienceView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result mainFeedView(_MainFeedView value),
    @required Result searchView(_SearchView value),
    @required Result createExperienceView(_CreateExperienceView value),
    @required Result navigateExperienceView(_NavigateExperienceView value),
    @required Result profileView(_ProfileView value),
    @required Result errorView(_ErrorView value),
  }) {
    assert(mainFeedView != null);
    assert(searchView != null);
    assert(createExperienceView != null);
    assert(navigateExperienceView != null);
    assert(profileView != null);
    assert(errorView != null);
    return navigateExperienceView(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result mainFeedView(_MainFeedView value),
    Result searchView(_SearchView value),
    Result createExperienceView(_CreateExperienceView value),
    Result navigateExperienceView(_NavigateExperienceView value),
    Result profileView(_ProfileView value),
    Result errorView(_ErrorView value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (navigateExperienceView != null) {
      return navigateExperienceView(this);
    }
    return orElse();
  }
}

abstract class _NavigateExperienceView implements BottomNavigationActorState {
  const factory _NavigateExperienceView() = _$_NavigateExperienceView;
}

abstract class _$ProfileViewCopyWith<$Res> {
  factory _$ProfileViewCopyWith(_ProfileView value, $Res Function(_ProfileView) then) =
  __$ProfileViewCopyWithImpl<$Res>;
}

class __$ProfileViewCopyWithImpl<$Res> extends _$BottomNavigationActorStateCopyWithImpl<$Res>
  implements _$ProfileViewCopyWith<$Res> {
  __$ProfileViewCopyWithImpl(_ProfileView _value, $Res Function(_ProfileView) _then)
    : super(_value, (v) => _then(v as _ProfileView));

  @override
  _ProfileView get _value => super._value as _ProfileView;
}

class _$_ProfileView implements _ProfileView {
  const _$_ProfileView();

  @override
  String toString() {
    return 'BottomNavigationActorState.profileView()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ProfileView);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result mainFeedView(),
    @required Result searchView(),
    @required Result createExperienceView(),
    @required Result navigateExperienceView(),
    @required Result profileView(),
    @required Result errorView(),
  }) {
    assert(mainFeedView != null);
    assert(searchView != null);
    assert(createExperienceView != null);
    assert(navigateExperienceView != null);
    assert(profileView != null);
    assert(errorView != null);
    return profileView();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result mainFeedView(),
    Result searchView(),
    Result createExperienceView(),
    Result navigateExperienceView(),
    Result profileView(),
    Result errorView(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (profileView != null) {
      return profileView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result mainFeedView(_MainFeedView value),
    @required Result searchView(_SearchView value),
    @required Result createExperienceView(_CreateExperienceView value),
    @required Result navigateExperienceView(_NavigateExperienceView value),
    @required Result profileView(_ProfileView value),
    @required Result errorView(_ErrorView value),
  }) {
    assert(mainFeedView != null);
    assert(searchView != null);
    assert(createExperienceView != null);
    assert(navigateExperienceView != null);
    assert(profileView != null);
    assert(errorView != null);
    return profileView(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result mainFeedView(_MainFeedView value),
    Result searchView(_SearchView value),
    Result createExperienceView(_CreateExperienceView value),
    Result navigateExperienceView(_NavigateExperienceView value),
    Result profileView(_ProfileView value),
    Result errorView(_ErrorView value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (profileView != null) {
      return profileView(this);
    }
    return orElse();
  }
}

abstract class _ProfileView implements BottomNavigationActorState {
  const factory _ProfileView() = _$_ProfileView;
}

abstract class _$ErrorViewCopyWith<$Res> {
  factory _$ErrorViewCopyWith(_ErrorView value, $Res Function(_ErrorView) then) =
  __$ErrorViewCopyWithImpl<$Res>;
}

class __$ErrorViewCopyWithImpl<$Res> extends _$BottomNavigationActorStateCopyWithImpl<$Res>
  implements _$ErrorViewCopyWith<$Res> {
  __$ErrorViewCopyWithImpl(_ErrorView _value, $Res Function(_ErrorView) _then)
    : super(_value, (v) => _then(v as _ErrorView));

  @override
  _ErrorView get _value => super._value as _ErrorView;
}

class _$_ErrorView implements _ErrorView {
  const _$_ErrorView();

  @override
  String toString() {
    return 'BottomNavigationActorState.errorView()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ErrorView);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result mainFeedView(),
    @required Result searchView(),
    @required Result createExperienceView(),
    @required Result navigateExperienceView(),
    @required Result profileView(),
    @required Result errorView(),
  }) {
    assert(mainFeedView != null);
    assert(searchView != null);
    assert(createExperienceView != null);
    assert(navigateExperienceView != null);
    assert(profileView != null);
    assert(errorView != null);
    return errorView();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result mainFeedView(),
    Result searchView(),
    Result createExperienceView(),
    Result navigateExperienceView(),
    Result profileView(),
    Result errorView(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (errorView != null) {
      return errorView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result mainFeedView(_MainFeedView value),
    @required Result searchView(_SearchView value),
    @required Result createExperienceView(_CreateExperienceView value),
    @required Result navigateExperienceView(_NavigateExperienceView value),
    @required Result profileView(_ProfileView value),
    @required Result errorView(_ErrorView value),
  }) {
    assert(mainFeedView != null);
    assert(searchView != null);
    assert(createExperienceView != null);
    assert(navigateExperienceView != null);
    assert(profileView != null);
    assert(errorView != null);
    return errorView(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result mainFeedView(_MainFeedView value),
    Result searchView(_SearchView value),
    Result createExperienceView(_CreateExperienceView value),
    Result navigateExperienceView(_NavigateExperienceView value),
    Result profileView(_ProfileView value),
    Result errorView(_ErrorView value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (errorView != null) {
      return errorView(this);
    }
    return orElse();
  }
}

abstract class _ErrorView implements BottomNavigationActorState {
  const factory _ErrorView() = _$_ErrorView;
}
