import 'package:flutter/material.dart';

class PasswordFieldUsingSetState extends StatefulWidget {
  const PasswordFieldUsingSetState({super.key});

  @override
  State<PasswordFieldUsingSetState> createState() =>
      _PasswordFieldUsingSetStateState();
}

class _PasswordFieldUsingSetStateState
    extends State<PasswordFieldUsingSetState> {
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            obscureText: !clicked,
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              labelText: 'Password',
              suffixIcon: IconButton(
                icon: Icon(clicked ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    clicked = !clicked;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
