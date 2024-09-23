import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  const CustomRadioButton({super.key});

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  String _selectedOption = 'Recordatorio';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: const Color(0xFFE3F2FD),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RadioListTile<String>(
            value: 'Recordatorio',
            groupValue: _selectedOption,
            title: const Text(
                    'Recordatorio',
                    style: TextStyle(fontFamily: 'Roboto', color: Color(0xFF0D47A1)),
                  ),
            activeColor: const Color(0xFF0D47A1),
            onChanged: (value) {
              setState(() {
                _selectedOption = value!;
              });
            },
          ),
          RadioListTile<String>(
            value: 'Reunión',
            groupValue: _selectedOption,
            title: const Text(
                    'Reunion',
                    style: TextStyle(fontFamily: 'Roboto', color: Color(0xFF0D47A1)),
                  ),
            activeColor: const Color(0xFF0D47A1),
            onChanged: (value) {
              setState(() {
                _selectedOption = value!;
              });
            },
          ),
          RadioListTile<String>(
            value: 'Tarea',
            groupValue: _selectedOption,
            title: const Text(
                    'Tarea',
                    style: TextStyle(fontFamily: 'Roboto', color: Color(0xFF0D47A1)),
                  ),
            activeColor: const Color(0xFF0D47A1),
            onChanged: (value) {
              setState(() {
                _selectedOption = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}