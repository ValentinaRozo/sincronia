import 'package:flutter/material.dart';
import 'package:sincronia/views/pantalla_alarmas.dart';
import 'package:sincronia/views/pantalla_configuracion.dart';
import 'package:sincronia/views/pantalla_inicioSesion.dart';
import 'package:sincronia/views/pantalla_sueno.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFFE3F2FD),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color(0xFFE3F2FD),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'SincronIA',
                    style: TextStyle(
                      color: Color(0xFF0D47A1),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xFF4DB6AC),
                    child: Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Flexible(
                    child: Text(
                      'Nombre Usuario',
                      style: const TextStyle(
                        color: Color(0xFF4DB6AC),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Organización Personal',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF0D47A1),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading:
                  const Icon(Icons.calendar_today, color: Color(0xFF4DB6AC)),
              title: const Text(
                'Calendario',
                style: TextStyle(color: Color(0xFF4DB6AC)),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.alarm, color: Color(0xFF4DB6AC)),
              title: const Text(
                'Alarmas',
                style: TextStyle(color: Color(0xFF4DB6AC)),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PantallaAlarma(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.bedtime, color: Color(0xFF4DB6AC)),
              title: const Text(
                'Sueño',
                style: TextStyle(color: Color(0xFF4DB6AC)),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PantallaSueno(),
                  ),
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              child: Text(
                'Cuenta y Sesión',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF0D47A1),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Color(0xFF4DB6AC)),
              title: const Text(
                'Configuración',
                style: TextStyle(color: Color(0xFF4DB6AC)),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PantallaConfiguracion(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app, color: Color(0xFF4DB6AC)),
              title: const Text(
                'Cerrar Sesión',
                style: TextStyle(color: Color(0xFF4DB6AC)),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PantallaInicioSesion(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
