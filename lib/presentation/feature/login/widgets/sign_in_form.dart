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
          child: Column(
            children: [
              WTextInput(
                require: true,
                label: 'Email',
                hintText: 'no-reply@3co.network',
                prefixIcon: Icon(Icons.person_outline_outlined, size: 18),
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
                obscureText: true,
                label: 'Password',
                hintText: 'Password',
                // autocorrect: false,
                errorText: 'Password wrong',
                prefixIcon: Icon(Icons.lock, size: 18),
                suffixIcon: Icon(Icons.visibility_off_outlined, size: 18),
                onChanged: (value) {
                  context.read<LoginCubit>().emailChanged(value ?? '');
                },
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
              kVSpaceXS,
              kVSpaceXXL,
              kVSpaceXS,
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
