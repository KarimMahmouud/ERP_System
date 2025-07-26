import 'package:erp/Features/events/presentation/views/widgets/calender.dart';
import 'package:flutter/material.dart';

class CalendarText extends StatefulWidget {
  const CalendarText({super.key});

  @override
  State<CalendarText> createState() => _CalendarTextState();
}

class _CalendarTextState extends State<CalendarText> {
  DateTime? _selectedDay = DateTime.now();
  List<String> _events = [];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Positioned(
      top: size.height * 0.15,
      left: 0,
      right: 0,
      child: Column(
        children: [
          Calendar(
            selectedDay: _selectedDay,
            onDaySelected: (selectedDay, events) {
              setState(() {
                _selectedDay = selectedDay;
                _events = events;
              });
            },
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: _events.isEmpty
                ? const Text(
                    "لا توجد أحداث في هذا اليوم",
                    style: TextStyle(fontSize: 16),
                  )
                : Row(
                    children: _events
                        .map(
                          (event) => Expanded(
                            child: Card(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.event_note,
                                      color: Colors.blue,
                                    ),
                                    const SizedBox(width: 8),
                                    Flexible(
                                      child: Text(event),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
          ),
        ],
      ),
    );
  }
}
