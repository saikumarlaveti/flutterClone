import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final TextEditingController editingController;
  final String labelText;
  final IconData iconData;
  final bool isObscure;

  const CustomTextFieldWidget({
    Key? key,
    required this.editingController,
    required this.labelText,
    required this.iconData,
    required this.isObscure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: TextField(
        controller: editingController,
        obscureText: isObscure,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: Icon(iconData),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
