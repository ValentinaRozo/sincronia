import 'package:flutter/material.dart';
import 'package:sincronia/views/crear_alarma.dart';
import 'package:sincronia/widgets/floating_button.dart';

class PantallaAlarma extends StatelessWidget {
  const PantallaAlarma({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE3F2FD),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            color: const Color(0xFF0D47A1),
            onPressed: () {
              // Acción para el ícono de menú
            },
          )
        ],
      ),

      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Opacity(
              opacity: 0.6,
              child: Image.asset(
                'assets/alarmas_SincronIA.png',
                height: size.height * 0.23,
                fit: BoxFit.contain,
              ),
            ),
          ),

          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                          'Mis Alarmas',
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF0D47A1),
                            fontFamily: 'Roboto',
                          ),
                        )
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: CustomFloatingButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CrearAlarma()),
          );
        },
      ),

    );
  }
}
