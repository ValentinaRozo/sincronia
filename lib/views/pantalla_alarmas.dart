import 'package:flutter/material.dart';
import 'package:sincronia/views/crear_alarma.dart';
import 'package:sincronia/widgets/alarm_tile.dart';
import 'package:sincronia/widgets/floating_button.dart';
import 'package:sincronia/widgets/custom_drawer.dart'; // Importa el CustomDrawer

class PantallaAlarma extends StatelessWidget {
  const PantallaAlarma({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE3F2FD),
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              color: const Color(0xFF0D47A1),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: const CustomDrawer(),
      body: Stack(
        children: [
          Align(
            alignment: const Alignment(1, -0.6),
            child: Opacity(
              opacity: 0.9,
              child: Image.asset(
                'assets/fondo_puntos_SincronIA.png',
                height: size.height * 0.20,
              ),
            ),
          ),
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
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Mis Alarmas',
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF0D47A1),
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                  AlarmItem(),
                ],
              ),
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
