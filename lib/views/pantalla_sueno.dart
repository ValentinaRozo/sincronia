import 'package:flutter/material.dart';
import 'package:sincronia/widgets/custom_carousel.dart';
import 'package:sincronia/widgets/custom_drawer.dart';
import 'package:sincronia/widgets/button.dart';

class PantallaSueno extends StatelessWidget {
  const PantallaSueno({Key? key}) : super(key: key);

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
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Mi Sueño',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF0D47A1),
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Gráficas de sueño',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF1976D2),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const CustomCarousel(),
                  const SizedBox(height: 20),
                  Center(
                    child: CustomButton(
                      text: 'CALIFICA TU SUEÑO',
                      width: size.width * 0.8,
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
