import '../../presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aloudeh_company/core/constants/colors_constants.dart';

class EnterBranchGoods extends StatelessWidget{

  var good_name = TextEditingController();
  var good_wieght = TextEditingController();
  var good_price = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SpaceItem(),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 40.h,
                  child: TextFormField(
                    controller: good_name,
                    decoration: InputDecoration(
                      isDense: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.darkBlue,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.darkBlue,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      hintText: 'Good',
                      hintStyle: TextStyle(
                        color: AppColors.darkBlue,
                        fontFamily: 'Bahnschrift',
                      ),
                    ),
                    onChanged: (value) {
                      print(value);
                    },
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth/75,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  child: TextFormField(
                    controller: good_wieght,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      isDense: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.darkBlue,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.darkBlue,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      hintText: 'Wieght',
                      hintStyle: TextStyle(
                        color: AppColors.darkBlue,
                        fontFamily: 'Bahnschrift',
                      ),
                    ),
                    onChanged: (value) {
                      print(value);
                    },
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth/75,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  child: TextFormField(
                    controller: good_price,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      isDense: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.darkBlue,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.darkBlue,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      hintText: 'Price',
                      hintStyle: TextStyle(
                        color: AppColors.darkBlue,
                        fontFamily: 'Bahnschrift',
                      ),
                    ),
                    onChanged: (value) {
                      print(value);
                    },
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                  ),
                ),
              ),
            ],
          ),
          SpaceItem(),
          Container(
            width: double.infinity,
            height: 40.h,
            child: FloatingActionButton(
              onPressed: (){},
              child: Text(
                'Enter Good',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  //fontWeight: FontWeight.bold,
                  fontSize: 17.0.sp,
                  color: AppColors.pureWhite,
                ),
              ),
              backgroundColor: AppColors.darkBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
              elevation: 0.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              //color: AppColors.yellow,
            ),
          ),
          //SpaceItem(),
        ],
      ),
    );
  }
}