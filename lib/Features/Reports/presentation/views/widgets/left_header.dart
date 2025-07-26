import 'package:erp/Features/form/presentation/views/widgets/text_field.dart';
import 'package:erp/constants.dart';
import 'package:flutter/material.dart';

class LeftHeader extends StatelessWidget {
  const LeftHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Container(
            width: size.width / 2,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
              color: kPrimaryColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(33),
              ),
            ),
            child: const Column(
              children: [
                SizedBox(height: 25),
                MyTextField(
                  topColor: Colors.white,
                  l: 8,
                  r: 8,
                  topText: 'Items name',
                  hintText: '.... ',
                  controller: null,
                  validator: null,
                ),
                SizedBox(height: 8),
                MyTextField(
                  topColor: Colors.white,
                  l: 8,
                  r: 8,
                  topText: 'Requester name',
                  hintText: '....',
                  controller: null,
                  validator: null,
                ),
                SizedBox(height: 8),
                MyTextField(
                  topColor: Colors.white,
                  l: 8,
                  r: 8,
                  topText: 'Reicpient name',
                  hintText: '....',
                  controller: null,
                  validator: null,
                ),
                SizedBox(height: 8),
                MyTextField(
                  topColor: Colors.white,
                  l: 8,
                  r: 8,
                  topText: 'Date',
                  hintText: '....',
                  controller: null,
                  validator: null,
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
