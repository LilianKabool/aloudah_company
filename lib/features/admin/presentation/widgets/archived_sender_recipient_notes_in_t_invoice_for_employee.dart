import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';


class ArchivedSenderRecipientNotesInT_InvoiceForEmployee extends StatelessWidget{

  String sender = 'Seba Taleaa';
  String recipient = 'Lilian Kabool';
  String notes = 'Sanameen - 092345642';

  ArchivedSenderRecipientNotesInT_InvoiceForEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Sender',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 11.3,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      sender,
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
                'Recipient',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 22,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      recipient,
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
                'Notes',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 8.9,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  color: AppColors.mediumBlue,
                  child: Center(
                    child: Text(
                      notes,
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
        ],
      ),
    );
  }

}