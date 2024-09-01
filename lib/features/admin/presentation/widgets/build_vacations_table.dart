
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';

class BuildVacationsTable extends StatelessWidget{
  @override

  String start_date = '25-07-2009';
  String end_date = '25-07-2009';
  String reason = 'Condition';
  String create = 'Mohammed Ali Hwaidi';
  String creator_date = '25-07-2009';

  BuildVacationsTable({super.key});

  @override
  Widget build(BuildContext context) {
   return  ListView.builder(
     scrollDirection: Axis.horizontal,
     itemBuilder: (context, index) {
       return Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20.0),
         child: Column(
           children: [
             Expanded(
               child: Text(
                 start_date,
                 style: TextStyle(
                   color: AppColors.pureBlack,
                   fontFamily: 'bahnschrift',
                   fontSize: 16.sp,
                 ),
               ),
             ),
             Expanded(
               child: Text(
                 end_date,
                 style: TextStyle(
                   color: AppColors.pureBlack,
                   fontFamily: 'bahnschrift',
                   fontSize: 16.sp,
                 ),
               ),
             ),
             Expanded(
               child: Text(
                 reason,
                 style: TextStyle(
                   color: AppColors.pureBlack,
                   fontFamily: 'bahnschrift',
                   fontSize: 16.sp,
                 ),
               ),
             ),
             Expanded(
               child: Text(
                 create,
                 style: TextStyle(
                   color: AppColors.pureBlack,
                   fontFamily: 'bahnschrift',
                   fontSize: 16.sp,
                 ),
               ),
             ),
             Expanded(
               child: Text(
                 creator_date,
                 style: TextStyle(
                   color: AppColors.pureBlack,
                   fontFamily: 'bahnschrift',
                   fontSize: 16.sp,
                 ),
               ),
             ),
           ],
         ),
       );
     },
     itemCount: 15,
   );
  }

}