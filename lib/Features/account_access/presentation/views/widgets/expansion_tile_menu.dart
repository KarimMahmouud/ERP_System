import 'package:flutter/material.dart';
import 'item_menu.dart';

class PermissionsWidget extends StatelessWidget {
  const PermissionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffD9D9D9),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            ItemMenu(title: 'Inventory'),
            ItemMenu(title: 'Production'),
          ],
        ),
      ),
    );
  }
}
