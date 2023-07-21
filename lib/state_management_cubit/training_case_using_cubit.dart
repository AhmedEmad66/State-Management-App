import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/traning_case_cubit/training_case_cubit.dart';


class TrainingCaseUsingCubit extends StatelessWidget {
  const TrainingCaseUsingCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: BlocBuilder<TrainingCaseCubit, TrainingCaseState>(
              builder: (context, state) {
                if (state is TrainingCaseInitial) {
                  return const Text("You didnt join the traing");
                } else if (state is TrainingCaseIn) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(border: Border.all(width: 1)),
                        child: const Text(
                            "Today we will study state management using bloc and cubit"),
                      ),
                    ],
                  );
                } else if (state is TrainingCaseHold) {
                  return const Text("Hold");
                } else if (state is TrainingCaseWriteComment) {
                  return const SizedBox(
                    width: 300,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                          suffix: Icon(
                        Icons.remove_red_eye_rounded,
                        color: Colors.black,
                      )),
                    ),
                  );
                } else {
                  return const Text("No state");
                }
              },
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          // enter btn
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 10,
            ),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: const Color.fromARGB(255, 0, 147, 145),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                shadowColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () {
                context.read<TrainingCaseCubit>().onPressedLetsTrain();
              },
              child: const Text(
                "Enter the trainig",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          // hold btn
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 10,
            ),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: const Color.fromARGB(255, 0, 147, 145),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                shadowColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () {
                context.read<TrainingCaseCubit>().onPressedHold();
              },
              child: const Text(
                "Hold the trainig",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          // exit btn
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 10,
            ),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: const Color.fromARGB(255, 0, 147, 145),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                shadowColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () {
                context.read<TrainingCaseCubit>().onPressedFinishTraining();
              },
              child: const Text(
                "Exit the trainig",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          // write comment Btn
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 10,
            ),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: const Color.fromARGB(255, 0, 147, 145),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                shadowColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () {
                context.read<TrainingCaseCubit>().onPressedWriteComment();
              },
              child: const Text(
                "write comment about the traing",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
