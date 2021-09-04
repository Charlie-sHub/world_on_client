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
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
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

  /// `Forgotten password?`
  String get forgottenPassword {
    return Intl.message(
      'Forgotten password?',
      name: 'forgottenPassword',
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

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
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

  /// `Tell us about you! (optional)`
  String get registerDescriptionLabelText {
    return Intl.message(
      'Tell us about you! (optional)',
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

  /// `Dismiss`
  String get dismissFromLog {
    return Intl.message(
      'Dismiss',
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

  /// `People`
  String get bottomNavigationBarProfile {
    return Intl.message(
      'People',
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

  /// `experience points and `
  String get experiencePointsGainedMid {
    return Intl.message(
      'experience points and ',
      name: 'experiencePointsGainedMid',
      desc: '',
      args: [],
    );
  }

  /// `1 World On Coin!`
  String get experiencePointsGainedPost {
    return Intl.message(
      '1 World On Coin!',
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

  /// `Did you like the experience?`
  String get likeQuestion {
    return Intl.message(
      'Did you like the experience?',
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

  /// `Leave a comment`
  String get comment {
    return Intl.message(
      'Leave a comment',
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

  /// `Information`
  String get experienceInformationTab {
    return Intl.message(
      'Information',
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
  String get editButton {
    return Intl.message(
      'Edit',
      name: 'editButton',
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

  /// `Create Objective`
  String get createObjective {
    return Intl.message(
      'Create Objective',
      name: 'createObjective',
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

  /// `Followers`
  String get followersCaps {
    return Intl.message(
      'Followers',
      name: 'followersCaps',
      desc: '',
      args: [],
    );
  }

  /// `followers`
  String get followers {
    return Intl.message(
      'followers',
      name: 'followers',
      desc: '',
      args: [],
    );
  }

  /// `Following`
  String get following {
    return Intl.message(
      'Following',
      name: 'following',
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

  /// `People`
  String get searchUsers {
    return Intl.message(
      'People',
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

  /// `Promos`
  String get storeNavigationBarPromotionPlans {
    return Intl.message(
      'Promos',
      name: 'storeNavigationBarPromotionPlans',
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

  /// `Recommendations`
  String get recommendations {
    return Intl.message(
      'Recommendations',
      name: 'recommendations',
      desc: '',
      args: [],
    );
  }

  /// `You will receive recommendations based on them`
  String get recommendationsBasedOn {
    return Intl.message(
      'You will receive recommendations based on them',
      name: 'recommendationsBasedOn',
      desc: '',
      args: [],
    );
  }

  /// `Select tags you'd be interested in, it's optional but it'll help us recommend experiences to you`
  String get registrationTagCard {
    return Intl.message(
      'Select tags you\'d be interested in, it\'s optional but it\'ll help us recommend experiences to you',
      name: 'registrationTagCard',
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

  /// `Tap to reload`
  String get tapToReload {
    return Intl.message(
      'Tap to reload',
      name: 'tapToReload',
      desc: '',
      args: [],
    );
  }

  /// `You probably still do not follow anyone, look for users you know and follow them or look at the recommendations`
  String get notFoundErrorMainFeed {
    return Intl.message(
      'You probably still do not follow anyone, look for users you know and follow them or look at the recommendations',
      name: 'notFoundErrorMainFeed',
      desc: '',
      args: [],
    );
  }

  /// `Your search has yielded no results`
  String get notFoundErrorSearch {
    return Intl.message(
      'Your search has yielded no results',
      name: 'notFoundErrorSearch',
      desc: '',
      args: [],
    );
  }

  /// `Unfortunately we have nothing to recommend you, look for more tags and like them`
  String get notFoundErrorRecommendations {
    return Intl.message(
      'Unfortunately we have nothing to recommend you, look for more tags and like them',
      name: 'notFoundErrorRecommendations',
      desc: '',
      args: [],
    );
  }

  /// `You have not created any experience, try to create one`
  String get notFoundErrorExperiencesCreated {
    return Intl.message(
      'You have not created any experience, try to create one',
      name: 'notFoundErrorExperiencesCreated',
      desc: '',
      args: [],
    );
  }

  /// `You have not liked any experience`
  String get notFoundErrorExperiencesLiked {
    return Intl.message(
      'You have not liked any experience',
      name: 'notFoundErrorExperiencesLiked',
      desc: '',
      args: [],
    );
  }

  /// `You have not finished any experience, choose an experience that catches your attention and carry it out`
  String get notFoundErrorExperiencesDone {
    return Intl.message(
      'You have not finished any experience, choose an experience that catches your attention and carry it out',
      name: 'notFoundErrorExperiencesDone',
      desc: '',
      args: [],
    );
  }

  /// `You have no experiences to do`
  String get notFoundErrorExperiencesToDo {
    return Intl.message(
      'You have no experiences to do',
      name: 'notFoundErrorExperiencesToDo',
      desc: '',
      args: [],
    );
  }

  /// `You don't follow anyone`
  String get notFoundErrorFollowing {
    return Intl.message(
      'You don\'t follow anyone',
      name: 'notFoundErrorFollowing',
      desc: '',
      args: [],
    );
  }

  /// `Nobody follows you`
  String get notFoundErrorFollowed {
    return Intl.message(
      'Nobody follows you',
      name: 'notFoundErrorFollowed',
      desc: '',
      args: [],
    );
  }

  /// `You have no Achievements`
  String get notFoundErrorAchievements {
    return Intl.message(
      'You have no Achievements',
      name: 'notFoundErrorAchievements',
      desc: '',
      args: [],
    );
  }

  /// `You have no purchased items`
  String get notFoundErrorBoughtItems {
    return Intl.message(
      'You have no purchased items',
      name: 'notFoundErrorBoughtItems',
      desc: '',
      args: [],
    );
  }

  /// `This experience has no comments`
  String get notFoundErrorComments {
    return Intl.message(
      'This experience has no comments',
      name: 'notFoundErrorComments',
      desc: '',
      args: [],
    );
  }

  /// `WELCOME`
  String get welcomeTitle {
    return Intl.message(
      'WELCOME',
      name: 'welcomeTitle',
      desc: '',
      args: [],
    );
  }

  /// `CONTINUE`
  String get continueToMainPage {
    return Intl.message(
      'CONTINUE',
      name: 'continueToMainPage',
      desc: '',
      args: [],
    );
  }

  /// `Hello.\n\nWelcome to World On, here you can create and share experiences, real life activities that you want to share or do the ones you like the most created by others. Create, share, participate and have fun.\n\nLive and play the adventure of your life!`
  String get welcomeMessage {
    return Intl.message(
      'Hello.\n\nWelcome to World On, here you can create and share experiences, real life activities that you want to share or do the ones you like the most created by others. Create, share, participate and have fun.\n\nLive and play the adventure of your life!',
      name: 'welcomeMessage',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get title {
    return Intl.message(
      'Title',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Editing Experience`
  String get experienceEditingTitle {
    return Intl.message(
      'Editing Experience',
      name: 'experienceEditingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Add pictures`
  String get addPictures {
    return Intl.message(
      'Add pictures',
      name: 'addPictures',
      desc: '',
      args: [],
    );
  }

  /// `Edit the Objectives`
  String get editObjectives {
    return Intl.message(
      'Edit the Objectives',
      name: 'editObjectives',
      desc: '',
      args: [],
    );
  }

  /// `Change the Difficulty`
  String get editDifficulty {
    return Intl.message(
      'Change the Difficulty',
      name: 'editDifficulty',
      desc: '',
      args: [],
    );
  }

  /// `Edit the Rewards`
  String get editRewards {
    return Intl.message(
      'Edit the Rewards',
      name: 'editRewards',
      desc: '',
      args: [],
    );
  }

  /// `The max amount of images is: `
  String get surpassedImageLimit {
    return Intl.message(
      'The max amount of images is: ',
      name: 'surpassedImageLimit',
      desc: '',
      args: [],
    );
  }

  /// `There are empty fields`
  String get emptyFields {
    return Intl.message(
      'There are empty fields',
      name: 'emptyFields',
      desc: '',
      args: [],
    );
  }

  /// `Create real life activities that you want to share with the world`
  String get experienceButtonExplanation {
    return Intl.message(
      'Create real life activities that you want to share with the world',
      name: 'experienceButtonExplanation',
      desc: '',
      args: [],
    );
  }

  /// `Created`
  String get created {
    return Intl.message(
      'Created',
      name: 'created',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Liked`
  String get liked {
    return Intl.message(
      'Liked',
      name: 'liked',
      desc: '',
      args: [],
    );
  }

  /// `I like`
  String get iLike {
    return Intl.message(
      'I like',
      name: 'iLike',
      desc: '',
      args: [],
    );
  }

  /// `Objective's location`
  String get objectiveLocalization {
    return Intl.message(
      'Objective\'s location',
      name: 'objectiveLocalization',
      desc: '',
      args: [],
    );
  }

  /// `Promotional Plans`
  String get promotionPlans {
    return Intl.message(
      'Promotional Plans',
      name: 'promotionPlans',
      desc: '',
      args: [],
    );
  }

  /// `No promotional plans could be found`
  String get notFoundErrorPromotionPlans {
    return Intl.message(
      'No promotional plans could be found',
      name: 'notFoundErrorPromotionPlans',
      desc: '',
      args: [],
    );
  }

  /// `Current Plan`
  String get currentPlan {
    return Intl.message(
      'Current Plan',
      name: 'currentPlan',
      desc: '',
      args: [],
    );
  }

  /// `Purchase date`
  String get purchaseDate {
    return Intl.message(
      'Purchase date',
      name: 'purchaseDate',
      desc: '',
      args: [],
    );
  }

  /// `Valid until`
  String get validUntil {
    return Intl.message(
      'Valid until',
      name: 'validUntil',
      desc: '',
      args: [],
    );
  }

  /// `Duration in days`
  String get duration {
    return Intl.message(
      'Duration in days',
      name: 'duration',
      desc: '',
      args: [],
    );
  }

  /// `Valid until`
  String get validUntilIfBoughtToday {
    return Intl.message(
      'Valid until',
      name: 'validUntilIfBoughtToday',
      desc: '',
      args: [],
    );
  }

  /// `Your promotions have been seen:`
  String get yourPromotionsHaveBeenSeen {
    return Intl.message(
      'Your promotions have been seen:',
      name: 'yourPromotionsHaveBeenSeen',
      desc: '',
      args: [],
    );
  }

  /// `times`
  String get times {
    return Intl.message(
      'times',
      name: 'times',
      desc: '',
      args: [],
    );
  }

  /// `You don't have an active promotion plan`
  String get noActivePlan {
    return Intl.message(
      'You don\'t have an active promotion plan',
      name: 'noActivePlan',
      desc: '',
      args: [],
    );
  }

  /// `The store is unavailable to you`
  String get unAvailableStore {
    return Intl.message(
      'The store is unavailable to you',
      name: 'unAvailableStore',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Optional`
  String get optional {
    return Intl.message(
      'Optional',
      name: 'optional',
      desc: '',
      args: [],
    );
  }

  /// `shared`
  String get shared {
    return Intl.message(
      'shared',
      name: 'shared',
      desc: '',
      args: [],
    );
  }

  /// `followed you`
  String get followedYou {
    return Intl.message(
      'followed you',
      name: 'followedYou',
      desc: '',
      args: [],
    );
  }

  /// `unfollowed you`
  String get unfollowedYou {
    return Intl.message(
      'unfollowed you',
      name: 'unfollowedYou',
      desc: '',
      args: [],
    );
  }

  /// `blocked you`
  String get blockedYou {
    return Intl.message(
      'blocked you',
      name: 'blockedYou',
      desc: '',
      args: [],
    );
  }

  /// `unblocked you`
  String get unblockedYou {
    return Intl.message(
      'unblocked you',
      name: 'unblockedYou',
      desc: '',
      args: [],
    );
  }

  /// `Unfollow`
  String get unfollow {
    return Intl.message(
      'Unfollow',
      name: 'unfollow',
      desc: '',
      args: [],
    );
  }

  /// `Follow`
  String get follow {
    return Intl.message(
      'Follow',
      name: 'follow',
      desc: '',
      args: [],
    );
  }

  /// `Discover`
  String get mainFeedTitle {
    return Intl.message(
      'Discover',
      name: 'mainFeedTitle',
      desc: '',
      args: [],
    );
  }

  /// `Explore`
  String get searchTitle {
    return Intl.message(
      'Explore',
      name: 'searchTitle',
      desc: '',
      args: [],
    );
  }

  /// `Adventure`
  String get experienceNavigationTitle {
    return Intl.message(
      'Adventure',
      name: 'experienceNavigationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Player`
  String get profileTitle {
    return Intl.message(
      'Player',
      name: 'profileTitle',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get logOut {
    return Intl.message(
      'Log Out',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get resetPassword {
    return Intl.message(
      'Reset Password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Email Sent`
  String get emailRequestSent {
    return Intl.message(
      'Email Sent',
      name: 'emailRequestSent',
      desc: '',
      args: [],
    );
  }

  /// `For security reasons if you want to change your password we will send you an email with a link to do so`
  String get resetPasswordMessage {
    return Intl.message(
      'For security reasons if you want to change your password we will send you an email with a link to do so',
      name: 'resetPasswordMessage',
      desc: '',
      args: [],
    );
  }

  /// `We have excellent offers for you!`
  String get itemStoreHeaderTitle {
    return Intl.message(
      'We have excellent offers for you!',
      name: 'itemStoreHeaderTitle',
      desc: '',
      args: [],
    );
  }

  /// `Come check them out`
  String get itemStoreHeaderSubTitle {
    return Intl.message(
      'Come check them out',
      name: 'itemStoreHeaderSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `days`
  String get days {
    return Intl.message(
      'days',
      name: 'days',
      desc: '',
      args: [],
    );
  }

  /// `Promote your experiences to reach everyone!`
  String get promotionsHeaderTitle {
    return Intl.message(
      'Promote your experiences to reach everyone!',
      name: 'promotionsHeaderTitle',
      desc: '',
      args: [],
    );
  }

  /// `Currently you don't own any items`
  String get noItemsOwned {
    return Intl.message(
      'Currently you don\'t own any items',
      name: 'noItemsOwned',
      desc: '',
      args: [],
    );
  }

  /// `To do by:`
  String get toDoBy {
    return Intl.message(
      'To do by:',
      name: 'toDoBy',
      desc: '',
      args: [],
    );
  }

  /// `You can't block yourself`
  String get cantBlockSelf {
    return Intl.message(
      'You can\'t block yourself',
      name: 'cantBlockSelf',
      desc: '',
      args: [],
    );
  }

  /// `Check the objectives as you complete them`
  String get objectivesExplanation {
    return Intl.message(
      'Check the objectives as you complete them',
      name: 'objectivesExplanation',
      desc: '',
      args: [],
    );
  }

  /// `New Notification`
  String get newNotification {
    return Intl.message(
      'New Notification',
      name: 'newNotification',
      desc: '',
      args: [],
    );
  }

  /// `New Experience`
  String get newExperience {
    return Intl.message(
      'New Experience',
      name: 'newExperience',
      desc: '',
      args: [],
    );
  }

  /// `Create and share experiences`
  String get createExperienceButtonShowCase {
    return Intl.message(
      'Create and share experiences',
      name: 'createExperienceButtonShowCase',
      desc: '',
      args: [],
    );
  }

  /// `Experiences created by other users`
  String get experienceCardShowCase {
    return Intl.message(
      'Experiences created by other users',
      name: 'experienceCardShowCase',
      desc: '',
      args: [],
    );
  }

  /// `User's level, it goes up with creating and doing experiences`
  String get userLeverShowCase {
    return Intl.message(
      'User\'s level, it goes up with creating and doing experiences',
      name: 'userLeverShowCase',
      desc: '',
      args: [],
    );
  }

  /// `How difficult will the experience be?`
  String get difficultyShowCase {
    return Intl.message(
      'How difficult will the experience be?',
      name: 'difficultyShowCase',
      desc: '',
      args: [],
    );
  }

  /// `What is the initial location of the experience?`
  String get mapShowCase {
    return Intl.message(
      'What is the initial location of the experience?',
      name: 'mapShowCase',
      desc: '',
      args: [],
    );
  }

  /// `Create the objectives of the experience or in other words the steps to follows`
  String get objectivesShowCase {
    return Intl.message(
      'Create the objectives of the experience or in other words the steps to follows',
      name: 'objectivesShowCase',
      desc: '',
      args: [],
    );
  }

  /// `Create or look for tags that describe the experience you have created`
  String get tagCreationShowCase {
    return Intl.message(
      'Create or look for tags that describe the experience you have created',
      name: 'tagCreationShowCase',
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
      Locale.fromSubtags(languageCode: 'en'),
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
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
