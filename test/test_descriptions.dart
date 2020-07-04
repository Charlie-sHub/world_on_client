/// Holds common descriptions for tests
///
/// Feel free to add more or modify existing ones if needed
abstract class TestDescription {
  // Group descriptions
  static const groupOnFailure = "Testing on failure";
  static const groupOnSuccess = "Testing on success";

  // Success descriptions
  static const returnNothing = "Should return unit if everything goes well";
  static const authorization = "Testing that the use case properly authorizes its use";
  static const valid = "Should be valid";

  // Back end failures
  static const nameAlreadyInUse = "Should return NameAlreadyInUse";
  static const emailAlreadyInUse = "Should return EmailAlreadyInUse";
  static const usernameAlreadyInUse = "Should return UsernameAlreadyInUse";
  static const serverError = "Should return ServerError if there's a problem with the server";
  static const cacheError = "Should return CacheError if there's a problem with the cache";
  static const notFoundError = "Should return NotFoundError if the requested item(s) couldn't be found";

  // Validation failures
  static const nullInput = "Should return NullInput";
  static const invalid = "Should be invalid";

  // Domain failures
  static const unAuthorized = "Should return UnAuthorizedError if the User is not authorized for such request";
  static const unknownDomainLayerError = "Should return UnknownDomainLayerError if there's a problem";

  // Miscellaneous
  static const errorString = "Test Error";

  // Bloc testing
  static const shouldEmitInitial = "Should emit the initial state";
  static const verifyCallToUseCase = "Verifies the call to the use case";
  static const shouldEmitSuccess = "Should emit a successful state";
  static const shouldEmitFailure = "Should emit a failed state";
  static const testingInitialization = "Testing initialization";
  static const shouldEmitInitialized = "Should emit an initialized state";
  static const shouldNotEmitInitialized = "Should emit a not Initialized state";
  static const shouldEmitUpdated = "Should emit an updated state";
  static const shouldResetOption = "Should reset failureOrSuccessOption to none";
  static const deleteEventTests = "Delete Event Tests";
}
