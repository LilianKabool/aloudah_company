import 'package:aloudeh_company/core/error/network_exceptions.dart';
import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_trip_information_entity.dart';
import 'package:aloudeh_company/features/admin/data/params/params/get_trip_information_params.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_trip_information_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/trip_record_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../core/constants/colors_constants.dart';
import '../screens/archived_manifest_screen_for_admin.dart';
import 'archived_trip_details_2_for_admin.dart';
import 'divider_between_list_elements.dart';
import 'divider_item.dart';
import 'logo_image_widget.dart';

class ArchivedTripRecordForBM extends StatefulWidget {
  final String id;

  final String manifest_id;

  final String trip_number;

  const ArchivedTripRecordForBM({super.key,
    required this.id,
    required this.manifest_id,
    required this.trip_number,
  });

  @override
  State<ArchivedTripRecordForBM> createState() => _ArchivedTripRecordForBMState();
}

class _ArchivedTripRecordForBMState extends State<ArchivedTripRecordForBM> {
  late GetTripInformationCubit cubit ;
  @override
  void initState() {
    super.initState();
    cubit = context.read<GetTripInformationCubit>();
    cubit.emitGetTripInformation(getTripInformationParams: GetTripInformationParams(tripNumber: widget.trip_number),);
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
     double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(

      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: TripRecordText(),
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
      body: ListView(
        children: [
          SizedBox(
            height: screenHeight / 75,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Manifest  ${widget.manifest_id}',
                    style: TextStyle(
                      color: AppColors.pureBlack,
                      fontFamily: 'bahnschrift',
                      fontSize: 18.sp,
                    ),
                  ),
                ),
                const LogoImageWidget(),
              ],
            ),
          ),
          const DividerBetweenListElements(),
          BlocConsumer<GetTripInformationCubit , GetState<GetTripInformationAdminEntity>>(
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
                  return  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            Text(
                              'Date',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.darkBlue,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 6.3,
                            ),
                            Expanded(
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    '${data.data.date}',
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
                      const DividerBetweenListElements(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            Text(
                              'Status',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.darkBlue,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 8.1,
                            ),
                            Expanded(
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    data.data.status,
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
                      const DividerBetweenListElements(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            Text(
                              'Truck',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.darkBlue,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 7,
                            ),
                            Expanded(
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    data.data.truckName,
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
                      const DividerBetweenListElements(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            Text(
                              'Driver',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.darkBlue,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 7.8,
                            ),
                            Expanded(
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    data.data.driverName,
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
                      const DividerBetweenListElements(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            Text(
                              'Branch',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.darkBlue,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 9.1,
                            ),
                            Expanded(
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    data.data.branchName,
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
                      const DividerBetweenListElements(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            Text(
                              'Destination',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.darkBlue,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 35,
                            ),
                            Expanded(
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    data.data.destinationName,
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
                      const DividerBetweenListElements(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            Text(
                              'Create',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.darkBlue,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 8.1,
                            ),
                            Expanded(
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    data.data.createdBy,
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
                      const DividerBetweenListElements(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            Text(
                              'Edit',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.darkBlue,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 5.6,
                            ),
                            Expanded(
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    '${data.data.editedBy}',
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
                      const DividerBetweenListElements(),
                    ],
                  );
                },
              );
            },

          ),
          ArchivedTripDetails2ForAdmin(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ArchivedManifestScreenForAdmin(number:widget.trip_number)));
        },
        backgroundColor: AppColors.darkBlue,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.read_more_rounded,
          color: AppColors.mediumBlue,
        ),
      ),
    );
  }
}
