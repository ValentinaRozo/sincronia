import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final double width;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.width,
    required this.onPressed,
  });

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  Color _buttonColor = const Color(0xFF0D47A1);

  void _onTapDown() {
    setState(() {
      _buttonColor = const Color(0xFF1976D2);
    });
  }

  void _onTapUp() {
    setState(() {
      _buttonColor = const Color(0xFF0D47A1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) => _onTapDown(),
      onTapUp: (details) => _onTapUp(),
      onTapCancel: () => _onTapUp(),
      child: SizedBox(
        width: widget.width,
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
            widget.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
