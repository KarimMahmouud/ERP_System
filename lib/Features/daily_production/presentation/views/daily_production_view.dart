import 'package:erp/constants.dart';
import 'package:flutter/material.dart';

import 'widgets/daily_production_body.dart';

class Dailyproduction extends StatelessWidget {
  const Dailyproduction({super.key});

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
        body: const DailyproductionBody(),
      ),
    );
  }
}
