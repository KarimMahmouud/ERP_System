import 'package:erp/constants.dart';
import 'package:flutter/material.dart';

class TopRightHeader extends StatelessWidget {
  const TopRightHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.only(top: size.height * .13),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
          color: kPrimaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(33),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(26),
          child: Text(
            'Issue Permit (1)',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}