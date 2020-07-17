part of 'bottom_navigation_actor_bloc.dart';

@freezed
abstract class BottomNavigationActorEvent with _$BottomNavigationActorEvent {
  // TODO: Add events for each possible navigation
  // The way it's currently done makes it impossible to send parameters to the views that require them
  // like going to the profile view to view another User's profile
  // With an event for each possibility the parameters could be given without issue
  // it would also make possible using this navigation bloc for more than just the bottom navigation
  const factory BottomNavigationActorEvent.itemTapped(int index) = _ItemTapped;
}
