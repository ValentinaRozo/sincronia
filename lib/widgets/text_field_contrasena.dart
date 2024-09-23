import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  final String labelText;
  final String hintText;

  const CustomPasswordField({
    super.key,
    required this.labelText,
    required this.hintText,
  });

  @override
  _CustomPasswordFieldState createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool _isFocused = false;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (hasFocus) {
        setState(() {
          _isFocused = hasFocus;
        });
      },
      child: TextFormField(
        obscureText: _obscureText,
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
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility_off : Icons.visibility,
              color: const Color(0xFF0D47A1),
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
        ),
      ),
    );
  }
}
