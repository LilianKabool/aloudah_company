import 'package:aloudeh_company/core/error/network_exceptions.dart';
import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_employee_entity.dart';
import 'package:aloudeh_company/features/admin/data/params/params/get_employee_by_id_params.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_employee_by_id_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../core/constants/colors_constants.dart';
import '../screens/vacation_list_for_admin.dart';

class ViewEmployeeInformation extends StatefulWidget {
  final int employeeId;

  const ViewEmployeeInformation({super.key, required this.employeeId});

  @override
  State<ViewEmployeeInformation> createState() =>
      _ViewEmployeeInformationState();
}

class _ViewEmployeeInformationState extends State<ViewEmployeeInformation> {

  late GetEmployeeByIdCubit cubit;
  final RefreshController _refreshController =
  RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetEmployeeByIdCubit>();
    cubit.emitGetEmployeeById(getEmployeeByIdParams: GetEmployeeByIdParams(employeeId: widget.employeeId));
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return BlocConsumer<GetEmployeeByIdCubit,
        GetState<BaseEmployeeAdminEntity>>(
      builder: (ctx, state) {
        return state.maybeWhen(
          orElse: () => const Center(child: Text("No data available")),
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (data) {
            return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView(
                children: [
                  Row(
                    children: [
                      Text(
                        'ID',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth / 5.8,
                      ),
                      Expanded(
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              '${data.data.id}',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SpaceItem(),
                  Row(
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth / 10.4,
                      ),
                      Expanded(
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              data.data.name,
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SpaceItem(),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Mother',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.darkBlue,
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            'Name',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.darkBlue,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: screenWidth / 14.4,
                      ),
                      Expanded(
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              data.data.motherName,
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SpaceItem(),
                  Row(
                    children: [
                      Text(
                        'Gender',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth / 14.4,
                      ),
                      Expanded(
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              data.data.gender,
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SpaceItem(),
                  Row(
                    children: [
                      Text(
                        'B_Date',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth / 13.5,
                      ),
                      Expanded(
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              data.data.birthDate,
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SpaceItem(),
                  Row(
                    children: [
                      Text(
                        'B_Place',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth / 17.8,
                      ),
                      Expanded(
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              data.data.birthPlace,
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SpaceItem(),
                  Row(
                    children: [
                      Text(
                        'Phone',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth / 11,
                      ),
                      Expanded(
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              data.data.phoneNumber,
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SpaceItem(),
                  Row(
                    children: [
                      Text(
                        'Mobile',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth / 11.6,
                      ),
                      Expanded(
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              data.data.mobile,
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SpaceItem(),
                  Row(
                    children: [
                      Text(
                        'Address',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth / 20,
                      ),
                      Expanded(
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              data.data.address,
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SpaceItem(),
                  Row(
                    children: [
                      Text(
                        'Vacations',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth / 40,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  //todo:
                                    builder: (context) => VacationListForAdmin(employeeId:data.data.id , employeeName:data.data.name)));
                          },
                          child: Container(
                            height: 40.h,
                            color: AppColors.mediumBlue,
                            child: Center(
                              child: Text(
                                'vacation',
                                style: TextStyle(
                                  fontFamily: 'bahnschrift',
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SpaceItem(),
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
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              data.data.rank,
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SpaceItem(),
                  Row(
                    children: [
                      Text(
                        'Salary',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth / 11,
                      ),
                      Expanded(
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              '${data.data.salary}',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SpaceItem(),
                  Row(
                    children: [
                      Text(
                        'Emp_Date',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth / 50,
                      ),
                      Expanded(
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              data.data.employmentDate,
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SpaceItem(),
                  Row(
                    children: [
                      Text(
                        'Resi_Date',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.darkBlue,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth / 50,
                      ),
                      Expanded(
                        child: Container(
                          height: 40.h,
                          color: AppColors.mediumBlue,
                          child: Center(
                            child: Text(
                              '${data.data.resignationDate}',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SpaceItem(),
                ],
              ),
            );
          },
        );
      },
      listener: (context, state) {
        state.whenOrNull(
          error: (NetworkExceptions exception) {
            Fluttertoast.showToast(
              msg: NetworkExceptions.getErrorMessage(exception),
              toastLength: Toast.LENGTH_SHORT,
            );
          },
        );
      },

    );
  }
}
