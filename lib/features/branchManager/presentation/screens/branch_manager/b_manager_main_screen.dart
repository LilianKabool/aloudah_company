import 'package:aloudeh_company/core/error/network_exceptions.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/login_b_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../../core/constants/colors_constants.dart';
import '../../../../../core/global_states/post_state.dart';
import '../../../../../core/utils/shared_preference_utils.dart';
import '../../../data/entity/log_out_entity.dart';
import '../../../presentation/screens/branch_manager/about_us_screen_for_b_manager.dart';
import '../../../presentation/screens/branch_manager/b_manager_categories_screen.dart';
import '../../../presentation/screens/branch_manager/b_manager_profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/main_screen_text.dart';

class B_ManagerMainScreen extends StatefulWidget {
  @override
  State<B_ManagerMainScreen> createState() => _B_ManagerMainScreenState();
}

class _B_ManagerMainScreenState extends State<B_ManagerMainScreen> {
  int _currentIndex = 2;

  final List<Widget> _pages = [
    AboutUsScreenForB_Manager(),
    B_ManagerProfileScreen(),
    B_ManagerCategoriesScreen(),
  ];



  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: MainScreenText(),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_left,
            color: AppColors.darkBlue,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            color: AppColors.darkBlue,
            height: 1.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: SingleChildScrollView(
                    child: Hero(
                      tag: "log out ",
                      child: Column(
                        children: [
                          ElevatedButton(
                          onPressed: () async {
                    //  context.read<LogOutCubit>().emitLogOut();
                    await SharedPreferencesUtils().removeToken() ;

                    Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                    builder: (context) => LogInBMScreen(
                    guard: 'branch_manager',
                    ),
                    ),
                    );
                    },
                      child: Text("Log Out"),
                    )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            icon: Icon(
              Icons.more_vert,
              color: AppColors.darkBlue,
            ),
          ),
        ],
      ),
      body: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(100.r),
              bottomRight: Radius.circular(100.r),
            ),
            child: Container(
              height: screenHeight / 1.5,
              child: RotatedBox(
                quarterTurns: 3,
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
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.details_outlined,
                        color: AppColors.pureWhite,
                      ),
                      activeIcon: Icon(
                        Icons.details_outlined,
                        color: AppColors.yellow,
                      ),
                      label: 'About Us',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person_outlined,
                        color: AppColors.pureWhite,
                      ),
                      activeIcon: Icon(
                        Icons.person_outlined,
                        color: AppColors.yellow,
                      ),
                      label: 'Profile',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home_outlined,
                        color: AppColors.pureWhite,
                      ),
                      label: 'Home',
                      activeIcon: Icon(
                        Icons.home_outlined,
                        color: AppColors.yellow,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: _pages[_currentIndex],
          ),
        ],
      ),
    );
  }
}
