import 'package:flutter/material.dart';

class AccountAccessHeadar extends StatelessWidget {
  const AccountAccessHeadar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          AspectRatio(
            aspectRatio: 3.3,
            child: CircleAvatar(
              radius: size.width * 0.3 / 2,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                size: size.width * 0.5 / 2,
                color: const Color.fromARGB(255, 166, 163, 163),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Kareem Mahmoud',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
