import 'package:flutter/material.dart';

class MyPasswordtextformfield extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String label;
  MyPasswordtextformfield(
      {required this.controller, required this.hintText, required this.label});

  @override
  State<MyPasswordtextformfield> createState() =>
      _MyPasswordtextformfieldState();
}

class _MyPasswordtextformfieldState extends State<MyPasswordtextformfield> {
  bool click = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        controller: widget.controller,
        obscureText: click,
        decoration: InputDecoration(
            suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  click = !click;
                  print(click);
                });
              },
              child:
                  click ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
            ),
            hintText: widget.hintText,
            label: Text(widget.label),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
