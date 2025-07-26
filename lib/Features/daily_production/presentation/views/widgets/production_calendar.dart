import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ProductionCalendar extends StatefulWidget {
  const ProductionCalendar({super.key});

  @override
  State<ProductionCalendar> createState() => _ProductionCalendarState();
}

class _ProductionCalendarState extends State<ProductionCalendar> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  final Map<DateTime, List<Map<String, dynamic>>> _productionData = {
    DateTime.utc(2025, 6, 23): [
      {'name': 'منتج A', 'unit': 'كجم', 'amount': 100},
      {'name': 'منتج B', 'unit': 'لتر', 'amount': 50},
    ],
    DateTime.utc(2025, 6, 24): [
      {'name': 'منتج C', 'unit': 'قطعة', 'amount': 200},
      {'name': 'منتج C', 'unit': 'قطعة', 'amount': 200},
      {'name': 'منتج C', 'unit': 'قطعة', 'amount': 200},
      {'name': 'منتج C', 'unit': 'قطعة', 'amount': 200},
      {'name': 'منتج C', 'unit': 'قطعة', 'amount': 200},
      {'name': 'منتج C', 'unit': 'قطعة', 'amount': 200},
      {'name': 'منتج C', 'unit': 'قطعة', 'amount': 200},
    ],
  };

  List<Map<String, dynamic>> _getProductionsForDay(DateTime day) {
    return _productionData[DateTime.utc(day.year, day.month, day.day)] ?? [];
  }

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
  }

  @override
  Widget build(BuildContext context) {
    final productions = _getProductionsForDay(_selectedDay!);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF487E6B),
              borderRadius: BorderRadius.circular(16),
            ),
            child: TableCalendar(
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              calendarFormat: CalendarFormat.week,
              availableCalendarFormats: const {
                CalendarFormat.week: 'أسبوع',
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              calendarStyle: const CalendarStyle(
                todayDecoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.fromBorderSide(
                      BorderSide(color: Colors.black, width: 1.5)),
                  color: Colors.transparent,
                ),
                selectedDecoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.fromBorderSide(
                      BorderSide(color: Colors.red, width: 1.5)),
                  color: Colors.transparent,
                ),
                weekendTextStyle: TextStyle(color: Colors.red),
                defaultTextStyle: TextStyle(color: Colors.red),
                outsideDaysVisible: false,
              ),
              headerStyle: const HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
                titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                leftChevronIcon: Icon(Icons.chevron_left, color: Colors.white),
                rightChevronIcon:
                    Icon(Icons.chevron_right, color: Colors.white),
              ),
              daysOfWeekStyle: const DaysOfWeekStyle(
                weekendStyle: TextStyle(color: Colors.white),
                weekdayStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 16),
          if (productions.isEmpty)
            const Text(
              '! لا يوجد إنتاج لهذا اليوم',
              style: TextStyle(fontSize: 16),
            )
          else
            Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: productions.map(
                (item) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name: ${item['name']}'),
                            Text('Unit: ${item['unit']}'),
                            Text('Amount: ${item['amount']}'),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
        ],
      ),
    );
  }
}
