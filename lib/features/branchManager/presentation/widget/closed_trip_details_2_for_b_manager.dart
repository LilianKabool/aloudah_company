import 'package:aloudeh_company/core/error/network_exceptions.dart';
import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/features/branchManager/controllers/get_trip_information_cubit.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/getInfoTripsEntity.dart';
import 'package:aloudeh_company/features/branchManager/data/params/get_info_trips_params.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../../core/constants/colors_constants.dart';
import '../../../employee/presentation/screens/edit_trip_screen.dart';


class ClosedTripDetails2ForB_Manager extends StatefulWidget{
final String trip_number ;
ClosedTripDetails2ForB_Manager({required this.trip_number});

  @override
  State<ClosedTripDetails2ForB_Manager> createState() => _ClosedTripDetails2ForB_ManagerState();
}
late GetTripInfoCubit cubit;
class _ClosedTripDetails2ForB_ManagerState extends State<ClosedTripDetails2ForB_Manager> {

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetTripInfoCubit>();
    cubit.emitGetTripsInfo(
        getInfoTripsParams:
        GetInfoTripsParams(tripNumber: widget.trip_number));
  }
  @override
  Widget build(BuildContext context) {
  return   BlocConsumer<GetTripInfoCubit, GetState<GetTripInfoEntity>>(
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
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(child: Text("No data available")),
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (data) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SpaceItem(),
                  Container(
                    width: double.infinity,
                    child: Material(
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Text(
                            'General Total',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.pureBlack,
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            '${data.data.manifest.generalTotal}',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.yellow,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SpaceItem(),
                  Container(
                    width: double.infinity,
                    child: Material(
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Text(
                            'Against Shipping',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.pureBlack,
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            '${data.data.manifest.againstShipping}',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.yellow,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SpaceItem(),
                  Container(
                    width: double.infinity,
                    child: Material(
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Text(
                            'Discount',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.pureBlack,
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            '${data.data.manifest.discount}',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.yellow,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SpaceItem(),
                  Container(
                    width: double.infinity,
                    child: Material(
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Text(
                            'Adapter',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.pureBlack,
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            '${data.data.manifest.adapter}',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.yellow,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SpaceItem(),
                  Container(
                    width: double.infinity,
                    child: Material(
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Text(
                            'Net Total',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.pureBlack,
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            '${data.data.manifest.netTotal}',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.yellow,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SpaceItem(),
                  Container(
                    width: double.infinity,
                    child: Material(
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Text(
                            'Advance',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.pureBlack,
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            '${"advance"}',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.yellow,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SpaceItem(),
                  Container(
                    width: double.infinity,
                    child: Material(
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Text(
                            'Misc. Paid',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.pureBlack,
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            '${"misc_paid"}',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.yellow,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SpaceItem(),
                  Container(
                    width: double.infinity,
                    child: Material(
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Text(
                            'Collection',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.pureBlack,
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            '${"collection"}',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.yellow,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SpaceItem(),
                ],
              ),
            );
          },
        );
      },

    );

  }
}