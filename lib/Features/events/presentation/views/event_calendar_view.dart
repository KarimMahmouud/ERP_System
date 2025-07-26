import 'package:erp/Features/events/presentation/views/widgets/event_calendar_view_body.dart';
import 'package:erp/constants.dart';
import 'package:flutter/material.dart';

class EventCalendar extends StatelessWidget {
  const EventCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xffFDDEDB),
          child: const Icon(
            Icons.add,
            color: Colors.black,
            size: 40,
          ),
        ),
        backgroundColor: kCecondColor,
        body: const EventCalendarBody(),
      ),
    );
  }
}
