import 'package:erp/constants.dart';
import 'package:flutter/material.dart';

import 'production_chart.dart';

class DailyProductionHeader extends StatelessWidget {
  const DailyProductionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 2.2,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(55),
          bottomRight: Radius.circular(55),
        ),
      ),
      child: const ProductionChart2(),
    );
  }
}
