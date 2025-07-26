import 'package:erp/constants.dart';
import 'package:flutter/material.dart';

import 'widgets/form_view_body.dart';

class FormView extends StatelessWidget {
  const FormView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xffFDDEDB),
          child: const Icon(
            Icons.add,
            color: Colors.black,
            size: 40,
          ),
        ),
        backgroundColor: kPrimaryColor,
        body: const FormViewBody(),
      ),
    );
  }
}
