/// Holds common descriptions for tests
///
/// Add more if needed
abstract class TestDescription {
  static const groupOnFailure = "Testing on failure";
  static const groupOnSuccess = "Testing on success";
  static const nameAlreadyInUse = "Should return NameAlreadyInUse";
  static const unknownDomainLayerError = "Should return UnknownDomainLayerError if there's a problem";
  static const nullInput = "Should return NullInput";
  static const authorization = "Testing that the use case properly authorizes its use";
  static const returnNothing = "Should return unit if everything goes well";
  static const serverError = "Should return ServerError if there's a problem with the server";
  static const cacheError = "Should return CacheError if there's a problem with the cache";
  static const notFoundError = "Should return NotFoundError if the requested item(s) couldn't be found";
  static const unAuthorized = "Should return UnAuthorizedError if the User is not authorized for such request";
  static const emailAlreadyInUse = "Should return EmailAlreadyInUse";
  static const usernameAlreadyInUse = "Should return UsernameAlreadyInUse";
  static const valid = "Should be valid";
  static const invalid = "Should be invalid";
  static const errorString = "Test Error";
}
