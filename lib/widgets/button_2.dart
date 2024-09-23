import 'package:flutter/material.dart';

class CustomButton2 extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;

  const CustomButton2({
    super.key,
    required this.text,
    required this.onPressed,
    this.width = 150,
  });

  @override
  _CustomButton2State createState() => _CustomButton2State();
}

class _CustomButton2State extends State<CustomButton2> {
  Color _buttonColor = Colors.white;
  Color _textColor = const Color(0xFF0D47A1);

  void _onTapDown() {
    setState(() {
      _buttonColor = const Color(0xFFE3F2FD);
      _textColor = const Color(0xFF0D47A1);
    });
  }

  void _onTapUp() {
    setState(() {
      _buttonColor = Colors.white;
      _textColor = const Color(0xFF0D47A1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: GestureDetector(
        onTapDown: (details) => _onTapDown(),
        onTapUp: (details) => _onTapUp(),
        onTapCancel: () => _onTapUp(),
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: _buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: const EdgeInsets.symmetric(vertical: 15.0),
          ),
          child: Text(
            widget.text.toUpperCase(),
            style: TextStyle(
              color: _textColor,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
