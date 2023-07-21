import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/data/password_visibility_cubit/password_visibility_cubit.dart';
import 'package:state_management/data/radio_btn_cubit/radio_btn_cubit.dart';
import 'package:state_management/state_management_cubit/filter_bar_using_cubit.dart';
import 'data/filter_controll_cubit/filtercontroll_cubit.dart';
import 'data/traning_case_cubit/training_case_cubit.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FiltercontrollCubit(),
        ),
        BlocProvider(
          create: (context) => PasswordVisibilityCubit(),
        ),
        BlocProvider(
          create: (context) => RadioBtnCubit(),
        ),
        BlocProvider(
          create: (context) => TrainingCaseCubit(),
        ),
      ],
      child:  const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FilterBarUsingCubit(),
      ),
    );
  }
}
