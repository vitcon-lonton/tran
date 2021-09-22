part of 'auth.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> register(
      {required Email email, required Password password});

  Future<Either<AuthFailure, Unit>> emailAuth(
      {required Email email, required Password password});

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();
}
