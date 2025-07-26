import 'package:erp/Features/account_access/presentation/views/widgets/item_menu.dart';
import 'package:flutter/material.dart';

class ListTileReportsFooter extends StatelessWidget {
  const ListTileReportsFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ItemMenu(
              title: 'Items name',
            ),
            // const Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 30),
            //     child: Divider()),
            ItemMenu(
              title: 'Quantity',
            ),
            ItemMenu(
              title: 'Unit',
            ),
            ItemMenu(
              title: 'Reason for Request',
            ),
            ItemMenu(
              title: 'Notes',
            ),
          ],
        ),
      ),
    );
  }
}
