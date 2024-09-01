// import '../../presentation/widget/space_item.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import 'package:aloudeh_company/core/constants/colors_constants.dart';
//
// class EnterTruckInformation extends StatelessWidget{
//
//   var truck_id = TextEditingController();
//   var truck_line  = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Truck Information',
//             style: TextStyle(
//               color: AppColors.yellow,
//               fontSize: 17.sp,
//               fontFamily: 'bahnschrift',
//             ),
//           ),
//           SpaceItem(),
//           Text(
//             'Truck ID',
//             style: TextStyle(
//               color: AppColors.darkBlue,
//               fontFamily: 'bahnschrift',
//               fontSize: 16.sp,
//             ),
//           ),
//           Container(
//             height: 44.h,
//             child: TextFormField(
//               controller: truck_id,
//               cursorColor: AppColors.darkBlue,
//               decoration: InputDecoration(
//                 isDense: true,
//                 filled: true,
//                 fillColor: AppColors.mediumBlue,
//                 border: InputBorder.none,
//               ),
//               onChanged: (value) {
//                 print(value);
//               },
//               onFieldSubmitted: (value) {
//                 print(value);
//               },
//             ),
//           ),
//           SpaceItem(),
//           Text(
//             'Truck Line',
//             style: TextStyle(
//               color: AppColors.darkBlue,
//               fontFamily: 'bahnschrift',
//               fontSize: 16.sp,
//             ),
//           ),
//           Container(
//             height: 44.h,
//             child: TextFormField(
//               controller: truck_line,
//               cursorColor: AppColors.darkBlue,
//               decoration: InputDecoration(
//                 isDense: true,
//                 filled: true,
//                 fillColor: AppColors.mediumBlue,
//                 border: InputBorder.none,
//               ),
//               onChanged: (value) {
//                 print(value);
//               },
//               onFieldSubmitted: (value) {
//                 print(value);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
// }