import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/password_visibility_cubit/password_visibility_cubit.dart';

class PasswordFieldUsingCubit extends StatelessWidget {
  const PasswordFieldUsingCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<PasswordVisibilityCubit, bool>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                obscureText: !state,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(state ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      context
                          .read<PasswordVisibilityCubit>()
                          .toggleVisibility();
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
