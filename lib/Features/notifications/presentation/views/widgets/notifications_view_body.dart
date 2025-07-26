import 'package:flutter/material.dart';

import 'item_card.dart';

class NotificationsViewBody extends StatelessWidget {
  const NotificationsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'Notifications',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
              ),
            ),
          ),
          SizedBox(height: 12),
          ItemCard(),
        ],
      ),
    );
  }
}
