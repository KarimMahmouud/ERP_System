import 'package:erp/Features/account_access/presentation/views/widgets/account_access_headar.dart';
import 'package:flutter/material.dart';

import 'all_forms_list.dart';

class FormViewBody extends StatelessWidget {
  const FormViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AccountAccessHeadar(),
          SizedBox(height: 30),
          AllFormsList(),
        ],
      ),
    );
  }
}
