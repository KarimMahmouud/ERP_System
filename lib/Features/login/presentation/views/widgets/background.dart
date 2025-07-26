import 'package:flutter/material.dart';

import 'package:erp/constants.dart';

class BackGroung extends StatelessWidget {
  const BackGroung({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Container(
          color: const Color(0xFFC6C279),
        ),
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.70,
            color: kFirstColor,
          ),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff427469),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                ),
              ],
            ),
            width: size.width * 0.8,
            height: size.height * 0.6,
            child: child,
          ),
        ),
      ],
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // نبدأ من أعلى اليسار
    path.moveTo(0, 0);
    // خط أفقي لأعلى اليمين (كامل)
    path.lineTo(size.width, 0);
    // خط عمودي من أعلى اليمين لنص الشاشة بالطول
    path.lineTo(size.width, size.height / 2.2);
    // خط مائل من نص الشاشة اليمين لأسفل اليسار
    path.lineTo(0, size.height / 1.1);
    // خط عمودي لأعلى اليسار
    path.lineTo(0, 0);
    // إغلاق المسار
    path.close();

    return path;
  }

  bool shouldreclip(CustomClipper<Path> oldClipper) => false;

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
