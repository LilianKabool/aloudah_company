
import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/edit_driver_screen.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/divider_space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';


import '../../widget/divider_item.dart';
import '../../widget/driver_information_text.dart';
import '../../widget/space_item.dart';


class ViewDriverB_Manager extends StatefulWidget {
  @override
  State<ViewDriverB_Manager> createState() => _ViewDriverB_ManagerState();
}

class _ViewDriverB_ManagerState extends State<ViewDriverB_Manager> {

  String driver_name = "Lilian Kabool";
  int driver_id = 03100004564;
  int driver_phone = 0116798456;
  String driver_email = 'Seba123@gmail.com';
  String  driver_certificate_type = 'A+';
  String selectedOption = 'Details';

  String trip = 'DM-1-600';
  String destination = 'Aleppo';
  String date = '25-07-2009';

  Widget DriverTrips() => Container(
    height: 300.h,
    margin: EdgeInsets.symmetric(horizontal: 20.w),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(2.r),
      border: Border.all(color: AppColors.pureBlack,),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SpaceItem(),
        TripDestinationDateRow(),
        SpaceItem(),
        Container(
          height: 1.h,
          color: AppColors.pureBlack,
        ),
        SpaceItem(),
        Expanded(
          child: BuildDriverTripsList(),
        ),
        SpaceItem(),
      ],
    ),
  );

  Widget TripDestinationDateRow() => Padding(
    padding:  EdgeInsets.symmetric(horizontal: 20.0.w,),
    child: Center(
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Trip',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'Bauhaus',
                fontSize: 17.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Dest',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'Bauhaus',
                fontSize: 17.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Date',
              style: TextStyle(
                color: AppColors.yellow,
                fontFamily: 'Bauhaus',
                fontSize: 17.sp,
              ),
            ),
          ),
        ],
      ),
    ),
  );

  Widget BuildDriverTripsList() => ListView.separated(
    itemBuilder: (context, index) {
      return DriverTripItem();
    },
    separatorBuilder: (context, index) => DividerSpaceItem(),
    itemCount: 15,
  );

  Widget DriverTripItem() => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Row(
      children: [
        Expanded(
          child: Text(
            '${trip}',
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            '${destination}',
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            '${date}',
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

  /* هون قسم الاجازات */

  String start_date = '25-07-2009';
  String end_date = '25-07-2009';
  String reason = 'Condition';
  String create = 'Mohammed Ali Hwaidi';
  String creator_date = '25-07-2009';
  var vacation_reason = TextEditingController();
  var date_to = 'Date To';
  var date_from = 'Date From';
  bool showDate1 = false;
  bool showDate2 = false;
  DateTime selectedDate1 = DateTime.now();
  DateTime selectedDate2 = DateTime.now();

  void datePicker1(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: selectedDate1,
      firstDate: DateTime(2018),
      lastDate: DateTime(2100),
    ).then((value) {
      if (value == null) {
        return;
      }
      setState(() {
        selectedDate1 = value;
        date_from = DateFormat('yyyy-MM-dd').format(selectedDate1);
        showDate1 = true;
        // print('Selected date: ${DateFormat.yMMMd().format(selectedDate)}');
      });
    });
  }

  void datePicker2(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: selectedDate2,
      firstDate: DateTime(2018),
      lastDate: DateTime(2100),
    ).then((value) {
      if (value == null) {
        return;
      }
      setState(() {
        selectedDate2 = value;
        date_to = DateFormat('yyyy-MM-dd').format(selectedDate2);
        showDate2 = true;
        // print('Selected date: ${DateFormat.yMMMd().format(selectedDate)}');
      });
    });
  }

  Widget AddVacationDateWidget() => Row(
    children: [
      Expanded(
        child: GestureDetector(
          onTap: () {
            datePicker1(context);
          },
          child: Container(
            height: 40.h,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.pureBlack,),
              borderRadius: BorderRadius.circular(2.r),
            ),
            child: Center(
              child: showDate1
                  ? Text(
                DateFormat('yyyy-MM-dd').format(selectedDate1),
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
              )
                  : Text(
                '${date_from}',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.pureBlack,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        width: 10.w,
      ),
      Expanded(
        child: GestureDetector(
          onTap: () {
            datePicker2(context);
          },
          child: Container(
            height: 40.h,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.pureBlack,),
              borderRadius: BorderRadius.circular(2.r),
            ),
            child: Center(
              child: showDate2
                  ? Text(
                DateFormat('yyyy-MM-dd').format(selectedDate2),
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  fontSize: 16.sp,
                ),
              )
                  : Text(
                '${date_to}',
                style: TextStyle(
                  fontFamily: 'bahnschrift',
                  color: AppColors.pureBlack,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );

  Widget AddVacationReasonWidget() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Reason',
        style: TextStyle(
          fontFamily: 'bahnschrift',
          color: AppColors.darkBlue,
          fontSize: 16.sp,
        ),
      ),
      Container(
        height: 100.h,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.pureBlack,),
          borderRadius: BorderRadius.circular(2.r),
        ),
        child: TextFormField(
          controller: vacation_reason,
          cursorColor: AppColors.darkBlue,
          style: TextStyle(
              overflow: TextOverflow.ellipsis
          ),
          maxLines: 5,
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    ],
  );

  Widget VacationsTableHeader() => Padding(
    padding:  EdgeInsets.symmetric(horizontal: 20.0.w,),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SpaceItem(),
        Expanded(
          child: Text(
            'Start',
            style: TextStyle(
              color: AppColors.yellow,
              fontFamily: 'Bauhaus',
              fontSize: 17.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            'End',
            style: TextStyle(
              color: AppColors.yellow,
              fontFamily: 'Bauhaus',
              fontSize: 17.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            'Reason',
            style: TextStyle(
              color: AppColors.yellow,
              fontFamily: 'Bauhaus',
              fontSize: 17.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            'Create',
            style: TextStyle(
              color: AppColors.yellow,
              fontFamily: 'Bauhaus',
              fontSize: 17.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            'Date',
            style: TextStyle(
              color: AppColors.yellow,
              fontFamily: 'Bauhaus',
              fontSize: 17.sp,
            ),
          ),
        ),
      ],
    ),
  );

  Widget VacationItemForB_Manager() => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      children: [
        SpaceItem(),
        Expanded(
          child: Text(
            '${start_date}',
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            '${end_date}',
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            '${reason}',
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            '${create}',
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.sp,
            ),
          ),
        ),
        Expanded(
          child: Text(
            '${creator_date}',
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

  Widget BuildVacationTableForB_Manager() => ListView.builder(
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      return VacationItemForB_Manager();
    },
    itemCount: 15,
  );

  Widget SaveButton() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'If You Want To Save',
        style: TextStyle(
          color: AppColors.darkBlue,
          fontFamily: 'Bauhaus',
          fontSize: 17.sp,
        ),
      ),
      RotatedBox(
        quarterTurns: -3,
        child: Icon(
          Icons.touch_app,
        ),
      ),
      TextButton(
        onPressed: (){},
        child: Text(
          'Click Here',
          style: TextStyle(
            color: AppColors.yellow,
            fontFamily: 'bahnschrift',
            //fontSize: 17.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );

  Widget VacationList() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AddVacationDateWidget(),
        SpaceItem(),
        AddVacationReasonWidget(),
        SpaceItem(),
        Text(
          'Vacations List',
          style: TextStyle(
            fontFamily: 'bahnschrift',
            color: AppColors.darkBlue,
            fontSize: 16.sp,
          ),
        ),
        Container(
          height: 200.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.r),
            border: Border.all(color: AppColors.pureBlack,),
          ),
          child: Row(
            children: [
              VacationsTableHeader(),
              Container(
                width: 1.w,
                color: AppColors.pureBlack,
              ),
              Expanded(
                child: BuildVacationTableForB_Manager(),
              ),
            ],
          ),
        ),
        SpaceItem(),
        SaveButton(),
        SpaceItem(),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: DriverInformationText(),
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
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(150.r),
              ),
              child: Image(
                image: AssetImage(
                  'assets/images/driver .png',
                ),
              ),
            ),
            SpaceItem(),
            SpaceItem(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Material(
                elevation: 2.0,
                surfaceTintColor: AppColors.darkBlue,
                shadowColor: AppColors.darkBlue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedOption = 'Details';
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.event_note_outlined,
                            color: selectedOption == 'Details'
                                ? AppColors.yellow
                                : AppColors.pureBlack,
                          ),
                          Text(
                            'Details',
                            style: TextStyle(
                              fontSize: 19.sp,
                              fontFamily: 'ScriptMT',
                              color: selectedOption == 'Details'
                                  ? AppColors.yellow
                                  : AppColors.pureBlack,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedOption = 'Trips';
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.local_shipping_outlined,
                            color: selectedOption == 'Trips'
                                ? AppColors.yellow
                                : AppColors.pureBlack,
                          ),
                          Text(
                            'Trips',
                            style: TextStyle(
                              fontSize: 19.sp,
                              fontFamily: 'ScriptMT',
                              color: selectedOption == 'Trips'
                                  ? AppColors.yellow
                                  : AppColors.pureBlack,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedOption = 'Vacations';
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.format_align_justify,
                            color: selectedOption == 'Vacations'
                                ? AppColors.yellow
                                : AppColors.pureBlack,
                          ),
                          Text(
                            'Vacations',
                            style: TextStyle(
                              fontSize: 19.sp,
                              fontFamily: 'ScriptMT',
                              color: selectedOption == 'Vacations'
                                  ? AppColors.yellow
                                  : AppColors.pureBlack,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SpaceItem(),
            SpaceItem(),
            if (selectedOption == 'Details') DriverDetails(),
            if (selectedOption == 'Trips') DriverTrips(),
            if (selectedOption == 'Vacations') VacationList(),
          ],
        ),
      ),
    );
  }

  Widget DriverDetails() => Padding(
    padding:  EdgeInsets.symmetric(horizontal: 20.w),
    child: Column(
      children: [
        DriverInformation(),
        SpaceItem(),
        EditInformationButton(),
        SpaceItem(),
        Photo1(),
        SpaceItem(),
        Photo2(),
        SpaceItem(),
      ],
    ),
  );

  Widget DriverInformation() => Column(
    children: [
      Container(
        height: 35.h,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.pureBlack),
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.person_3_outlined,
              color: AppColors.yellow,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              '${driver_name}',
              style: TextStyle(
                fontSize: 17.sp,
                fontFamily: 'bahnschrift',
                color: AppColors.pureBlack,
              ),
            ),
          ],
        ),
      ),
      SpaceItem(),
      Container(
        height: 35.h,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.pureBlack),
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.numbers,
              color: AppColors.yellow,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              '${driver_id}',
              style: TextStyle(
                fontSize: 17.sp,
                fontFamily: 'bahnschrift',
                color: AppColors.pureBlack,
              ),
            ),
          ],
        ),
      ),
      SpaceItem(),
      Container(
        height: 35.h,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.pureBlack),
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.phone_outlined,
              color: AppColors.yellow,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              '${driver_phone}',
              style: TextStyle(
                fontSize: 17.sp,
                fontFamily: 'bahnschrift',
                color: AppColors.pureBlack,
              ),
            ),
          ],
        ),
      ),
      SpaceItem(),
      Container(
        height: 35.h,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.pureBlack),
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.email_outlined,
              color: AppColors.yellow,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              '${driver_email}',
              style: TextStyle(
                fontSize: 17.sp,
                fontFamily: 'bahnschrift',
                color: AppColors.pureBlack,
              ),
            ),
          ],
        ),
      ),
      SpaceItem(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Our Driver Certificate is : ',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              fontSize: 17.0.sp,
              color: AppColors.darkBlue,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            '${driver_certificate_type}',
            style: TextStyle(
              fontSize: 17.sp,
              fontFamily: 'bahnschrift',
              color: AppColors.yellow,
            ),
          ),
        ],
      ),
    ],
  );

  Widget EditInformationButton() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(
        Icons.fire_truck,
        color: AppColors.darkBlue,
      ),
      Text(
        '- - - - - - ',
        style: TextStyle(
          fontFamily: 'Bauhaus',
          fontSize: 17.0.sp,
          color: AppColors.darkBlue,
        ),
      ),
      TextButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:(context)=>EditDriverScreen()));
        },
        child: Text(
          'Edit Information',
          style: TextStyle(
            fontFamily: 'Bauhaus',
            fontSize: 18.0.sp,
            color: AppColors.yellow,
          ),
        ),
      ),
      Text(
        '- - - - - -  ',
        style: TextStyle(
          fontFamily: 'Bauhaus',
          fontSize: 17.0.sp,
          color: AppColors.darkBlue,
        ),
      ),
      Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(3.14),
        child: Icon(
          Icons.fire_truck,
          color: AppColors.darkBlue,
        ),
      ),
    ],
  );

  Widget Photo1() => Container(
    // height: 200.h,
    width: double.infinity,
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.pureBlack),
    ),
    child: Image(
      image: AssetImage(
        'assets/images/employee.png',
      ),
      //fit: BoxFit.fill,
    ),
  );

  Widget Photo2() => Container(
    // height: 200.h,
    width: double.infinity,
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.pureBlack),
    ),
    child: Image(
      image: AssetImage(
        'assets/images/employee.png',
      ),
      //fit: BoxFit.fill,
    ),
  );

}
