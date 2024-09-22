import 'package:flutter/material.dart';
import 'package:sincronia/widgets/button.dart';
import 'package:sincronia/widgets/dropdown_recurrencia.dart';
import 'package:sincronia/widgets/hour_picker.dart';
import 'package:sincronia/widgets/text_field.dart';

class CrearAlarma extends StatelessWidget {
  const CrearAlarma({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nueva Alarma', style: TextStyle(fontFamily: 'Roboto', color: Color(0xFF0D47A1))),
        backgroundColor: const Color(0xFFE3F2FD),
        centerTitle: true,
      ),

      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                'assets/nueva_alarma_SincronIA.png',
                height: size.height * 0.20,
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
                  //Llenar el titulo del evento
                  const CustomTextField(
                    labelText: 'Título Evento',
                    hintText: 'Ingresa el nombre para tu alarma',
                  ),
                  const SizedBox(height: 20),

                  //Llenar la hora inicial
                  const Text(
                    'Ingresa la hora inicial',
                    style: TextStyle(fontSize: 16, fontFamily: 'Roboto', color: Color(0xFF0D47A1), fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 10),
                  const Center(child: CustomHourPicker()),
                  const SizedBox(height: 20),

                  //Llenar la hora final
                  const Text(
                    'Ingresa la hora final',
                    style: TextStyle(fontSize: 16, fontFamily: 'Roboto', color: Color(0xFF0D47A1), fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 10),
                  const Center(child: CustomHourPicker()),

                  
                  const SizedBox(height: 20),
                  const Text(
                    'Etiqueta',
                    style: TextStyle(fontSize: 16, fontFamily: 'Roboto', color: Color(0xFF0D47A1), fontWeight: FontWeight.w700),
                  ),
                  
                  const SizedBox(height: 20),
                  const Text(
                    'Recurrencia',
                    style: TextStyle(fontSize: 16, fontFamily: 'Roboto', color: Color(0xFF0D47A1), fontWeight: FontWeight.w700),
                  ),
                  CustomDropdown(),
                  

                  const SizedBox(height: 20),
                  const CustomTextField(
                    labelText: 'Descripción del Evento',
                    hintText: 'Ingresa la información de tu evento',
                  ),
                  const SizedBox(height: 150),
                ],
              ),
            ),
          ),

          
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 16.0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomButton(
                    text: 'GUARDAR',
                    width: 150,
                    onPressed: () {
                      
                    },
                  ),
                  const SizedBox(width: 10),

                  OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                      side: const BorderSide(color: Color(0xFF0D47A1)),
                    ),
                    child: const Text(
                      'CANCELAR',
                      style: TextStyle(color: Color(0xFF0D47A1)),
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
