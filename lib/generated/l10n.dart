// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Cancelled`
  String get cancelledByUser {
    return Intl.message(
      'Cancelled',
      name: 'cancelledByUser',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Credentials`
  String get invalidCredentials {
    return Intl.message(
      'Invalid Credentials',
      name: 'invalidCredentials',
      desc: '',
      args: [],
    );
  }

  /// `Please register first`
  String get unregisteredUser {
    return Intl.message(
      'Please register first',
      name: 'unregisteredUser',
      desc: '',
      args: [],
    );
  }

  /// `The email is already in use`
  String get emailAlreadyInUse {
    return Intl.message(
      'The email is already in use',
      name: 'emailAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  /// `The username is already in use`
  String get usernameAlreadyInUse {
    return Intl.message(
      'The username is already in use',
      name: 'usernameAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  /// `LOG IN`
  String get logIn {
    return Intl.message(
      'LOG IN',
      name: 'logIn',
      desc: '',
      args: [],
    );
  }

  /// `The password can't be empty`
  String get passwordEmptyString {
    return Intl.message(
      'The password can\'t be empty',
      name: 'passwordEmptyString',
      desc: '',
      args: [],
    );
  }

  /// `The password can't be more than one line`
  String get passwordMultiLineString {
    return Intl.message(
      'The password can\'t be more than one line',
      name: 'passwordMultiLineString',
      desc: '',
      args: [],
    );
  }

  /// `The password is too long`
  String get passwordStringExceedsLength {
    return Intl.message(
      'The password is too long',
      name: 'passwordStringExceedsLength',
      desc: '',
      args: [],
    );
  }

  /// `The password is invalid`
  String get invalidPassword {
    return Intl.message(
      'The password is invalid',
      name: 'invalidPassword',
      desc: '',
      args: [],
    );
  }

  /// `The email is not valid`
  String get invalidEmail {
    return Intl.message(
      'The email is not valid',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Log In with Google`
  String get logInGoogle {
    return Intl.message(
      'Log In with Google',
      name: 'logInGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Having trouble logging in? tap here`
  String get logInTrouble {
    return Intl.message(
      'Having trouble logging in? tap here',
      name: 'logInTrouble',
      desc: '',
      args: [],
    );
  }

  /// `REGISTER`
  String get register {
    return Intl.message(
      'REGISTER',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Select your birthday`
  String get selectBirthday {
    return Intl.message(
      'Select your birthday',
      name: 'selectBirthday',
      desc: '',
      args: [],
    );
  }

  /// `The description can't be empty`
  String get descriptionEmptyString {
    return Intl.message(
      'The description can\'t be empty',
      name: 'descriptionEmptyString',
      desc: '',
      args: [],
    );
  }

  /// `The description is too long`
  String get descriptionStringExceedsLength {
    return Intl.message(
      'The description is too long',
      name: 'descriptionStringExceedsLength',
      desc: '',
      args: [],
    );
  }

  /// `The description has invalid characters`
  String get descriptionStringWithInvalidCharacters {
    return Intl.message(
      'The description has invalid characters',
      name: 'descriptionStringWithInvalidCharacters',
      desc: '',
      args: [],
    );
  }

  /// `Tell us about you!`
  String get registerDescriptionLabelText {
    return Intl.message(
      'Tell us about you!',
      name: 'registerDescriptionLabelText',
      desc: '',
      args: [],
    );
  }

  /// `Do you agree with our terms and services?`
  String get eulaCheckBoxTitle {
    return Intl.message(
      'Do you agree with our terms and services?',
      name: 'eulaCheckBoxTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please check the EULA`
  String get unCheckedEulaMessage {
    return Intl.message(
      'Please check the EULA',
      name: 'unCheckedEulaMessage',
      desc: '',
      args: [],
    );
  }

  /// `The name can't be empty`
  String get nameEmptyString {
    return Intl.message(
      'The name can\'t be empty',
      name: 'nameEmptyString',
      desc: '',
      args: [],
    );
  }

  /// `The name can't be more than one line`
  String get nameMultiLineString {
    return Intl.message(
      'The name can\'t be more than one line',
      name: 'nameMultiLineString',
      desc: '',
      args: [],
    );
  }

  /// `The name is too long`
  String get nameStringExceedsLength {
    return Intl.message(
      'The name is too long',
      name: 'nameStringExceedsLength',
      desc: '',
      args: [],
    );
  }

  /// `The name has invalid characters`
  String get nameStringWithInvalidCharacters {
    return Intl.message(
      'The name has invalid characters',
      name: 'nameStringWithInvalidCharacters',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `The passwords are different`
  String get passwordStringMismatch {
    return Intl.message(
      'The passwords are different',
      name: 'passwordStringMismatch',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm the password`
  String get passwordConfirmationEmptyString {
    return Intl.message(
      'Please confirm the password',
      name: 'passwordConfirmationEmptyString',
      desc: '',
      args: [],
    );
  }

  /// `Password Confirmation`
  String get passwordConfirmationLabelText {
    return Intl.message(
      'Password Confirmation',
      name: 'passwordConfirmationLabelText',
      desc: '',
      args: [],
    );
  }

  /// `START NOW`
  String get submitRegister {
    return Intl.message(
      'START NOW',
      name: 'submitRegister',
      desc: '',
      args: [],
    );
  }

  /// `Please select a picture`
  String get pictureSelectionMessage {
    return Intl.message(
      'Please select a picture',
      name: 'pictureSelectionMessage',
      desc: '',
      args: [],
    );
  }

  /// `The username can't be empty`
  String get usernameEmptyString {
    return Intl.message(
      'The username can\'t be empty',
      name: 'usernameEmptyString',
      desc: '',
      args: [],
    );
  }

  /// `The username can't be more than one line`
  String get usernameMultiLineString {
    return Intl.message(
      'The username can\'t be more than one line',
      name: 'usernameMultiLineString',
      desc: '',
      args: [],
    );
  }

  /// `The username is too long`
  String get usernameStringExceedsLength {
    return Intl.message(
      'The username is too long',
      name: 'usernameStringExceedsLength',
      desc: '',
      args: [],
    );
  }

  /// `The username has invalid characters`
  String get usernameStringWithInvalidCharacters {
    return Intl.message(
      'The username has invalid characters',
      name: 'usernameStringWithInvalidCharacters',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get emailAddress {
    return Intl.message(
      'Email Address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Unknown Error`
  String get unknownError {
    return Intl.message(
      'Unknown Error',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }

  /// `You're not authorized to do that`
  String get unauthorizedError {
    return Intl.message(
      'You\'re not authorized to do that',
      name: 'unauthorizedError',
      desc: '',
      args: [],
    );
  }

  /// `Add to Log`
  String get addToLog {
    return Intl.message(
      'Add to Log',
      name: 'addToLog',
      desc: '',
      args: [],
    );
  }

  /// `Difficulty`
  String get difficulty {
    return Intl.message(
      'Difficulty',
      name: 'difficulty',
      desc: '',
      args: [],
    );
  }

  /// `Dismiss from Log`
  String get dismissFromLog {
    return Intl.message(
      'Dismiss from Log',
      name: 'dismissFromLog',
      desc: '',
      args: [],
    );
  }

  /// `Participate`
  String get participate {
    return Intl.message(
      'Participate',
      name: 'participate',
      desc: '',
      args: [],
    );
  }

  /// `This is just a placeholder`
  String get reportMessage {
    return Intl.message(
      'This is just a placeholder',
      name: 'reportMessage',
      desc: '',
      args: [],
    );
  }

  /// `Invalid`
  String get errorCardTitle {
    return Intl.message(
      'Invalid',
      name: 'errorCardTitle',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `There's been a critical failure`
  String get criticalErrorDisplayTitle {
    return Intl.message(
      'There\'s been a critical failure',
      name: 'criticalErrorDisplayTitle',
      desc: '',
      args: [],
    );
  }

  /// `Tap to try again`
  String get criticalErrorDisplayRetry {
    return Intl.message(
      'Tap to try again',
      name: 'criticalErrorDisplayRetry',
      desc: '',
      args: [],
    );
  }

  /// `There's nothing to show`
  String get notFoundError {
    return Intl.message(
      'There\'s nothing to show',
      name: 'notFoundError',
      desc: '',
      args: [],
    );
  }

  /// `Feed`
  String get bottomNavigationBarFeed {
    return Intl.message(
      'Feed',
      name: 'bottomNavigationBarFeed',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get bottomNavigationBarSearch {
    return Intl.message(
      'Search',
      name: 'bottomNavigationBarSearch',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get bottomNavigationBarCreate {
    return Intl.message(
      'Create',
      name: 'bottomNavigationBarCreate',
      desc: '',
      args: [],
    );
  }

  /// `Explore`
  String get bottomNavigationBarExplore {
    return Intl.message(
      'Explore',
      name: 'bottomNavigationBarExplore',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get bottomNavigationBarProfile {
    return Intl.message(
      'Profile',
      name: 'bottomNavigationBarProfile',
      desc: '',
      args: [],
    );
  }

  /// `You can't block yourself`
  String get blockItself {
    return Intl.message(
      'You can\'t block yourself',
      name: 'blockItself',
      desc: '',
      args: [],
    );
  }

  /// `You can't follow yourself`
  String get followItself {
    return Intl.message(
      'You can\'t follow yourself',
      name: 'followItself',
      desc: '',
      args: [],
    );
  }

  /// `Experience`
  String get experience {
    return Intl.message(
      'Experience',
      name: 'experience',
      desc: '',
      args: [],
    );
  }

  /// `Tag`
  String get tag {
    return Intl.message(
      'Tag',
      name: 'tag',
      desc: '',
      args: [],
    );
  }

  /// `Select Tags`
  String get tagAdditionTitle {
    return Intl.message(
      'Select Tags',
      name: 'tagAdditionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Tags Found`
  String get tagAdditionFound {
    return Intl.message(
      'Tags Found',
      name: 'tagAdditionFound',
      desc: '',
      args: [],
    );
  }

  /// `Tags Selected`
  String get tagAdditionSelected {
    return Intl.message(
      'Tags Selected',
      name: 'tagAdditionSelected',
      desc: '',
      args: [],
    );
  }

  /// `You can't add more than`
  String get tagSelectionLimit {
    return Intl.message(
      'You can\'t add more than',
      name: 'tagSelectionLimit',
      desc: '',
      args: [],
    );
  }

  /// `No tags selected`
  String get tagSelectionNone {
    return Intl.message(
      'No tags selected',
      name: 'tagSelectionNone',
      desc: '',
      args: [],
    );
  }

  /// `Create a new Experience!`
  String get experienceCreationTitle {
    return Intl.message(
      'Create a new Experience!',
      name: 'experienceCreationTitle',
      desc: '',
      args: [],
    );
  }

  /// `The title is already in use`
  String get experienceTitleAlreadyInUse {
    return Intl.message(
      'The title is already in use',
      name: 'experienceTitleAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  /// `Unknown core data error`
  String get unknownCoreDataError {
    return Intl.message(
      'Unknown core data error',
      name: 'unknownCoreDataError',
      desc: '',
      args: [],
    );
  }

  /// `Create the Objectives`
  String get objectiveCreationCardTitle {
    return Intl.message(
      'Create the Objectives',
      name: 'objectiveCreationCardTitle',
      desc: '',
      args: [],
    );
  }

  /// `Objective`
  String get objective {
    return Intl.message(
      'Objective',
      name: 'objective',
      desc: '',
      args: [],
    );
  }

  /// `No error`
  String get noError {
    return Intl.message(
      'No error',
      name: 'noError',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Create the Rewards (optional)`
  String get rewardCreationCardTitle {
    return Intl.message(
      'Create the Rewards (optional)',
      name: 'rewardCreationCardTitle',
      desc: '',
      args: [],
    );
  }

  /// `Reward`
  String get reward {
    return Intl.message(
      'Reward',
      name: 'reward',
      desc: '',
      args: [],
    );
  }

  /// `Set the initial difficulty`
  String get setExperienceDifficulty {
    return Intl.message(
      'Set the initial difficulty',
      name: 'setExperienceDifficulty',
      desc: '',
      args: [],
    );
  }

  /// `You have to create at least one objective`
  String get noObjectivesErrorMessage {
    return Intl.message(
      'You have to create at least one objective',
      name: 'noObjectivesErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Set the initial location`
  String get experienceSetInitialLocation {
    return Intl.message(
      'Set the initial location',
      name: 'experienceSetInitialLocation',
      desc: '',
      args: [],
    );
  }

  /// `Please select at least one picture`
  String get experiencePictureSelection {
    return Intl.message(
      'Please select at least one picture',
      name: 'experiencePictureSelection',
      desc: '',
      args: [],
    );
  }

  /// `All Photos`
  String get multiImagePickerAllViewTitle {
    return Intl.message(
      'All Photos',
      name: 'multiImagePickerAllViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `The title can't be empty`
  String get experienceTitleEmptyString {
    return Intl.message(
      'The title can\'t be empty',
      name: 'experienceTitleEmptyString',
      desc: '',
      args: [],
    );
  }

  /// `The title can't be more than one line`
  String get experienceTitleMultiLineString {
    return Intl.message(
      'The title can\'t be more than one line',
      name: 'experienceTitleMultiLineString',
      desc: '',
      args: [],
    );
  }

  /// `The title is too long`
  String get experienceTitleStringExceedsLength {
    return Intl.message(
      'The title is too long',
      name: 'experienceTitleStringExceedsLength',
      desc: '',
      args: [],
    );
  }

  /// `The title has invalid characters`
  String get experienceTitleStringWithInvalidCharacters {
    return Intl.message(
      'The title has invalid characters',
      name: 'experienceTitleStringWithInvalidCharacters',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get experienceTitleLabelText {
    return Intl.message(
      'Title',
      name: 'experienceTitleLabelText',
      desc: '',
      args: [],
    );
  }

  /// `You've gained`
  String get experiencePointsGainedPre {
    return Intl.message(
      'You\'ve gained',
      name: 'experiencePointsGainedPre',
      desc: '',
      args: [],
    );
  }

  /// `experience points! and 1 World On Coin`
  String get experiencePointsGainedPost {
    return Intl.message(
      'experience points! and 1 World On Coin',
      name: 'experiencePointsGainedPost',
      desc: '',
      args: [],
    );
  }

  /// `Finish`
  String get experienceFinishButton {
    return Intl.message(
      'Finish',
      name: 'experienceFinishButton',
      desc: '',
      args: [],
    );
  }

  /// `Experience Finished!`
  String get experienceFinishSuccessTitle {
    return Intl.message(
      'Experience Finished!',
      name: 'experienceFinishSuccessTitle',
      desc: '',
      args: [],
    );
  }

  /// `Rewards`
  String get rewardsGained {
    return Intl.message(
      'Rewards',
      name: 'rewardsGained',
      desc: '',
      args: [],
    );
  }

  /// `Did you like it?`
  String get likeQuestion {
    return Intl.message(
      'Did you like it?',
      name: 'likeQuestion',
      desc: '',
      args: [],
    );
  }

  /// `How difficult was the experience?`
  String get difficultyQuestion {
    return Intl.message(
      'How difficult was the experience?',
      name: 'difficultyQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Submit rating`
  String get submitDifficultyRating {
    return Intl.message(
      'Submit rating',
      name: 'submitDifficultyRating',
      desc: '',
      args: [],
    );
  }

  /// `Invalid difficulty value`
  String get difficultyOutOfBounds {
    return Intl.message(
      'Invalid difficulty value',
      name: 'difficultyOutOfBounds',
      desc: '',
      args: [],
    );
  }

  /// `The comment can't be empty`
  String get commentEmptyString {
    return Intl.message(
      'The comment can\'t be empty',
      name: 'commentEmptyString',
      desc: '',
      args: [],
    );
  }

  /// `The comment is too long`
  String get commentStringExceedsLength {
    return Intl.message(
      'The comment is too long',
      name: 'commentStringExceedsLength',
      desc: '',
      args: [],
    );
  }

  /// `The comment has invalid characters`
  String get commentStringWithInvalidCharacters {
    return Intl.message(
      'The comment has invalid characters',
      name: 'commentStringWithInvalidCharacters',
      desc: '',
      args: [],
    );
  }

  /// `Comment`
  String get comment {
    return Intl.message(
      'Comment',
      name: 'comment',
      desc: '',
      args: [],
    );
  }

  /// `The Comment was posted`
  String get commentPostSuccess {
    return Intl.message(
      'The Comment was posted',
      name: 'commentPostSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Rewards`
  String get experienceInformationRewards {
    return Intl.message(
      'Rewards',
      name: 'experienceInformationRewards',
      desc: '',
      args: [],
    );
  }

  /// `comments`
  String get experienceInformationCommentsNumber {
    return Intl.message(
      'comments',
      name: 'experienceInformationCommentsNumber',
      desc: '',
      args: [],
    );
  }

  /// `Just a placeholder`
  String get placeholder {
    return Intl.message(
      'Just a placeholder',
      name: 'placeholder',
      desc: '',
      args: [],
    );
  }

  /// `Experience Info`
  String get experienceInformationTab {
    return Intl.message(
      'Experience Info',
      name: 'experienceInformationTab',
      desc: '',
      args: [],
    );
  }

  /// `Objectives`
  String get objectivesTab {
    return Intl.message(
      'Objectives',
      name: 'objectivesTab',
      desc: '',
      args: [],
    );
  }

  /// `Map`
  String get mapTab {
    return Intl.message(
      'Map',
      name: 'mapTab',
      desc: '',
      args: [],
    );
  }

  /// `Tap to complete`
  String get mapMarkerSnippet {
    return Intl.message(
      'Tap to complete',
      name: 'mapMarkerSnippet',
      desc: '',
      args: [],
    );
  }

  /// `No Experience chosen`
  String get experienceNavigationNoneChosenTitle {
    return Intl.message(
      'No Experience chosen',
      name: 'experienceNavigationNoneChosenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please select an Experience to start the adventure of your life!`
  String get experienceNavigationNoneChosenDescription {
    return Intl.message(
      'Please select an Experience to start the adventure of your life!',
      name: 'experienceNavigationNoneChosenDescription',
      desc: '',
      args: [],
    );
  }

  /// `Action in progress`
  String get actionInProgress {
    return Intl.message(
      'Action in progress',
      name: 'actionInProgress',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Editing Profile`
  String get editingProfileTitle {
    return Intl.message(
      'Editing Profile',
      name: 'editingProfileTitle',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get profileEditingButton {
    return Intl.message(
      'Edit',
      name: 'profileEditingButton',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submitButton {
    return Intl.message(
      'Submit',
      name: 'submitButton',
      desc: '',
      args: [],
    );
  }

  /// `User`
  String get user {
    return Intl.message(
      'User',
      name: 'user',
      desc: '',
      args: [],
    );
  }

  /// `Invalid`
  String get invalid {
    return Intl.message(
      'Invalid',
      name: 'invalid',
      desc: '',
      args: [],
    );
  }

  /// `Followed`
  String get followedUsersDialer {
    return Intl.message(
      'Followed',
      name: 'followedUsersDialer',
      desc: '',
      args: [],
    );
  }

  /// `Following`
  String get followingUsersDialer {
    return Intl.message(
      'Following',
      name: 'followingUsersDialer',
      desc: '',
      args: [],
    );
  }

  /// `Achievement`
  String get achievement {
    return Intl.message(
      'Achievement',
      name: 'achievement',
      desc: '',
      args: [],
    );
  }

  /// `Experiences`
  String get experiences {
    return Intl.message(
      'Experiences',
      name: 'experiences',
      desc: '',
      args: [],
    );
  }

  /// `Relations`
  String get profileRelationTab {
    return Intl.message(
      'Relations',
      name: 'profileRelationTab',
      desc: '',
      args: [],
    );
  }

  /// `Achievements`
  String get profileAchievementsTab {
    return Intl.message(
      'Achievements',
      name: 'profileAchievementsTab',
      desc: '',
      args: [],
    );
  }

  /// `To Do`
  String get profileLogTab {
    return Intl.message(
      'To Do',
      name: 'profileLogTab',
      desc: '',
      args: [],
    );
  }

  /// `The search term can't be empty`
  String get searchTermEmptyString {
    return Intl.message(
      'The search term can\'t be empty',
      name: 'searchTermEmptyString',
      desc: '',
      args: [],
    );
  }

  /// `Search for something!`
  String get noSearchesMessage {
    return Intl.message(
      'Search for something!',
      name: 'noSearchesMessage',
      desc: '',
      args: [],
    );
  }

  /// `Users`
  String get searchUsers {
    return Intl.message(
      'Users',
      name: 'searchUsers',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Tags`
  String get searchTags {
    return Intl.message(
      'Tags',
      name: 'searchTags',
      desc: '',
      args: [],
    );
  }

  /// `Create a new Tag!`
  String get tagCreationTitle {
    return Intl.message(
      'Create a new Tag!',
      name: 'tagCreationTitle',
      desc: '',
      args: [],
    );
  }

  /// `The tag already exists`
  String get tagCreationNameAlreadyInUse {
    return Intl.message(
      'The tag already exists',
      name: 'tagCreationNameAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  /// `The Tag was created`
  String get tagCreationSuccessMessage {
    return Intl.message(
      'The Tag was created',
      name: 'tagCreationSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `The Tag can't be empty`
  String get tagCreationNameEmptyString {
    return Intl.message(
      'The Tag can\'t be empty',
      name: 'tagCreationNameEmptyString',
      desc: '',
      args: [],
    );
  }

  /// `The Tag can't be more than one line`
  String get tagCreationNameMultiLineString {
    return Intl.message(
      'The Tag can\'t be more than one line',
      name: 'tagCreationNameMultiLineString',
      desc: '',
      args: [],
    );
  }

  /// `The Tag is too long`
  String get tagCreationNameStringExceedsLength {
    return Intl.message(
      'The Tag is too long',
      name: 'tagCreationNameStringExceedsLength',
      desc: '',
      args: [],
    );
  }

  /// `The Tag has invalid characters`
  String get tagCreationNameStringWithInvalidCharacters {
    return Intl.message(
      'The Tag has invalid characters',
      name: 'tagCreationNameStringWithInvalidCharacters',
      desc: '',
      args: [],
    );
  }

  /// `with WORLD ON now in the Play Store`
  String get shareMessage {
    return Intl.message(
      'with WORLD ON now in the Play Store',
      name: 'shareMessage',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get create {
    return Intl.message(
      'Create',
      name: 'create',
      desc: '',
      args: [],
    );
  }

  /// `Done by: `
  String get doneBy {
    return Intl.message(
      'Done by: ',
      name: 'doneBy',
      desc: '',
      args: [],
    );
  }

  /// `Level: `
  String get level {
    return Intl.message(
      'Level: ',
      name: 'level',
      desc: '',
      args: [],
    );
  }

  /// `STORE`
  String get storePageTitle {
    return Intl.message(
      'STORE',
      name: 'storePageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Store`
  String get storeNavigationBarStore {
    return Intl.message(
      'Store',
      name: 'storeNavigationBarStore',
      desc: '',
      args: [],
    );
  }

  /// `My items`
  String get storeNavigationBarMyItems {
    return Intl.message(
      'My items',
      name: 'storeNavigationBarMyItems',
      desc: '',
      args: [],
    );
  }

  /// `Buy`
  String get buyItem {
    return Intl.message(
      'Buy',
      name: 'buyItem',
      desc: '',
      args: [],
    );
  }

  /// `Buy 10 coins`
  String get buy10Coins {
    return Intl.message(
      'Buy 10 coins',
      name: 'buy10Coins',
      desc: '',
      args: [],
    );
  }

  /// `Item`
  String get item {
    return Intl.message(
      'Item',
      name: 'item',
      desc: '',
      args: [],
    );
  }

  /// `Owned`
  String get owned {
    return Intl.message(
      'Owned',
      name: 'owned',
      desc: '',
      args: [],
    );
  }

  /// `You already own this item`
  String get alreadyOwned {
    return Intl.message(
      'You already own this item',
      name: 'alreadyOwned',
      desc: '',
      args: [],
    );
  }

  /// `You don't have enough coins`
  String get notEnoughCoins {
    return Intl.message(
      'You don\'t have enough coins',
      name: 'notEnoughCoins',
      desc: '',
      args: [],
    );
  }

  /// `You have:`
  String get youHave {
    return Intl.message(
      'You have:',
      name: 'youHave',
      desc: '',
      args: [],
    );
  }

  /// ` days of duration`
  String get lasts {
    return Intl.message(
      ' days of duration',
      name: 'lasts',
      desc: '',
      args: [],
    );
  }

  /// `You have leveled up!`
  String get levelUp {
    return Intl.message(
      'You have leveled up!',
      name: 'levelUp',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'es', countryCode: 'ES'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}