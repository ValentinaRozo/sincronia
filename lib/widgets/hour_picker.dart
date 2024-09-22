import 'package:flutter/material.dart';

class CustomHourPicker extends StatefulWidget {
  const CustomHourPicker({Key? key}) : super(key: key);

  @override
  _CustomHourPickerState createState() => _CustomHourPickerState();
}

class _CustomHourPickerState extends State<CustomHourPicker> {
  int _selectedHour = 10;
  int _selectedMinute = 0;
  bool _isAM = true;

  final List<int> _hours = List<int>.generate(12, (i) => i + 1);
  final List<int> _minutes = List<int>.generate(60, (i) => i);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(30.0),
        height: 190,
        decoration: BoxDecoration(
          color: const Color(0xFFE3F2FD),
          borderRadius: BorderRadius.circular(20.0),
        ), 

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE0F7FA),
                    border: Border.all(color: const Color(0xFF4DB6AC), width: 3.0),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: DropdownButton<int>(
                      value: _selectedHour,
                      dropdownColor: const Color(0xFFE0F7FA),
                      iconSize: 30,
                      isExpanded: true,
                      items: _hours.map((hour) {
                        return DropdownMenuItem<int>(
                          value: hour,
                          child: Text(
                            hour.toString().padLeft(2, '0'),
                            style: const TextStyle(
                              fontSize: 35,
                              color: Color.fromARGB(255, 102, 98, 98),
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedHour = value!;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Hora', 
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),

            const SizedBox(width: 10),

            const Text(
              ':',
              style: TextStyle(fontSize: 35),
            ),
            const SizedBox(width: 10),


            Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE0F7FA),
                    border: Border.all(color: const Color(0xFF4DB6AC), width: 3.0),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: DropdownButton<int>(
                      value: _selectedMinute,
                      dropdownColor: const Color(0xFFE0F7FA),
                      iconSize: 30,
                      isExpanded: true,
                      items: _minutes.map((minute) {
                        return DropdownMenuItem<int>(
                          value: minute,
                          child: Text(
                            minute.toString().padLeft(2, '0'),
                            style: const TextStyle(
                              fontSize: 35,
                              color: Color.fromARGB(255, 102, 98, 98),
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedMinute = value!;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Minuto',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),

            const SizedBox(width: 10),

            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ToggleButtons(
                    isSelected: [_isAM, !_isAM],
                    onPressed: (index) {
                      setState(() {
                        _isAM = index == 0;
                      });
                    },
                    children: const [
                      Text('AM'),
                      Text('PM'),
                    ],
                    color: Colors.grey,
                    selectedColor: const Color(0xFF4DB6AC),
                    fillColor: const Color(0xFFE0F7FA),
                    borderColor: const Color(0xFF4DB6AC),
                    selectedBorderColor: const Color(0xFF4DB6AC),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}