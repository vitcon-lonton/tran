part of 'auth.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  AuthService authService;

  AuthFacade({required this.authService});

  @override
  Future<Option<User>> getSignedInUser() {
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> register(
      {required Email email, required Password password}) async {
    final emailStr = email.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      final data = RegisterData()
          .copyWith(email: emailStr)
          .copyWith(password: passwordStr);

      final res = await authService.register(data);
      if (res.valid) return right(unit);
      return left(const AuthFailure.invalidEmailAndPasswordCombination());
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> emailAuth(
      {required Email email, required Password password}) async {
    final emailStr = email.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      final data = EmailAuthData()
          .copyWith(email: emailStr)
          .copyWith(password: passwordStr);

      final res = await authService.emailAuth(data);
      if (res.valid) return right(unit);
      return left(const AuthFailure.invalidEmailAndPasswordCombination());
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    throw UnimplementedError();
  }
}
