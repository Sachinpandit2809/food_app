import 'package:flutter/material.dart';

class TopGreet extends StatelessWidget {
  final String title;
  final String subTitle;
  const TopGreet({required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: Colors.pink)),
          Text(subTitle,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: Colors.pink)),
        ],
      ),
    );
  }
}
