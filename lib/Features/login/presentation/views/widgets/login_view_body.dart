import 'package:erp/Features/login/presentation/views/widgets/button.dart';
import 'package:erp/Features/login/presentation/views/widgets/text_field.dart';
import 'package:flutter/material.dart';

import 'background.dart';

class LoginViewBody extends StatelessWidget {
  LoginViewBody({super.key});

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BackGroung(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              'assets/images/grevona.png',
              width: 150,
              height: 150,
            ),
          ),
          // SvgPicture.asset(
          //   'assets/images/logo.svg',
          //   width: 50,
          //   height: 50,
          //   placeholderBuilder: (context) =>
          //       const CircularProgressIndicator(),
          // ),
          Form(
            key: formKey,
            child: Column(
              children: [
                TextFormFieldd(
                  topText: 'Email',
                  hintText: 'Enter your email',
                  controller: emailController,
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !value.contains('@') ||
                        !value.contains('.') ||
                        value.length < 5 ||
                        !value.contains('.com')) {
                      return 'Email is required';
                    } else {
                      return '';
                    }
                  },
                ),
                const SizedBox(height: 30),
                TextFormFieldd(
                  topText: 'Password',
                  hintText: 'Enter your password',
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 6) {
                      return 'Password is required';
                    }
                    return '';
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Button(
            formKey: formKey,
          ),
        ],
      ),
    );
  }
}
