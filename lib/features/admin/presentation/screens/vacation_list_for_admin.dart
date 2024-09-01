
import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/features/admin/data/entity/vacation_entity.dart';
import 'package:aloudeh_company/features/admin/data/params/params/get_vacation_employee_params.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_employee_vacation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../core/constants/colors_constants.dart';
import '../../../../core/error/network_exceptions.dart';
import '../widgets/divider_item.dart';
import '../widgets/space_item.dart';
import '../widgets/vacations_table_header.dart';
import '../widgets/vacations_text.dart';


class VacationListForAdmin extends StatefulWidget{
  final int employeeId;
  final String  employeeName;

  const VacationListForAdmin({
    super.key,
    required this.employeeId,
    required this.employeeName,
  });
  @override
  State<VacationListForAdmin> createState() => _VacationListForAdminState();
}

class _VacationListForAdminState extends State<VacationListForAdmin> {
  String employee_name = "Lilian Kabool";

  String start_date = '25-07-2009';

  String end_date = '25-07-2009';

  String reason = 'Condition';

  String create = 'Mohammed Ali Hwaidi';

  String creator_date = '25-07-2009';

  late GetEmployeeVacationCubit cubit;

   @override
  void initState() {
    super.initState();
    cubit = context.read<GetEmployeeVacationCubit>();
    cubit.emitGetEmployeeVacation(
        getVacationParams:
        GetVacationParams(id: widget.employeeId.toString()));
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: VacationsText(),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            color: AppColors.darkBlue,
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: DividerItem(),
        ),
      ),
      body: BlocConsumer<GetEmployeeVacationCubit ,GetState<BaseAdminVacationEntity> >(
        builder:(ctx, state){
          return state.maybeWhen( orElse: () => const Center(child: Text("No data available")),
              loading: () => const Center(child: CircularProgressIndicator()),
            success: (data){
        return Column(
          children: [
            const SpaceItem(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
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
                    width: screenWidth/10.4,
                  ),
                  Expanded(
                    child: Container(
                      height: 40.h,
                      color: AppColors.mediumBlue,
                      child: Center(
                        child: Text(
                          widget.employeeName,
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
            ),
            const SpaceItem(),
            const DividerItem(),
            const SpaceItem(),
            const SpaceItem(),
            Expanded(
              child: Row(
                children: [
                  const VacationsTableHeader(),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                     //   BaseAdminVacationEntity baseAdminVacationEntity = data.da ;
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            children: [
                              Expanded(
                                child: Text(
                                  data.data[index].start.toString (),
                                  style: TextStyle(
                                    color: AppColors.pureBlack,
                                    fontFamily: 'bahnschrift',
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  data.data[index].end.toString(),
                                  style: TextStyle(
                                    color: AppColors.pureBlack,
                                    fontFamily: 'bahnschrift',
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  data.data[index].reason,
                                  style: TextStyle(
                                    color: AppColors.pureBlack,
                                    fontFamily: 'bahnschrift',
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  data.data[index].createdBy,
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
                      },
                      itemCount: data.data.length,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
            } , )  ;
        } ,
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

      ),
    );
  }
}