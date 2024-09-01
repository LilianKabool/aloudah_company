import '../../presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aloudeh_company/core/constants/colors_constants.dart';


class PromoteEmployeeWidget extends StatefulWidget{

  @override
  State<PromoteEmployeeWidget> createState() => _PromoteEmployeeWidgetState();
}

class _PromoteEmployeeWidgetState extends State<PromoteEmployeeWidget> {

  var employee_rank = TextEditingController();
  var branches = ["Damascus", "Aleppo", ""];
  var selectedBranch = "";

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Text(
                'Rank',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 8.5,
              ),
              Expanded(
                child: TextFormField(
                  controller: employee_rank,
                  cursorColor: AppColors.darkBlue,
                  decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: AppColors.mediumBlue,
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Row(
            children: [
              Text(
                'Branch',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.darkBlue,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                width: screenWidth / 13,
              ),
              Expanded(
                child: Container(
                  color: AppColors.mediumBlue,
                  height: 40.h,
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      borderRadius: BorderRadius.circular(10.0),
                      dropdownColor: AppColors.yellow,
                      iconEnabledColor: AppColors.darkBlue,
                      items: branches.map(
                            (String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          );
                        },
                      ).toList(),
                      onChanged: (thebranch) {
                        setState(() {
                          selectedBranch = (thebranch.toString());
                        });
                      },
                      value: selectedBranch,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          SpaceItem(),
          DoneButton(),
        ],
      ),
    );
  }

  Widget DoneButton() => Container(
    height: 40.h,
    width: double.infinity,
    child: FloatingActionButton(
      onPressed: () {},
      child: Text(
        'Done',
        style: TextStyle(
          fontFamily: 'bahnschrift',
          fontWeight: FontWeight.bold,
          fontSize: 17.0.sp,
          color: AppColors.mediumBlue,
        ),
      ),
      backgroundColor: AppColors.darkBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.r),
      ),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5.r),
      color: AppColors.darkBlue,
    ),
  );
}