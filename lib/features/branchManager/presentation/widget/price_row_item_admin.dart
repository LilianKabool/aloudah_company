import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:aloudeh_company/core/constants/colors_constants.dart';


class PriceRowItemAdmin extends StatefulWidget{

  @override
  State<PriceRowItemAdmin> createState() => _PriceRowItemAdminState();
}

class _PriceRowItemAdminState extends State<PriceRowItemAdmin> {

  String material_type = 'Table';
  String weight = '1 Kg';
  String price = '200';
  String editedPrice = '';
  String editedWeight = '';

  void _editPrice() {
    TextEditingController editedPriceController = TextEditingController(text: price);
    TextEditingController editedWeightController = TextEditingController(text: weight);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Edit Price & Weight',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: Column(
            children: [
              TextField(
                controller: editedWeightController,
                onChanged: (value) {
                  weight = value;
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.monitor_weight_outlined,
                    color: AppColors.darkBlue,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                controller: editedPriceController,
                onChanged: (value) {
                  price = value;
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.price_change_outlined,
                    color: AppColors.darkBlue,
                  ),
                ),
              ),
            ],
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  editedPrice = editedPriceController.text;
                  editedWeight = editedWeightController.text;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 20.0,right: 10.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              '${material_type}',
              style: TextStyle(
                fontSize: 17.sp,
                fontFamily: 'bahnschrift',
                color: AppColors.darkBlue,
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 40.h,
              decoration: BoxDecoration(
                color: AppColors.yellow,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Center(
                child: Text(
                  '${weight}',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: 'bahnschrift',
                    color: AppColors.darkBlue,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: Container(
              height: 40.h,
              decoration: BoxDecoration(
                color: AppColors.darkBlue,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Center(
                child: Text(
                  '${price}',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: 'bahnschrift',
                    color: AppColors.pureWhite,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 40.h,
              child: FloatingActionButton(
                onPressed: () {
                  _editPrice();
                },
                shape: CircleBorder(),
                backgroundColor: AppColors.lightBlue,
                elevation: 0.0,
                child: Icon(
                  Icons.edit,
                  color: AppColors.darkBlue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}