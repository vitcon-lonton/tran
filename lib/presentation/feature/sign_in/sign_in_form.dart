part of 'sign_in.dart';

class SignInForm extends StatelessWidget {
  Widget padding(Widget child) {
    return Padding(
      child: child,
      padding: const EdgeInsets.symmetric(horizontal: kSpaceL),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SignInCubit, SignInState>(
          listenWhen: (prev, cur) => prev.status != cur.status,
          listener: (context, state) {
            // state.status.maybeMap(
            //   orElse: () {
            //     EasyLoading.dismiss();
            //   },
            //   busy: (_) {
            //     EasyLoading.show();
            //   },
            // );
          },
        ),
        BlocListener<SignInCubit, SignInState>(
          listener: (context, state) {
            // state.authFailureOrSuccessOption.fold(
            //   () {},
            //   (either) => either.fold(
            //     (failure) {
            //       final snackBar = SnackBar(
            //         behavior: SnackBarBehavior.floating,
            //         content: Text(
            //           failure.map(
            //             cancelledByUser: (_) => 'Cancelled',
            //             serverError: (_) => 'Server error',
            //             emailAlreadyInUse: (_) => 'Email already in use',
            //             invalidEmailAndPasswordCombination: (_) =>
            //                 'Invalid email and password combination',
            //           ),
            //         ),
            //         action: SnackBarAction(
            //           label: 'Action',
            //           onPressed: () {},
            //         ),
            //       );

            //       ScaffoldMessenger.of(context).showSnackBar(snackBar);
            //     },
            //     (_) {
            //       AutoRouter.of(context).replace(const NotesOverviewPageRoute());
            //       context
            //           .read<AuthBloc>()
            //           .add(const AuthEvent.authCheckRequested());
            //     },
            //   ),
            // );
          },
        )
      ],
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          children: [
            BlocBuilder<SignInCubit, SignInState>(
              buildWhen: (prev, cur) => prev.email != cur.email,
              builder: (context, state) => padding(
                WTextInput(
                  label: 'Email',
                  hintText: 'no-reply@3co.network',
                  prefixIcon: Icon(Icons.person_outline_outlined, size: 18),
                  onChanged: context.read<SignInCubit>().emailChanged,
                  errorText: context.read<SignInCubit>().state.email.value.fold(
                        (f) => f.maybeMap(
                            orElse: () => null,
                            invalidEmail: (_) => 'Invalid Email'),
                        (_) => null,
                      ),
                ),
              ),
            ),
            kVSpaceM,
            BlocBuilder<SignInCubit, SignInState>(
              buildWhen: (prev, cur) =>
                  prev.password != cur.password ||
                  prev.displayPassword != cur.displayPassword,
              builder: (context, state) => padding(
                WTextInput(
                  label: 'Password',
                  hintText: 'Password',
                  errorText: context
                      .read<SignInCubit>()
                      .state
                      .password
                      .value
                      .fold(
                          (f) => f.maybeMap(
                              orElse: () => null,
                              invalidPassword: (_) => 'Short Password'),
                          (_) => null),
                  obscureText: state.displayPassword,
                  suffixIcon: state.displayPassword
                      ? IconButton(
                          onPressed: () => context
                              .read<SignInCubit>()
                              .displayPasswordChanged(!state.displayPassword),
                          icon: Icon(Icons.visibility_off_outlined, size: 18))
                      : IconButton(
                          onPressed: () => context
                              .read<SignInCubit>()
                              .displayPasswordChanged(!state.displayPassword),
                          icon: Icon(Icons.visibility_sharp, size: 18)),
                  prefixIcon: Icon(Icons.enhanced_encryption, size: 18),
                  onChanged: context.read<SignInCubit>().passwordChanged,
                ),
              ),
            ),
            BlocBuilder<SignInCubit, SignInState>(
              buildWhen: (prev, cur) => prev.remember != cur.remember,
              builder: (context, state) => Row(
                children: [
                  kHSpaceS,
                  WCheckbox(
                    value: state.remember,
                    onChanged: (value) => context
                        .read<SignInCubit>()
                        .rememberChanged(value ?? false),
                  ),
                  const Text('Remember me?'),
                  kHSpaceS,
                  Expanded(child: const Text('Forgotten your password?')),
                  kHSpaceL,
                ],
              ),
            ),
            kVSpaceXXL,
            kVSpaceXS,
            padding(
              WSubmitBtn(
                child: const Text('Sign in'),
                // onPressed: () => Navigator.of(context).pushNamed(Routes.home),
                onPressed: context.read<SignInCubit>().emailSubmitted,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
