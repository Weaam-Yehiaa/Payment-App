
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/styles.dart';

AppBar appBarComponent(String title)=>AppBar(
  leading: Center(child: SvgPicture.asset('assets/images/arrow.svg')),
  centerTitle: true,
  backgroundColor: Colors.transparent,
  elevation: 0,
  title: Text(
    title,
    textAlign: TextAlign.center,
    style: Styles.style24,
  ),
);