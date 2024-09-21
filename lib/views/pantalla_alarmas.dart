import 'package:flutter/material.dart';

class PantallaAlarma extends StatelessWidget {
  const PantallaAlarma({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alarma'),
        backgroundColor: const Color(0xFF0D47A1),
      ),
      body: const Center(
        child: Text(
          'Bienvenido a Alarmas',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
