import 'package:flutter/material.dart';
import 'footer_right_header.dart';
import 'top_right_header.dart';

class RightHeader extends StatelessWidget {
  const RightHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TopRightHeader(),
        SizedBox(height: 10),
        FooterRightHeader(),
      ],
    );
  }
}
