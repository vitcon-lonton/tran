import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:tranme/presentation/theme/theme.dart';
import 'package:tranme/presentation/feature/sign_in/sign_in_cubit.dart';

class SignInForm extends StatelessWidget {
  Widget padding(Widget child) {
    return Padding(
      child: child,
      padding: const EdgeInsets.symmetric(horizontal: kSpaceL),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
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
              padding(
                WTextInput(
                  label: 'Email',
                  hintText: 'no-reply@3co.network',
                  prefixIcon: Icon(Icons.person_outline_outlined, size: 18),
                  validator: (_) => context
                      .read<SignInCubit>()
                      .state
                      .email!
                      .value
                      .fold(
                          (f) => f.maybeMap(
                              orElse: () => null,
                              invalidEmail: (_) => 'Invalid Email'),
                          (_) => null),
                  onChanged: (value) {
                    context.read<SignInCubit>().emailChanged(value ?? '');
                  },
                ),
              ),
              kVSpaceM,
              padding(
                WTextInput(
                  obscureText: true,
                  label: 'Password',
                  hintText: 'Password',
                  // autocorrect: false,
                  // errorText: 'Password wrong',
                  prefixIcon: Icon(Icons.enhanced_encryption, size: 18),
                  suffixIcon: Icon(Icons.visibility_off_outlined, size: 18),
                  onChanged: (value) {
                    context.read<SignInCubit>().emailChanged(value ?? '');
                  },
                  validator: (_) => context
                      .read<SignInCubit>()
                      .state
                      .password!
                      .value
                      .fold(
                          (f) => f.maybeMap(
                              orElse: () => null,
                              invalidPassword: (_) => 'Short Password'),
                          (_) => null),
                ),
              ),
              Row(
                children: [
                  kHSpaceS,
                  WCheckbox(value: true),
                  const Text('Remember me?'),
                  kHSpaceS,
                  Expanded(child: const Text('Forgotten your password?')),
                  kHSpaceL,
                ],
              ),
              kVSpaceXXL,
              kVSpaceXS,
              padding(
                WSubmitBtn(
                  child: const Text('Sign in'),
                  onPressed: context.read<SignInCubit>().emailSubmitted,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
