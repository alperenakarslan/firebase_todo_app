// ignore_for_file: must_be_immutable

import 'package:firebase_todo_app/core/extansions/ui/ui_extansion.dart';
import 'package:flutter/material.dart';

class SpecialTextField extends StatelessWidget {
  String label;
  IconData icon;
  TextEditingController controller;

  SpecialTextField({
    super.key,
    required this.label,
    required this.icon,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingHorizontal8x,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          label: Text(label),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(context.val4x),
          ),
        ),
      ),
    );
  }
}
