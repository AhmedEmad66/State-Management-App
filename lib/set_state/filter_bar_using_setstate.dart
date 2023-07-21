import 'package:flutter/material.dart';

import '../res/my_strings.dart';

class FilterBarUsingSetState extends StatefulWidget {
  const FilterBarUsingSetState({super.key});

  @override
  State<FilterBarUsingSetState> createState() => _FilterBarUsingSetStateState();
}

int selected = 0;

String getContent(int selected) {
  switch (selected) {
    case 0:
      return '${btnNames[selected]} Categories';
    case 1:
      return '${btnNames[selected]} Category';
    case 2:
      return '${btnNames[selected]} Category';
    case 3:
      return '${btnNames[selected]} Category';
    case 4:
      return '${btnNames[selected]} Category';
    case 5:
      return '${btnNames[selected]} Category';
    case 6:
      return '${btnNames[selected]} Category';
    default:
      return '';
  }
}

class _FilterBarUsingSetStateState extends State<FilterBarUsingSetState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < btnNames.length; i++)
                    // Filter btn
                    // you can also use OverflowBar
                    Container(
                      margin: const EdgeInsets.only(left: 7),
                      height: 30,
                      decoration: BoxDecoration(
                        color: selected == i
                            ? Colors.red
                            : const Color.fromARGB(174, 158, 158, 158),
                        border: Border.all(
                          color: selected == i
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
                          setState(() {
                            selected = i;
                          });
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
                  getContent(selected),
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
