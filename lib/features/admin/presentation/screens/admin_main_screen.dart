
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';
import 'abouts_us_for_admin_screen.dart';
import 'admin_categorirs_screen.dart';
import 'admin_profile_screen.dart';


class AdminMainScreen extends StatefulWidget {
  const AdminMainScreen({super.key});

  @override
  State<AdminMainScreen> createState() => _AdminMainScreenState();
}

class _AdminMainScreenState extends State<AdminMainScreen> {
  int _currentIndex = 2;

  final List<Widget> _pages = [
    const AboutUsForAdminScreen(),
    //todo:
      AdminProfileScreen(),
     AdminCategoriesScreen(),
  ];

  _showOption(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: const Icon(
                  Icons.settings_outlined,
                  color: AppColors.darkBlue,
                ),
                title: const Text(
                  //todo:
                  'Settings',
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.logout_outlined,
                  color: AppColors.darkBlue,
                ),
                title: const Text(
                  'Log Out',
                ),
                onTap: () {
                  //todo:
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        // title: MainScreenText(),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.chevron_left,
            color: AppColors.darkBlue,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: AppColors.darkBlue,
            height: 1.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _showOption(context);
            },
            icon: const Icon(
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
            child: SizedBox(
              height: screenHeight / 1.5,
              //width: screenWidth/8,
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
                  //unselectedLabelStyle: TextStyle(color: Colors.white),
                  items: const [
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
