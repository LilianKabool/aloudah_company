import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';

class ViewDriverInformation extends StatelessWidget{
  ViewDriverInformation({
    required this.driver_id,
    // required this.d_certificate_type,
    required this.driver_address,
    // required this.driver_b_date,
    // required this.driver_b_place,
    required this.driver_emp_date,
    // required this.driver_gender,
    // required this.driver_mobile,
    // required this.driver_mother_name,
    required this.driver_name,
    required this.driver_phone,
    // required this.driver_rank,
    // required this.driver_rate,
    // required this.driver_resignation_date,
    // required this.driver_salary,
    // required this.driver_vacations,
  });
  final String driver_name ;
   final int driver_id ;
// final String driver_gender;
// final String driver_b_date ;
// final String driver_b_place ;
final int driver_phone ;
// final String driver_mobile;
final String driver_address ;
// final int driver_vacations ;
// final String driver_mother_name ;
// final String driver_rank ;
// final double driver_rate ;
// final double driver_salary ;
final String driver_emp_date ;
// final String driver_resignation_date ;
// final String d_certificate_type ;



  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        children: [
          Row(
            children: [
              Text(
                'ID',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth/5.8,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      '$driver_id',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SpaceItem(),
          Row(
            children: [
              Text(
                'Name',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth/10.4,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      "$driver_name",
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SpaceItem(),
          // Row(
          //   children: [
          //     Column(
          //       children: [
          //         Text(
          //           'Mother',
          //           style: TextStyle(
          //             fontFamily: 'bahnschrift',
          //             color: AppColors.darkBlue,
          //             fontSize: 16.sp,
          //           ),
          //         ),
          //         Text(
          //           'Name',
          //           style: TextStyle(
          //             fontFamily: 'bahnschrift',
          //             color: AppColors.darkBlue,
          //             fontSize: 16.sp,
          //           ),
          //         ),
          //       ],
          //     ),
          //     // SizedBox(
          //     //   width: screenWidth/14.4,
          //     // ),
          //     // Expanded(
          //     //   child: Container(
          //     //     height: 40.h,
          //     //     color: AppColors.mediumBlue,
          //     //     child: Center(
          //     //       child: Text(
          //     //         "driver_mother_name",
          //     //         style: TextStyle(
          //     //           fontFamily: 'bahnschrift',
          //     //           fontSize: 16.sp,
          //     //         ),
          //     //       ),
          //     //     ),
          //     //   ),
          //     // ),
          //   ],
          // ),
          // const SpaceItem(),
          // Row(
          //   children: [
          //     Text(
          //       'Gender',
          //       style: TextStyle(
          //         fontFamily: 'bahnschrift',
          //         color: AppColors.darkBlue,
          //         fontSize: 16.sp,
          //       ),
          //     ),
          //     SizedBox(
          //       width: screenWidth/14.4,
          //     ),
          //     Expanded(
          //       child: Container(
          //         height: 40.h,
          //         color: AppColors.mediumBlue,
          //         child: Center(
          //           child: Text(
          //            " driver_gender",
          //             style: TextStyle(
          //               fontFamily: 'bahnschrift',
          //               fontSize: 16.sp,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // const SpaceItem(),
          // Row(
          //   children: [
          //     Text(
          //       'B_Date',
          //       style: TextStyle(
          //         fontFamily: 'bahnschrift',
          //         color: AppColors.darkBlue,
          //         fontSize: 16.sp,
          //       ),
          //     ),
          //     SizedBox(
          //       width: screenWidth/13.5,
          //     ),
          //     Expanded(
          //       child: Container(
          //         height: 40.h,
          //         color: AppColors.mediumBlue,
          //         child: Center(
          //           child: Text(
          //             "driver_b_date",
          //             style: TextStyle(
          //               fontFamily: 'bahnschrift',
          //               fontSize: 16.sp,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // const SpaceItem(),
          // Row(
          //   children: [
          //     Text(
          //       'B_Place',
          //       style: TextStyle(
          //         fontFamily: 'bahnschrift',
          //         color: AppColors.darkBlue,
          //         fontSize: 16.sp,
          //       ),
          //     ),
          //     SizedBox(
          //       width: screenWidth/17.8,
          //     ),
          //     Expanded(
          //       child: Container(
          //         height: 40.h,
          //         color: AppColors.mediumBlue,
          //         child: Center(
          //           child: Text(
          //             "driver_b_place",
          //             style: TextStyle(
          //               fontFamily: 'bahnschrift',
          //               fontSize: 16.sp,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          const SpaceItem(),
          Row(
            children: [
              Text(
                'Phone',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth/11,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      '$driver_phone',
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // const SpaceItem(),
          // Row(
          //   children: [
          //     Text(
          //       'Mobile',
          //       style: TextStyle(
          //         fontFamily: 'bahnschrift',
          //         color: AppColors.darkBlue,
          //         fontSize: 16.sp,
          //       ),
          //     ),
          //     SizedBox(
          //       width: screenWidth/11.6,
          //     ),
          //     Expanded(
          //       child: Container(
          //         height: 40.h,
          //         color: AppColors.mediumBlue,
          //         child: Center(
          //           child: Text(
          //            " driver_mobile",
          //             style: TextStyle(
          //               fontFamily: 'bahnschrift',
          //               fontSize: 16.sp,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          const SpaceItem(),
          Row(
            children: [
              Text(
                'Address',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth/20,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      "$driver_address",
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SpaceItem(),
          // Row(
          //   children: [
          //     Text(
          //       'Rank',
          //       style: TextStyle(
          //         fontFamily: 'bahnschrift',
          //         color: AppColors.darkBlue,
          //         fontSize: 16.sp,
          //       ),
          //     ),
          //     SizedBox(
          //       width: screenWidth/8.5,
          //     ),
          //     Expanded(
          //       child: Container(
          //         height: 40.h,
          //         color: AppColors.mediumBlue,
          //         child: Center(
          //           child: Text(
          //             "driver_rank",
          //             style: TextStyle(
          //               fontFamily: 'bahnschrift',
          //               fontSize: 16.sp,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // const SpaceItem(),
          // Row(
          //   children: [
          //     Text(
          //       'Rate',
          //       style: TextStyle(
          //         fontFamily: 'bahnschrift',
          //         color: AppColors.darkBlue,
          //         fontSize: 16.sp,
          //       ),
          //     ),
          //     SizedBox(
          //       width: screenWidth/7.8,
          //     ),
          //     Expanded(
          //       child: Container(
          //         height: 40.h,
          //         color: AppColors.mediumBlue,
          //         child: Center(
          //           child: Text(
          //             'driver_rate',
          //             style: TextStyle(
          //               fontFamily: 'bahnschrift',
          //               fontSize: 16.sp,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // const SpaceItem(),
          // Row(
          //   children: [
          //     Text(
          //       'Salary',
          //       style: TextStyle(
          //         fontFamily: 'bahnschrift',
          //         color: AppColors.darkBlue,
          //         fontSize: 16.sp,
          //       ),
          //     ),
          //     SizedBox(
          //       width: screenWidth/11,
          //     ),
          //     Expanded(
          //       child: Container(
          //         height: 40.h,
          //         color: AppColors.mediumBlue,
          //         child: Center(
          //           child: Text(
          //             'driver_salary',
          //             style: TextStyle(
          //               fontFamily: 'bahnschrift',
          //               fontSize: 16.sp,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // const SpaceItem(),
          // Row(
          //   children: [
          //     Text(
          //       'Vacations',
          //       style: TextStyle(
          //         fontFamily: 'bahnschrift',
          //         color: AppColors.darkBlue,
          //         fontSize: 16.sp,
          //       ),
          //     ),
          //     SizedBox(
          //       width: screenWidth/40,
          //     ),
          //     Expanded(
          //       child: GestureDetector(
          //         onTap: (){
          //
          //         },
          //         child: Container(
          //           height: 40.h,
          //           color: AppColors.mediumBlue,
          //           child: Center(
          //             child: Text(
          //               'driver_vacations',
          //               style: TextStyle(
          //                 fontFamily: 'bahnschrift',
          //                 fontSize: 16.sp,
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // const SpaceItem(),
          // Row(
          //   children: [
          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text(
          //           'Driving',
          //           style: TextStyle(
          //             fontFamily: 'bahnschrift',
          //             color: AppColors.darkBlue,
          //             fontSize: 16.sp,
          //           ),
          //         ),
          //         Text(
          //           'Certificate',
          //           style: TextStyle(
          //             fontFamily: 'bahnschrift',
          //             color: AppColors.darkBlue,
          //             fontSize: 16.sp,
          //           ),
          //         ),
          //       ],
          //     ),
          //     SizedBox(
          //       width: screenWidth/80,
          //     ),
          //     Expanded(
          //       child: GestureDetector(
          //         onTap: (){},
          //         child: Container(
          //           height: 40.h,
          //           color: AppColors.mediumBlue,
          //           child: Center(
          //             child: Text(
          //              ' d_certificate_type',
          //               style: TextStyle(
          //                 fontFamily: 'bahnschrift',
          //                 fontSize: 16.sp,
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // const SpaceItem(),
          Row(
            children: [
              Text(
                'Emp_Date',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth/50,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      "$driver_emp_date",
                      style: TextStyle(
                        fontFamily: 'bahnschrift',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SpaceItem(),
          // Row(
          //   children: [
          //     Text(
          //       'Resi_Date',
          //       style: TextStyle(
          //         fontFamily: 'bahnschrift',
          //         color: AppColors.darkBlue,
          //         fontSize: 16.sp,
          //       ),
          //     ),
          //     SizedBox(
          //       width: screenWidth/50,
          //     ),
          //     Expanded(
          //       child: Container(
          //         height: 40.h,
          //         color: AppColors.mediumBlue,
          //         child: Center(
          //           child: Text(
          //             "driver_resignation_date",
          //             style: TextStyle(
          //               fontFamily: 'bahnschrift',
          //               fontSize: 16.sp,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // const SpaceItem(),
        ],
      ),
    );
  }

}