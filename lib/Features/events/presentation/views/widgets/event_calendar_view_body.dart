import 'package:erp/constants.dart';
import 'package:flutter/material.dart';

import 'calendar_text.dart';

class EventCalendarBody extends StatefulWidget {
  const EventCalendarBody({super.key});

  @override
  State<EventCalendarBody> createState() => _EventCalendarBodyState();
}

class _EventCalendarBodyState extends State<EventCalendarBody> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.3),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(55),
                  topRight: Radius.circular(55),
                ),
              ),
            ),
          ),
          const CalendarText(),
        ],
      ),
    );
  }
}
