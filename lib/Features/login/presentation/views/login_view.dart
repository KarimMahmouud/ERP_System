import 'package:erp/Features/login/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    // print(Assets.imagesLogo);
    return Scaffold(
      body: SafeArea(
        child: LoginViewBody(),
      ),
    );
  }
}
