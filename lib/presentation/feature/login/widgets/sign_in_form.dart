import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tranme/presentation/feature/login/login_cubit.dart';
import 'package:tranme/presentation/theme/theme.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
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
      builder: (context, state) {
        return Form(
          // autovalidateMode: state.showErrorMessages
          //     ? AutovalidateMode.always
          //     : AutovalidateMode.disabled,
          child: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              WTextInput(
                label: 'Email',
                hintText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
                validator: (_) => context
                    .read<LoginCubit>()
                    .state
                    .email!
                    .value
                    .fold(
                        (f) => f.maybeMap(
                            orElse: () => null,
                            invalidEmail: (_) => 'Invalid Email'),
                        (_) => null),
                onChanged: (value) {
                  context.read<LoginCubit>().emailChanged(value ?? '');
                },
              ),
              kVSpaceM,
              WTextInput(
                // autocorrect: false,
                obscureText: true,
                label: 'Password',
                hintText: 'Password',
                border: OutlineInputBorder(),
                onChanged: (value) {
                  context.read<LoginCubit>().emailChanged(value ?? '');
                },
                prefixIcon: Icon(Icons.lock),
                validator: (_) => context
                    .read<LoginCubit>()
                    .state
                    .password!
                    .value
                    .fold(
                        (f) => f.maybeMap(
                            orElse: () => null,
                            invalidPassword: (_) => 'Short Password'),
                        (_) => null),
              ),
              kVSpaceM,
              WSubmitBtn(
                child: const Text('Sign in'),
                onPressed: context.read<LoginCubit>().emailSubmitted,
              ),
            ],
          ),
        );
      },
    );
  }
}
