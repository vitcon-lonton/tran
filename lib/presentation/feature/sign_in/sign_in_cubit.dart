part of 'sign_in.dart';

@freezed
class SignInState with _$SignInState {
  const SignInState._();

  factory SignInState({
    required Email email,
    required Password password,
    @Default(false) bool remember,
    @Default(false) bool displayPassword,
    @Default(AsyncStatus.idle()) AsyncStatus status,
  }) = _SignInState;

  // ValueFailure<String>? get emailError => email?.;

  // ValueFailure<String>? get passwordError => password?.error;

  bool get valid {
    return true;
    // return (emailError != null && passwordError != null);
  }

  bool get showErrorMessages => true;

  factory SignInState.init() {
    return SignInState(email: Email.pure(), password: Password.pure());
  }

  SignInState busy() => copyWith(status: AsyncStatus.busy());
  SignInState idle() => copyWith(status: AsyncStatus.idle());
  SignInState failed() => copyWith(status: AsyncStatus.failed());
  SignInState complete() => copyWith(status: AsyncStatus.complete());
}

@injectable
class SignInCubit extends Cubit<SignInState> {
  // final _loginApple = sl<LoginApple>();
  // final _loginEmail = sl<LoginEmail>();
  // final _loginGoogle = sl<LoginGoogle>();
  // final _loginFacebook = sl<LoginFacebook>();

  final IAuthFacade authFacade;

  SignInCubit(this.authFacade) : super(SignInState.init());

  rememberChanged(bool value) {
    emit(state.copyWith(remember: value));
  }

  emailChanged(String value) {
    emit(state.copyWith(email: Email(value)));
  }

  passwordChanged(String value) {
    emit(state.copyWith(password: Password(value)));
  }

  displayPasswordChanged(bool value) {
    emit(state.copyWith(displayPassword: value));
  }

  emailSubmitted() async {
    emit(state.busy());
    await Future.delayed(Duration(seconds: 1));
    emit(state.complete());
    // if (state.valid) {
    //   emit(state.busy());
    //   emit(state.complete());

    //   // emit((await _loginEmail(_emailParams)).fold((credential) {
    //   //   return state.complete();
    //   // }, (f) => state.failed()));
    // }
  }
}


// facebookSubmitted() async {
//   emit(state.busy());
//   emit((await _loginFacebook(NoParams())).fold((credential) {
//     return state.complete();
//   }, (f) => state.failed()));
// }

// googleSubmitted() async {
//   emit(state.busy());
//   emit((await _loginGoogle(NoParams())).fold((credential) {
//     return state.complete();
//   }, (f) => state.failed()));
// }

// appleSubmitted() async {
//   emit(state.busy());
//   emit((await _loginApple(NoParams())).fold((credential) {
//     return state.complete();
//   }, (f) => state.failed()));
// }