import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/data/filter_controll_cubit/filtercontroll_cubit.dart';

import '../res/my_strings.dart';

class FilterBarUsingCubit extends StatelessWidget {
  const FilterBarUsingCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: SafeArea(
        child: BlocBuilder<FiltercontrollCubit, FiltercontrollState>(
          builder: (context, state) {
            return Column(
              children: [
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < btnNames.length; i++)
                        // Filter btn
                        Container(
                          margin: const EdgeInsets.only(left: 7),
                          height: 30,
                          decoration: BoxDecoration(
                            color:
                                context.read<FiltercontrollCubit>().index == i
                                    ? Colors.red
                                    : const Color.fromARGB(174, 158, 158, 158),
                            border: Border.all(
                              color:
                                  context.read<FiltercontrollCubit>().index == i
                                      ? const Color.fromARGB(255, 0, 255, 217)
                                      : Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              shadowColor:
                                  MaterialStateProperty.all(Colors.transparent),
                            ),
                            onPressed: () {
                              context
                                  .read<FiltercontrollCubit>()
                                  .buttonClicked(i);
                            },
                            child: Text(btnNames[i]),
                          ),
                        ),
                    ],
                  ),
                ),
                const Spacer(),
                // Content Container
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 56, 102),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      context.read<FiltercontrollCubit>().getContent(),
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            );
          },
        ),
      ),
    );
  }
}