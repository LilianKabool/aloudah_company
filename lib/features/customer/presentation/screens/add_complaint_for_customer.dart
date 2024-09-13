import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/divider_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../branchManager/presentation/widget/complaint_text.dart';


class Complaint {
  final String text;
  List<String> complaints;

  Complaint({required this.text, required this.complaints});
}

class AddComplaintScreenForCustomer extends StatefulWidget{

  final Complaint? complaint;

  AddComplaintScreenForCustomer({required this.complaint});

  @override
  State<AddComplaintScreenForCustomer> createState() => _AddComplaintScreenForCustomerState();
}

class _AddComplaintScreenForCustomerState extends State<AddComplaintScreenForCustomer> {

  List<String> complaints = [];
  String author = 'Seba Taleaa';
  var complaintController = TextEditingController();

  void initState() {
    super.initState();
    if (widget.complaint != null) {
      complaints = widget.complaint!.complaints;
    }
  }



  void navigateToComplaintScreen(Complaint complaint) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddComplaintScreenForCustomer(complaint: complaint),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: ComplaintText(),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            color: AppColors.darkBlue,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: DividerItem(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding:  EdgeInsets.symmetric(vertical: 20.h),
              child: ListView.separated(
                itemCount: complaints.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w),
                    child: Container(
                      width: double.infinity,
                      //height: 100.h,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.account_circle,
                            color: AppColors.darkBlue,
                            size: 50,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${author}',
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    fontFamily: 'bahnschrift',
                                  ),
                                ),
                                Text(
                                  complaints[index],
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'bahnschrift',
                                    //overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  height: 20.h,
                ),
              ),
            ),
          ),//
          TextFormField(
            controller: complaintController,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2.0,
                  color: AppColors.darkBlue,
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(37.r),
                  topLeft: Radius.circular(37.r),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2.0,
                  color: AppColors.darkBlue,
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(37.r),
                  topLeft: Radius.circular(37.r),
                ),
              ),
              hintText: 'write a complaint',
              suffixIcon: IconButton(
                onPressed: (){
                  String complaint = complaintController.text;
                  setState(() {
                    complaints.add(complaint);
                  });
                  complaintController.clear();
                },
                icon: Icon(
                  Icons.send,
                  color: AppColors.darkBlue,
                ),
              ),
            ),
            onChanged: (value) {
              print(value);
            },
            onFieldSubmitted: (value) {
              print(value);
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'this field can not be empty';
              }
              return null;
            },
          ),
        ],
      )
      ,
    );
  }
}



