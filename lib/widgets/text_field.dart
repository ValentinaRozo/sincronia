// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final String hintText;

  const CustomTextField({
    super.key,
    required this.labelText,
    required this.hintText,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (hasFocus) {
        setState(() {
          _isFocused = hasFocus;
        });
      },
      child: TextFormField(
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: const TextStyle(
            color: Color(0xFF0D47A1),
            fontWeight: FontWeight.normal,
            fontFamily: 'Roboto',
          ),
          hintText: _isFocused ? null : widget.hintText,
          hintStyle: const TextStyle(
            color: Color(0xFF42A5F5),
            fontWeight: FontWeight.w300,
            fontFamily: 'Roboto',
          ),
          helperText: _isFocused ? widget.hintText : null,
          helperStyle: const TextStyle(
            color: Color(0xFF42A5F5),
            fontFamily: 'Roboto',
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF0D47A1),
              width: 3.0,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF0D47A1),
              width: 3.0,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF0D47A1),
              width: 3.0,
            ),
          ),
        ),
      ),
    );
  }
}
