import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';


class ManifestTableHeader extends StatelessWidget{
  const ManifestTableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              '#',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'bahnschrift',
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Receipt',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'bahnschrift',
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Source',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'bahnschrift',
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Type',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'bahnschrift',
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Quantity',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'bahnschrift',
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Sender',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'bahnschrift',
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Consignee',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'bahnschrift',
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Against Shipping',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'bahnschrift',
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Miscellaneous',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'bahnschrift',
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Prepaid',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'bahnschrift',
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Discount',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'bahnschrift',
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Collection',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'bahnschrift',
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Adapter',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'bahnschrift',
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              ' ',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'bahnschrift',
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }

}
