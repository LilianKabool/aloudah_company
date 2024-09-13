
import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/divider_between_list_elements.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/main_screen_text.dart';
import 'package:aloudeh_company/features/customer/presentation/screens/view_orders_recieved_for_customer.dart';
import 'package:aloudeh_company/features/customer/presentation/screens/view_profile_for_customer.dart';
import 'package:aloudeh_company/features/customer/presentation/screens/view_sent_orders_for_customer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/shared_preference_utils.dart';
import 'about_us_screen_for_customer.dart';
import 'add_complaint_for_customer.dart';
import 'expendable_fab_1.dart';


class CustomerMainScreen extends StatefulWidget {
  @override
  State<CustomerMainScreen> createState() => _CustomerMainScreenState();
}

class _CustomerMainScreenState extends State<CustomerMainScreen> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;

  final List<Widget> _pages = [
    ViewSentOrdersForCustomer(),
    ViewOrdersReceivedForCustomer(),
  ];

  _showOption(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                //leading: Icon(Icons.logout_outlined, color: AppColors.darkBlue),
                title: Text('Log Out'),
                onTap: () async {
                  await SharedPreferencesUtils().removeToken() ;

                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => LogInBMScreen(
                  //       guard: 'branch_manager',
                  //     ),
                  //   ),
                  // );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  String notification = 'dfghj dfghj dfgh fghj fgh';

  Widget NotificationItem() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: Row(
      children: [
        Icon(
          Icons.circle_notifications_outlined,
          color: AppColors.darkBlue,
          size: 40.r,
        ),
        SizedBox(
          width: 5.w,
        ),
        Expanded(
          child: Text(
            '${notification}',
            style: TextStyle(
              color: AppColors.pureBlack,
              fontFamily: 'bahnschrift',
              fontSize: 16.0.sp,
            ),
          ),
        ),
        Icon(
          Icons.check_circle_outline,
          color: Colors.grey[400],
        ),
      ],
    ),
  );

  Widget BuildNotificationList() => ListView.separated(
    itemBuilder: (context, index) {
      return NotificationItem();
    },
    separatorBuilder: (context, index) => DividerBetweenListElements(),
    itemCount: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: MainScreenText(),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            _showOption(context);
          },
          icon: Icon(
            Icons.more_vert,
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
              _scaffoldKey.currentState?.openEndDrawer();
            },
            icon: Icon(
              Icons.notifications,
              color: AppColors.darkBlue,
            ),
          ),
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(37.r),
          topLeft: Radius.circular(37.r),
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColors.darkBlue,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
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
                Icons.logout,
                color: AppColors.pureWhite,
              ),
              activeIcon: Icon(
                Icons.logout,
                color: AppColors.yellow,
              ),
              label: 'Orders sent',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.login,
                color: AppColors.pureWhite,
              ),
              activeIcon: Icon(
                Icons.login,
                color: AppColors.yellow,
              ),
              label: 'Orders received',
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 150.h,
              decoration: BoxDecoration(
                color: AppColors.darkBlue,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(150.r),
                ),
              ),
              child: Image(
                image: AssetImage('assets/images/Logo3.png'),
              ),
            ),
            Expanded(child: BuildNotificationList()),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ExpandableFab1(
        icon: Icon(Icons.add),
        backgroundColor: AppColors.pureWhite,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context)=> AddComplaintScreenForCustomer(complaint: null,)));
            },
            backgroundColor: AppColors.darkBlue,
            shape: CircleBorder(),
            heroTag: 'customer complaint',
            mini: true,
            child: Icon(Icons.report_problem_outlined),
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context)=>ViewProfileForCustomer()));
            },
            backgroundColor: AppColors.darkBlue,
            shape: CircleBorder(),
            heroTag: 'customer profile',
            child: Icon(Icons.person_3_outlined),
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context)=>AboutUsScreenForCustomer()));
            },
            backgroundColor: AppColors.darkBlue,
            shape: CircleBorder(),
            heroTag: 'customer about us',
            mini: true,
            child: Icon(Icons.info_outline),
          ),
        ],
      ),
    );
  }
}
