import 'package:flutter/material.dart';
import 'package:sincronia/widgets/custom_drawer.dart';
import 'package:sincronia/widgets/custom_switch.dart';
import 'package:sincronia/widgets/radio_buttons_notificaciones.dart';
import 'package:sincronia/widgets/button.dart'; // Importando el widget del botón personalizado

class PantallaConfiguracion extends StatelessWidget {
  const PantallaConfiguracion({Key? key}) : super(key: key);

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
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Configuración',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF0D47A1),
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'No Molestar',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF0D47A1),
                        ),
                      ),
                      const CustomSwitch(),
                    ],
                  ),
                  const Divider(color: Color(0xFF4DB6AC), thickness: 1),
                  const Text(
                    'Notificaciones',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0D47A1),
                    ),
                  ),
                  const Text(
                    'Nota: Al seleccionar esta opción cambiará la configuración para todas las notificaciones',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF0D47A1),
                    ),
                  ),
                  const NotificationRadioButtons(),
                  const Divider(color: Color(0xFF4DB6AC), thickness: 1),
                  const Text(
                    'Agregar Dispositivo',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0D47A1),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Smart Band de JM",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF4DB6AC),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Center(
                    child: CustomButton(
                      text: '+ AGREGAR',
                      width: 150,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
