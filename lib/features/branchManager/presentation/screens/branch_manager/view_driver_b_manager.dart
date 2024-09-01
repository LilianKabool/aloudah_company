import '../../../../../core/constants/colors_constants.dart';
import '../../../presentation/screens/branch_manager/driver_information_tab_b_manager.dart';
import '../../../presentation/screens/branch_manager/driver_trips_tab_b_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../widget/divider_item.dart';
import '../../widget/driver_information_text.dart';


class ViewDriverB_Manager extends StatefulWidget {
  ViewDriverB_Manager(
      {required this.driver_name,
        required this.driver_id,
        required this.driver_gender,
        required this.driver_b_date,
        required this.driver_b_place,
        required this.driver_phone,
        required this.driver_mobile,
        required this.driver_address,
        required this.driver_vacations,
        required this.driver_mother_name,
        required this.driver_rank,
        required this.driver_rate,
        required this.driver_salary,
        required this.driver_emp_date,
        required this.driver_resignation_date,
        required this.d_certificate_type});

  final String driver_name ;
  final int driver_id ;
  final String driver_gender ;
  final String driver_b_date ;
  final String driver_b_place;
  final int driver_phone ;
  final String driver_mobile ;
  final String driver_address ;
  final int driver_vacations ;
  final String driver_mother_name ;
  final String driver_rank ;
  final double driver_rate ;
  final double driver_salary ;
  final String driver_emp_date;
  final String driver_resignation_date ;
  final String d_certificate_type ;

  @override
  State<ViewDriverB_Manager> createState() => _ViewDriverB_ManagerState();
}

class _ViewDriverB_ManagerState extends State<ViewDriverB_Manager> {
  int _currentIndex = 0;



  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
    DriverInformationTabB_Manager(driver_id: widget.driver_id,
     driver_phone: widget.driver_phone,
     driver_name: widget.driver_name,
      driver_emp_date: widget.driver_emp_date,
      driver_address: widget.driver_address,
      d_certificate_type: widget.d_certificate_type,
      driver_b_date: widget.driver_b_date,
     driver_b_place: widget.driver_b_place,
     driver_gender: widget.driver_gender,
     driver_mobile: widget.driver_mobile,
     driver_salary: widget.driver_salary,
     driver_mother_name: widget.driver_mother_name,
     driver_rank: widget.driver_rank,
     driver_rate: widget.driver_rate,
     driver_resignation_date: widget.driver_resignation_date,
     driver_vacations: widget.driver_vacations,),
    DriverTripsTabB_Manager(),
  ];
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
      body: _pages[_currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(37.r),
            topLeft: Radius.circular(37.r)
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColors.darkBlue,
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: AppColors.yellow,
          unselectedItemColor: AppColors.pureWhite,
          //unselectedLabelStyle: TextStyle(color: Colors.white),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.info_outline,
                color: AppColors.pureWhite,
              ),
              activeIcon: Icon(
                Icons.info_outline,
                color: AppColors.yellow,
              ),
              label: 'Information',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.drive_eta_outlined,
                color: AppColors.pureWhite,
              ),
              activeIcon: Icon(
                Icons.drive_eta_outlined,
                color: AppColors.yellow,
              ),
              label: 'Trips',
            ),
          ],
        ),
      ),
    );
  }
}
