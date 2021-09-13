part of 'sign_in.dart';

@freezed
abstract class SignInState with _$SignInState {
  SignInState._();
  factory SignInState({
    Email? email,
    Password? password,
    @Default(AsyncStatus.idle()) AsyncStatus status,
  }) = _SignInState;

  // ValueFailure<String>? get emailError => email?.;

  // ValueFailure<String>? get passwordError => password?.error;

  bool get valid {
    return true;
    // return (emailError != null && passwordError != null);
  }

  factory SignInState.init() {
    return SignInState().idle();

    // .copyWith(email: const Email.pure())
    // .copyWith(password: const Password.pure());
  }

  SignInState busy() => copyWith(status: AsyncStatus.busy());
  SignInState idle() => copyWith(status: AsyncStatus.idle());
  SignInState failed() => copyWith(status: AsyncStatus.failed());
  SignInState complete() => copyWith(status: AsyncStatus.complete());
}

class SignInCubit extends Cubit<SignInState> {
  // final _loginApple = sl<LoginApple>();
  // final _loginEmail = sl<LoginEmail>();
  // final _loginGoogle = sl<LoginGoogle>();
  // final _loginFacebook = sl<LoginFacebook>();

  SignInCubit() : super(SignInState.init());

  // get _emailParams {
  //   return LoginEmailParams(email: state.email, password: state.password);
  // }

  emailChanged(String value) => emit(state.copyWith(email: Email(value)));

  pwChanged(String value) => emit(state.copyWith(password: Password(value)));

  emailSubmitted() async {
    if (state.valid) {
      emit(state.busy());
      Future.delayed(Duration(seconds: 1));
      emit(state.complete());

      // emit((await _loginEmail(_emailParams)).fold((credential) {
      //   return state.complete();
      // }, (f) => state.failed()));
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
}
