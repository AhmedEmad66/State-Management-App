import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/data/radio_btn_cubit/radio_btn_cubit.dart';

class RadioBtnUsingCubit extends StatelessWidget {
  const RadioBtnUsingCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RadioBtnCubit, int>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return RadioListTile(
                title: Text('Radio Button ${index + 1}'),
                value: index,
                groupValue: state,
                onChanged: (value) {
                  context.read<RadioBtnCubit>().selectRadio(value!);
                },
              );
            },
          );
        },
      ),
    );
  }
}
