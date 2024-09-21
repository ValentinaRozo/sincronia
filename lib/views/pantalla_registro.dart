import 'package:flutter/material.dart';
import 'package:sincronia/widgets/text_field.dart';

class PantallaRegistro extends StatelessWidget {
  const PantallaRegistro({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/reloj_SincronIA.png',
                height: size.height * 0.2,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            const Text(
              'Registro',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w500,
                color: Color(0xFF0D47A1),
                fontFamily: 'Roboto',
              ),
            ),
            const SizedBox(height: 16),
            const CustomTextField(
              labelText: 'Nombre',
              hintText: 'Digita tu Nombre',
            ),
            const SizedBox(height: 16),
            const CustomTextField(
              labelText: 'Apellido',
              hintText: 'Digita tu Apellido',
            ),
          ],
        ),
      ),
    );
  }
}