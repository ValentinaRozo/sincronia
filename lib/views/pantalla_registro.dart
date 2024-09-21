import 'package:flutter/material.dart';
import 'package:sincronia/views/pantalla_alarmas.dart';
import 'package:sincronia/widgets/button.dart';
import 'package:sincronia/widgets/button_2.dart';
import 'package:sincronia/widgets/text_field.dart';
import 'package:sincronia/widgets/text_field_contrasena.dart';

class PantallaRegistro extends StatelessWidget {
  const PantallaRegistro({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
            const SizedBox(height: 20),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  CustomTextField(
                    labelText: 'Nombre',
                    hintText: 'Digita tu Nombre',
                  ),
                  SizedBox(height: 25),
                  CustomTextField(
                    labelText: 'Apellido',
                    hintText: 'Digita tu Apellido',
                  ),
                  SizedBox(height: 25),
                  CustomTextField(
                    labelText: 'E-mail',
                    hintText: 'Digita tu correo electrónico',
                  ),
                  SizedBox(height: 25),
                  CustomPasswordField(
                    labelText: 'Contraseña',
                    hintText: 'Digita tu contraseña',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'REGISTRARME',
              width: 250,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PantallaAlarma()),
                );
              },
            ),
            const SizedBox(height: 20),
            CustomButton2(
              text: 'Ya tengo una cuenta',
              onPressed: () {
              },
              width: 250,
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  
                    child: Image.asset(
                      'assets/bottom_SincronIA.png',
                      height: size.height * 0.2,
                    ),
                
                ),
              ],
            )
          ],
        ),
      ),
      ),
    );
  }
}