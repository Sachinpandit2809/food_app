import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  const MyButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.pink),
        child: Text(title,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.white)),
      ),
    );
  }
}
