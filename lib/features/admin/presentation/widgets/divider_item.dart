import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';



class DividerItem extends StatelessWidget{
  const DividerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.h,
      color: AppColors.darkBlue,
    );
  }

}