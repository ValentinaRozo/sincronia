import 'package:flutter/material.dart';

class NotificationRadioButtons extends StatefulWidget {
  @override
  _NotificationRadioButtonsState createState() => _NotificationRadioButtonsState();
}

class _NotificationRadioButtonsState extends State<NotificationRadioButtons> {
  String _selectedNotification = 'Visual'; // Opción seleccionada por defecto

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RadioListTile<String>(
            value: 'Voz',
            groupValue: _selectedNotification,
            title: const Text(
                    'Activar Notificación por Voz',
                    style: TextStyle(fontFamily: 'Roboto', color: Color(0xFF0D47A1)),
                  ),
            activeColor: const Color(0xFF0D47A1),
            onChanged: (value) {
              setState(() {
                _selectedNotification = value!;
              });
            },
          ),
          RadioListTile<String>(
            value: 'Visual',
            groupValue: _selectedNotification,
            title: const Text(
                    'Activar Notificación Visual',
                    style: TextStyle(fontFamily: 'Roboto', color: Color(0xFF0D47A1)),
                  ),
            activeColor: const Color(0xFF0D47A1),
            onChanged: (value) {
              setState(() {
                _selectedNotification = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}