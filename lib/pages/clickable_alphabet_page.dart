import 'package:flutter/material.dart';

class ClickableAlphabetPage extends StatelessWidget {
  const ClickableAlphabetPage({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final Function() onTap;

  static List alphabet_list = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "V",
    "X",
    "Y",
    "Z"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 6,
      children: List.generate(26, (index) {
        return InkWell(
          onTap: onTap,
          child: Card(
            margin: const EdgeInsets.all(5.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  alphabet_list[index],
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
