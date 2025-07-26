import 'package:erp/Features/Reports/presentation/views/widgets/left_header.dart';
import 'package:flutter/material.dart';
import 'container_footer.dart';
import 'list_tile_reports_footer.dart';
import 'right_header.dart';
import 'top_text.dart';

class ReportsViewBody extends StatelessWidget {
  const ReportsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: ContainerFooter(
            child: Padding(
              padding: EdgeInsets.only(
                top: size.height / 4,
                right: 30,
                left: 30,
              ),
              child: const ListTileReportsFooter(),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LeftHeader(),
              RightHeader(),
            ],
          ),
        ),
        const Positioned(
          top: 5,
          left: 0,
          right: 0,
          child: Center(
            child: TopText(),
          ),
        ),
      ],
    );
  }
}
