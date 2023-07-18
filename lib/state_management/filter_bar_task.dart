import 'package:flutter/material.dart';

class CustomFilterBar extends StatefulWidget {
  const CustomFilterBar({super.key});
  // Named Route
  static String id = "CustomFilterBar";

  @override
  State<CustomFilterBar> createState() => _CustomFilterBarState();
}

class _CustomFilterBarState extends State<CustomFilterBar> {
  // Selected btn controller
  int selected = 0;
  // FilterBar Data
  List<String> btnNames = [
    "All",
    "Anime",
    "Football",
    "Art",
    "Video games",
    "Rap",
    "Programming",
  ];

  // Switch Case for Content
  String getContent(int selcted) {
    switch (selcted) {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    OverflowBar(
                      spacing: 5,
                      children: [
                        for (int i = 0; i < btnNames.length; i++)
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                              color: selected == i
                                  ? const Color.fromARGB(247, 252, 125, 100)
                                  : const Color.fromARGB(128, 158, 158, 158),
                              border: Border.all(
                                color: selected == i
                                    ? const Color.fromARGB(255, 7, 247, 255)
                                    : Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  selected = i;
                                });
                              },
                              // Btn Style
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.transparent,
                                ),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                shadowColor: MaterialStateProperty.all(
                                  Colors.transparent,
                                ),
                              ),
                              // btn Name
                              child: Text(
                                btnNames[i],
                                style: const TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            // Content Container
            Container(
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(192, 0, 70, 116),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                // Content Text
                child: Text(
                  getContent(selected),
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 30),
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
