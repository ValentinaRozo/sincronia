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
      body: Stack(
        children: [
          
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/reloj_SincronIA.png',
              height: size.height * 0.2,
              fit: BoxFit.contain,
            ),
          ),
          
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'assets/bottom_SincronIA.png',
              height: size.height * 0.2,
              fit: BoxFit.contain,
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: size.height * 0.2),
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
                    
                    
                    const CustomTextField(
                      labelText: 'Nombre',
                      hintText: 'Digita tu Nombre',
                    ),
                    const SizedBox(height: 20),
                    const CustomTextField(
                      labelText: 'Apellido',
                      hintText: 'Digita tu Apellido',
                    ),
                    const SizedBox(height: 20),
                    const CustomTextField(
                      labelText: 'E-mail',
                      hintText: 'Digita tu correo electrónico',
                    ),
                    const SizedBox(height: 20),
                    const CustomPasswordField(
                      labelText: 'Contraseña',
                      hintText: 'Digita tu contraseña',
                    ),
                    const SizedBox(height: 40),

                    // Botón de "REGISTRARME"
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
                   

                    // Botón de "Ya tengo una cuenta"
                    const SizedBox(height: 20),
                    CustomButton2(
                      text: 'Ya tengo una cuenta',
                      onPressed: () {
                      },
                      width: 250,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}