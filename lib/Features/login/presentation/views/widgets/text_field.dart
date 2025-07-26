import 'package:flutter/material.dart';

class TextFormFieldd extends StatelessWidget {
  const TextFormFieldd({
    Key? key,
    required this.topText,
    required this.hintText,
    required this.controller,
    required this.validator,
  }) : super(key: key);

  final String hintText, topText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18, bottom: 4),
            child: Text(
              topText,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          TextFormField(
            controller: controller,
            validator: validator,
            obscureText: topText.toLowerCase().contains('password'),
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xFFc4b566),
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(25),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(25),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(25),
              ),
              errorStyle: const TextStyle(
                color: Colors.red,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
