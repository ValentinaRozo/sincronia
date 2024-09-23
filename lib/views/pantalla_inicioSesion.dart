import 'package:flutter/material.dart';
import 'package:sincronia/views/pantalla_alarmas.dart';
import 'package:sincronia/views/pantalla_registro.dart';
import 'package:sincronia/widgets/button.dart';
import 'package:sincronia/widgets/button_2.dart';
import 'package:sincronia/widgets/text_field.dart';
import 'package:sincronia/widgets/text_field_contrasena.dart';

class PantallaInicioSesion extends StatelessWidget {
  const PantallaInicioSesion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          // Imagen de fondo superior
          Positioned(
            top: 0,
            left: -50,
            child: Image.asset(
              'assets/fondo_superior_inicio_sesion.png',
              height: size.height * 0.20,
              fit: BoxFit.contain,
            ),
          ),
          // Imagen de fondo inferior
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'assets/fondo_inicio_sesion.png',
              height: size.height * 0.25,
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
                    SizedBox(height: size.height * 0.18),
                    // Logo SincronIA - Aumenta el tamaño del logo
                    Image.asset(
                      'assets/logo_SincronIA.png',
                      height: size.height * 0.22,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 20),
                    // Título "SincronIA"
                    const Text(
                      'SincronIA',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF0D47A1),
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Campo de usuario
                    const CustomTextField(
                      labelText: 'Usuario',
                      hintText: 'Digita tu nombre de usuario',
                    ),
                    const SizedBox(height: 20),

                    // Campo de contraseña
                    const CustomPasswordField(
                      labelText: 'Contraseña',
                      hintText: 'Digita tu contraseña',
                    ),
                    const SizedBox(height: 20),

                    // Enlace de "Olvidé mi contraseña"
                    Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        child: const Text(
                          'Olvidé mi contraseña',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF1976D2),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),

                    // Botón de "INICIAR SESIÓN"
                    CustomButton(
                      text: 'INICIAR SESIÓN',
                      width: 250,
                      onPressed: () {
                        // Navegar a la pantalla de alarmas
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PantallaAlarma()),
                        );
                      },
                    ),

                    // Botón de "REGISTRARME"
                    const SizedBox(height: 20),
                    CustomButton2(
                      text: 'REGISTRARME',
                      onPressed: () {
                        // Navegar a la pantalla de registro
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PantallaRegistro()),
                        );
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
