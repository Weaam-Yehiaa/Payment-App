import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContainerForPaymentCard extends StatelessWidget {
  const ContainerForPaymentCard({this.isActive = false, Key? key})
      : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 1.50,
              color: isActive ? const Color(0xFF34A853) : Colors.black),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows:  [
        if(isActive)
          const BoxShadow(
            color: Color(0xFF34A853),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Container(
        width: 50,
        height: 23,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Center(
            child: SvgPicture.asset('assets/images/visa.svg', height: 30)),
      ),
    );
  }
}
