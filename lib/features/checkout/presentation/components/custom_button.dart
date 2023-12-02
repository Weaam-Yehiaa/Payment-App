import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onTap, required this.title})
      : super(key: key);
  final Function()? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height / 13,
          decoration: ShapeDecoration(
            color: const Color(0xFF34A853),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Center(
            child:
                Text(title, textAlign: TextAlign.center, style: Styles.style20),
          )),
    );
  }
}
