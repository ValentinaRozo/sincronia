import 'package:flutter/material.dart';

class CrearAlarma extends StatelessWidget {
  const CrearAlarma({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Alarma'),
        backgroundColor: const Color(0xFF0D47A1),
      ),
      body: const Center(
        child: Text(
          'Pantalla para crear una nueva alarma',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}