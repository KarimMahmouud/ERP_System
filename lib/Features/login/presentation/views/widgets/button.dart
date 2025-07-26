// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(

        
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffC6C279),
          foregroundColor: const Color(0xff112C73),
          minimumSize: const Size(145, 45),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        onPressed: () {
          // ignore: avoid_print
          print('Login button pressed');
          if (formKey.currentState!.validate()) {}
        },
        child: const Text('Login'),
      ),
    );
  }
}
