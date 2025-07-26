import 'package:flutter/material.dart';
import 'daily_production_header.dart';
import 'production_calendar.dart';

class DailyproductionBody extends StatelessWidget {
  const DailyproductionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          DailyProductionHeader(),
          SizedBox(height: 10),
          ProductionCalendar(),
        ],
      ),
    );
  }
}
