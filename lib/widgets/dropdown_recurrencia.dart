import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({super.key});

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? _selectedValue = 'Selecciona Recurrencia';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedValue,
      items: const [
        DropdownMenuItem(
          value: 'Selecciona Recurrencia',
          child: Text('Selecciona Recurrencia', style: TextStyle(fontSize: 14, fontFamily: 'Roboto', color: Color(0xFF0D47A1))),
        ),
        DropdownMenuItem(
          value: 'Nunca',
          child: Text('Nunca', style: TextStyle(fontSize: 14, fontFamily: 'Roboto', color: Color(0xFF0D47A1))),
        ),
        DropdownMenuItem(
          value: 'Diaria',
          child: Text('Diaria', style: TextStyle(fontSize: 14, fontFamily: 'Roboto', color: Color(0xFF0D47A1))),
        ),
        DropdownMenuItem(
          value: 'Semanal',
          child: Text('Semanal', style: TextStyle(fontSize: 14, fontFamily: 'Roboto', color: Color(0xFF0D47A1))),
        ),
        DropdownMenuItem(
          value: 'Mensual',
          child: Text('Mensual', style: TextStyle(fontSize: 14, fontFamily: 'Roboto', color: Color(0xFF0D47A1))),
        ),
      ],
      onChanged: (String? newValue) {
        setState(() {
          _selectedValue = newValue;
        });
      },
    );
  }
}