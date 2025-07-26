import 'package:erp/constants.dart';
import 'package:flutter/material.dart';

import 'widgets/account_access_body.dart';

class AccountAccess extends StatelessWidget {
  const AccountAccess({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xffFDDEDB),
          child: const Icon(
            Icons.add,
            color: Colors.black,
            size: 40,
          ),
        ),
        body: const AccountAccessBody(),
      ),
    );
  }
}
