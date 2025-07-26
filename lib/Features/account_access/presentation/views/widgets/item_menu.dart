import 'package:erp/constants.dart';
import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  ItemMenu({
    super.key,
    required this.title,
  });

  final String title;
  final List<String> permissions = [
    'Can Create Report',
    'Can Edit Report',
    'Can Show Report',
    'Can Delete Report',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: ExpansionTile(
          backgroundColor: kPrimaryColor,
          collapsedBackgroundColor: kPrimaryColor,
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          iconColor: Colors.white,
          collapsedIconColor: Colors.white,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
              width: double.infinity,
              color: Colors.white,
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: permissions.length,
                separatorBuilder: (context, index) => const SizedBox(height: 6),
                itemBuilder: (context, index) => Row(
                  children: [
                    const Icon(Icons.shield_outlined, color: Colors.green),
                    const SizedBox(width: 5),
                    Text(permissions[index]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
