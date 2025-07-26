import 'package:flutter/material.dart';

import 'account_access_headar.dart';
import 'expansion_tile_menu.dart';

class AccountAccessBody extends StatelessWidget {
  const AccountAccessBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AccountAccessHeadar(),
          SizedBox(height: 34),
          PermissionsWidget(),
        ],
      ),
    );
  }
}
