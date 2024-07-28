import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/utils/styles.dart';

AppBar AppBarMethod({required String title, void Function()? onTap}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    leading: GestureDetector(
        onTap: onTap,
        child: Center(child: SvgPicture.asset('assets/images/Arrow.svg'))),
    title: Text(
      textAlign: TextAlign.center,
      title,
      style: Styles.style25,
    ),
  );
}
