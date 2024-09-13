
import 'package:aloudeh_company/features/branchManager/presentation/widget/employee_information_text.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../../core/constants/colors_constants.dart';
import '../../widget/divider_item.dart';

class ViewArchivedEmployeeForB_Manager extends StatefulWidget{

  @override
  State<ViewArchivedEmployeeForB_Manager> createState() => _ViewArchivedEmployeeForB_ManagerState();
}

class _ViewArchivedEmployeeForB_ManagerState extends State<ViewArchivedEmployeeForB_Manager> {

  String employee_name = 'Seba Taleaa';
  String employee_id = '03130025712';
  String employee_phone = '0986012432';
  String employee_email = 'Seba123@gmail.com';
  String selectedOption = 'Details';
  bool isViewEmail = false;
  bool isViewID = false;
  bool isViewPhone = false;
  String power1= "Add";
  String power2= "View";
  String power= "Add";

  Widget TripPowerItem() => Row(
    children: [
      Expanded(
        child: Row(
          children: [
            Icon(
              Icons.check_box,
              color: AppColors.darkBlue,
            ),
            SizedBox(
              width: 5.w,
            ),
            Expanded(
              child: Text(
                '${power1}',
                style: TextStyle(
                  fontSize: 16.h,
                  fontFamily: 'Bahnschrift',
                  color: AppColors.darkBlue,
                ),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Icon(
              Icons.check_box,
              color: AppColors.darkBlue,
            ),
            SizedBox(
              width: 5.w,
            ),
            Expanded(
              child: Text(
                '${power2}',
                style: TextStyle(
                  fontSize: 16.h,
                  fontFamily: 'Bahnschrift',
                  color: AppColors.darkBlue,
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );

  Widget BuildTripsPowers() => ListView.separated(
    itemBuilder: (context, index) {
      return TripPowerItem();
    },
    separatorBuilder: (context, index) => SpaceItem(),
    itemCount: 5,
  );

  Widget ViewTripsPowers() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Trips',
        style: TextStyle(
          color: AppColors.yellow,
          fontFamily: 'bahnschrift',
          fontSize: 17.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      Container(
        height: 220.h,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: AppColors.lightBlue,
        ),
        child: BuildTripsPowers(),
      ),
    ],
  );

  Widget ManifestPowerItem() => Row(
    children: [
      Icon(
        Icons.check_box,
        color: AppColors.darkBlue,
      ),
      SizedBox(
        width: 5.w,
      ),
      Expanded(
        child: Text(
          '${power}',
          style: TextStyle(
            fontSize: 16.h,
            fontFamily: 'Bahnschrift',
            color: AppColors.darkBlue,
          ),
        ),
      ),
    ],
  );

  Widget BuildManifestPowers() => ListView.separated(
    itemBuilder: (context, index) {
      return ManifestPowerItem();
    },
    separatorBuilder: (context, index) => SpaceItem(),
    itemCount: 4,
  );

  Widget ViewManifestPowers() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Manifest',
        style: TextStyle(
          color: AppColors.yellow,
          fontFamily: 'bahnschrift',
          fontSize: 17.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      Container(
        height: 180.h,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: AppColors.lightBlue,
        ),
        child: BuildManifestPowers(),
      ),
    ],
  );

  Widget ReportPowerItem() => Row(
    children: [
      Icon(
        Icons.check_box,
        color: AppColors.darkBlue,
      ),
      SizedBox(
        width: 5.w,
      ),
      Expanded(
        child: Text(
          '${power}',
          style: TextStyle(
            fontSize: 16.h,
            fontFamily: 'Bahnschrift',
            color: AppColors.darkBlue,
          ),
        ),
      ),
    ],
  );

  Widget BuildReportsPowers() => ListView.separated(
    itemBuilder: (context, index) {
      return ReportPowerItem();
    },
    separatorBuilder: (context, index) => SpaceItem(),
    itemCount: 4,
  );

  Widget ViewReportsPowers() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Reports',
        style: TextStyle(
          color: AppColors.yellow,
          fontFamily: 'bahnschrift',
          fontSize: 17.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      Container(
        height: 180.h,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: AppColors.lightBlue,
        ),
        child: BuildReportsPowers(),
      ),
    ],
  );

  Widget EmployeePowers() => Padding(
    padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
    child: Column(
      children: [
        ViewTripsPowers(),
        SpaceItem(),
        Row(
          children: [
            Expanded(child: ViewManifestPowers()),
            SizedBox(
              width: 20.w,
            ),
            Expanded(child: ViewReportsPowers()),
          ],
        ),
        SpaceItem(),
      ],
    ),
  );

  /* هون قسم الاجازات */

  String start_date = '25-07-2009';
  String end_date = '25-07-2009';
  String reason = 'Condition';
  String create = 'Mohammed Ali Hwaidi';
  String creator_date = '25-07-2009';


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

  Widget VacationList() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Vacations List',
          style: TextStyle(
            fontFamily: 'bahnschrift',
            color: AppColors.darkBlue,
            fontSize: 16.sp,
          ),
        ),
        Container(
          height: 300.h,
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
          child: EmployeeInformationText(),
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
            Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(180.r),
                    bottomLeft: Radius.circular(180.r),
                  ),
                  child: Banner(
                      message: 'Archived',
                      location: BannerLocation.topEnd,
                      textStyle: TextStyle(
                        color: AppColors.pureBlack,
                        fontFamily: 'Bauhaus',
                      ),
                      color: Color.fromRGBO(238, 234, 231, 1),
                    child: Image(
                      image: AssetImage(
                        'assets/images/employee.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 45.h,
                  width: screenWidth/2,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(238, 234, 231, 1),
                    borderRadius: BorderRadius.circular(5.r),
                    border: Border.all(color: AppColors.pureBlack),
                  ),
                  child: Center(
                    child: Text(
                      '${employee_name}',
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontFamily: 'bahnschrift',
                        color: AppColors.pureBlack,
                      ),
                    ),
                  ),
                ),
              ],
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
                          selectedOption = 'Powers';
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.playlist_add_check_rounded,
                            color: selectedOption == 'Powers'
                                ? AppColors.yellow
                                : AppColors.pureBlack,
                          ),
                          Text(
                            'Powers',
                            style: TextStyle(
                              fontSize: 19.sp,
                              fontFamily: 'ScriptMT',
                              color: selectedOption == 'Powers'
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
            if (selectedOption == 'Details') EmployeeDetails(),
            if (selectedOption == 'Powers') EmployeePowers(),
            if (selectedOption == 'Vacations') VacationList(),

          ],
        ),
      ),
    );
  }

  Widget EmployeeDetails() => Column(
    children: [
      IDPhoneRow(),
      SpaceItem(),
      EmailAddressRow(),
      SpaceItem(),
      Photo1(),
      SpaceItem(),
      Photo2(),
      SpaceItem(),
    ],
  );

  Widget ViewEmail() => Text(
    '${employee_email}',
    style: TextStyle(
      fontSize: 17.sp,
      fontFamily: 'bahnschrift',
      color: AppColors.pureBlack,
    ),
  );

  Widget ViewID() => Text(
    '${employee_id}',
    style: TextStyle(
      fontSize: 17.sp,
      fontFamily: 'bahnschrift',
      color: AppColors.pureBlack,
    ),
  );

  Widget ViewPhone() => Text(
    '${employee_phone}',
    style: TextStyle(
      fontSize: 17.sp,
      fontFamily: 'bahnschrift',
      color: AppColors.pureBlack,
    ),
  );

  Widget IDPhoneRow() => Padding(
    padding:  EdgeInsets.symmetric(horizontal: 20.h),
    child: Row(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.darkBlue,
                child: IconButton(
                  onPressed: (){
                    setState(() {
                      isViewID = !isViewID;
                    });
                  },
                  icon: Icon(
                    Icons.person_pin_outlined,
                  ),
                ),
              ),
              SizedBox(
                width: 5.r,
              ),
              if (isViewID) ViewID(),
            ],
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.darkBlue,
                child: IconButton(
                  onPressed: (){
                    setState(() {
                      isViewPhone = !isViewPhone;
                    });
                  },
                  icon: Icon(
                    Icons.phone_outlined,
                  ),
                ),
              ),
              SizedBox(
                width: 5.r,
              ),
              if (isViewPhone) ViewPhone(),
            ],
          ),
        ),
      ],
    ),
  );

  Widget EmailAddressRow() => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CircleAvatar(
        backgroundColor: AppColors.darkBlue,
        child: IconButton(
          onPressed: (){
            setState(() {
              isViewEmail = !isViewEmail;
            });
          },
          icon: Icon(
            Icons.email_outlined,
          ),
        ),
      ),
      SizedBox(
        width: 5.r,
      ),
      if (isViewEmail) ViewEmail(),
    ],
  );

  Widget Photo1() => Container(
    // height: 200.h,
    width: double.infinity,
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.pureBlack),
    ),
    margin: EdgeInsets.symmetric(horizontal: 20.h),
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
    margin: EdgeInsets.symmetric(horizontal: 20.h),
    child: Image(
      image: AssetImage(
        'assets/images/employee.png',
      ),
      //fit: BoxFit.fill,
    ),
  );
}