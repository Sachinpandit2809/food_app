import 'package:flutter/material.dart';

class MyReferButton extends StatelessWidget {
  final String title;
  final String subTitle;
  MyReferButton({required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.pink)),
        Text(subTitle,
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: Colors.pink)),
      ],
    );
  }
}
