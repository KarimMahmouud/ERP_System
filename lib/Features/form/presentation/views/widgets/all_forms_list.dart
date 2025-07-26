import 'package:erp/constants.dart';
import 'package:flutter/material.dart';

import 'text_field.dart';

class AllFormsList extends StatelessWidget {
  const AllFormsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: kCecondColor,
          borderRadius: BorderRadius.circular(33),
        ),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              MyTextField(
                controller: null,
                topText: 'Full name',
                hintText: '....',
                validator: null,
              ),
              SizedBox(height: 15),
              MyTextField(
                controller: null,
                topText: 'Email',
                hintText: '....',
                validator: null,
              ),
              SizedBox(height: 15),
              MyTextField(
                controller: null,
                topText: 'Phone',
                hintText: '....',
                validator: null,
              ),
              SizedBox(height: 15),
              MyTextField(
                controller: null,
                topText: 'Department ',
                hintText: '....',
                validator: null,
              ),
              SizedBox(height: 15),
              MyTextField(
                controller: null,
                topText: 'Job Title',
                hintText: '....',
                validator: null,
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
