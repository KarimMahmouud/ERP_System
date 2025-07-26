import 'package:erp/constants.dart';
import 'package:flutter/material.dart';

class FooterRightHeader extends StatefulWidget {
  const FooterRightHeader({super.key});

  @override
  State<FooterRightHeader> createState() => _FooterRightHeaderState();
}

class _FooterRightHeaderState extends State<FooterRightHeader> {
  String selectedShift = 'First shift';

  final List<String> shifts = [
    'First shift',
    'Second shift',
    'Third shift',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
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
        child: Column(
          children: shifts.map((shift) {
            final isSelected = shift == selectedShift;
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedShift = shift;
                  debugPrint(selectedShift);
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                child: Row(
                  children: [
                    Text(
                      shift,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Icon(
                      isSelected ? Icons.check_circle : Icons.circle_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
