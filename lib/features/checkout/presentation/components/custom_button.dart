import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onTap}) : super(key: key);
   final Function()? onTap;
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
          child: const Center(
            child: Text('Complete Payment',
                textAlign: TextAlign.center, style: Styles.style20),
          )),
    );
  }
}