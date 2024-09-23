import 'package:flutter/material.dart';
import 'package:sincronia/widgets/button.dart';
import 'package:sincronia/widgets/hour_picker.dart';
import 'package:sincronia/widgets/radio_buttons_notificaciones.dart';
import 'package:sincronia/widgets/text_field.dart';

class AlarmItem extends StatefulWidget {
  const AlarmItem({super.key});

  @override
  _AlarmItemState createState() => _AlarmItemState();
}

class _AlarmItemState extends State<AlarmItem> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Parte colapsada de la alarma
       Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.endToStart,
        background: Container(
          padding: const EdgeInsets.only(right: 20),
          alignment: Alignment.centerRight,
          color: const Color(0xFFFFCA28),
          child: const Icon(Icons.delete, color: Colors.white),
        ),
        onDismissed: (direction) {
        },
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFE3F2FD),
              borderRadius: BorderRadius.circular(20.0),
            ),
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Color(0xFF64B5F6),
                child: Text(
                  'C',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              title: const Text(
                'Almuerzo de trabajo',
                style: TextStyle(fontSize: 18, color: Color(0xFF0D47A1)),
              ),
              subtitle: const Text(
                'Reunión con los compañeros de trabajo',
                style: TextStyle(color: Colors.grey),
              ),
              trailing: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'assets/image.jpg',
                  width: 60.0,
                  height: 60.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),


        // Parte expandida de la alarma
        if (_isExpanded)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFE3F2FD),
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView( // Scroll para evitar overflow
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: CustomHourPicker(),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Título y descripción
                    const CustomTextField(
                      labelText: 'Título',
                      hintText: 'Añade un título',
                    ),
                    const SizedBox(height: 10),
                    const CustomTextField(
                      labelText: 'Descripción',
                      hintText: 'Añade tu descripción',
                    ),

                    const SizedBox(height: 20),

                    // Notificaciones
                    NotificationRadioButtons(),

                    const SizedBox(height: 20),

                    // Botones de eliminar y guardar
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomButton(
                            text: 'GUARDAR',
                            width: 130,
                            onPressed: () {
                              
                            },
                          ),
                          const SizedBox(width: 10),

                          OutlinedButton(
                            onPressed: () {
                            },
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                              side: const BorderSide(color: Color(0xFF0D47A1)),
                            ),
                            child: const Text(
                              'ELIMINAR',
                              style: TextStyle(color: Color(0xFF0D47A1)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}