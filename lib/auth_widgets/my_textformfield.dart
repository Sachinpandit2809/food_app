import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String label;
  final TextInputType keyboardType;
  const MyTextFormField(
      {required this.controller, required this.hintText, required this.label,required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        controller: controller,
        keyboardType:keyboardType,
        decoration: InputDecoration(
          
            hintText: hintText,
            label: Text(label),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
    
  }
}
