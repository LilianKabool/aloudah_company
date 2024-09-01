import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aloudeh_company/core/constants/colors_constants.dart';

class LogoImageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/images/Logo2.png'),
      width: 39.w,
      height: 40.h,
    );
  }

}