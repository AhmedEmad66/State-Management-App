import 'package:flutter/material.dart';

class RadioBtnUsingSetState extends StatefulWidget {
  const RadioBtnUsingSetState({super.key});

  @override
  State<RadioBtnUsingSetState> createState() => _RadioBtnUsingSetStateState();
}

int _selectedRadio = -1;

class _RadioBtnUsingSetStateState extends State<RadioBtnUsingSetState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return RadioListTile(
            title: Text('Radio Button ${index + 1}'),
            value: index,
            groupValue: _selectedRadio,
            onChanged: (value) {
              setState(() {
                _selectedRadio = value!;
              });
            },
          );
        },
      ),
    );
  }
}
