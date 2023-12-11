import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  String title;
  String description;
  Color color;
  void Function() onTap;

  AppButton(
      {super.key,
      required this.title,
      required this.description,
      required this.color,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 8,bottom: 8),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                color: color,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              description,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
