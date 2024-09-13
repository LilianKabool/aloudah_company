import 'package:aloudeh_company/core/error/network_exceptions.dart';
import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/features/branchManager/controllers/get_manifest_bm_cubit.dart';
import 'package:aloudeh_company/features/branchManager/controllers/get_trip_information_cubit.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/getInfoTripsEntity.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_manifest_bm_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/params/get_manifest_params.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/view_trip_invoice_for_b_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../presentation/widget/build_manifest_table_for_b_manager.dart';
import '../../../presentation/widget/manifest_table_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors_constants.dart';
import '../../widget/divider_between_list_elements.dart';
import '../../widget/divider_item.dart';
import '../../widget/logo_image_widget.dart';
import '../../widget/trip_record_text.dart';

class colsedTripsManifestScreenForB_Manager extends StatefulWidget {
  final String trip_number;

  colsedTripsManifestScreenForB_Manager({required this.trip_number});

  @override
  State<colsedTripsManifestScreenForB_Manager> createState() =>
      _colsedTripsManifestScreenForB_ManagerState();
}

class _colsedTripsManifestScreenForB_ManagerState
    extends State<colsedTripsManifestScreenForB_Manager> {
  late GetManifestBMCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetManifestBMCubit>();
    cubit.emitGetManifest(
      getManifestBMParams: GetManifestBMParams(
        manifestNumber: widget.trip_number.toString(),
      ),
    );
  }

  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: TripRecordText(),
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
      body: BlocConsumer<GetManifestBMCubit, GetState<GetManifestBmEntity>>(
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
              return Column(
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
                            'Manifest  ${widget.trip_number}',
                            style: TextStyle(
                              color: AppColors.pureBlack,
                              fontFamily: 'bahnschrift',
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        LogoImageWidget(),
                      ],
                    ),
                  ),
                  DividerBetweenListElements(),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.lightBlue,
                        border: Border.all(
                          color: AppColors.darkBlue,
                        ),
                      ),
                      margin: EdgeInsets.only(top: 20.0, left: 20.0),
                      child: Row(
                        children: [
                          ManifestTableHeader(),
                          Container(
                            width: 1.h,
                            color: AppColors.darkBlue,
                          ),
                          Expanded(
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 10.0),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          //:todo here count
                                          '${"1"}',
                                          style: TextStyle(
                                            color: AppColors.pureBlack,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          '${data.data.manifest.shippings[index].id}',
                                          style: TextStyle(
                                            color: AppColors.pureBlack,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          '${data.data.manifest.shippings[index].source}',
                                          style: TextStyle(
                                            color: AppColors.pureBlack,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          //todo : herreee type
                                          '${data.data.manifest.shippings[index].type}',
                                          style: TextStyle(
                                            color: AppColors.pureBlack,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          '${data.data.manifest.shippings[index].quantity}',
                                          style: TextStyle(
                                            color: AppColors.pureBlack,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          '${data.data.manifest.shippings[index].sender}',
                                          style: TextStyle(
                                            color: AppColors.pureBlack,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          //  todo://hereee
                                          '${data.data.manifest.shippings[index].receiver}',
                                          style: TextStyle(
                                            color: AppColors.pureBlack,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          '${data.data.manifest.shippings[index].againstShipping}',
                                          style: TextStyle(
                                            color: AppColors.pureBlack,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          '${data.data.manifest.shippings[index].miscellaneous}',
                                          style: TextStyle(
                                            color: AppColors.pureBlack,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          '${data.data.manifest.shippings[index].prepaid}',
                                          style: TextStyle(
                                            color: AppColors.pureBlack,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          '${data.data.manifest.shippings[index].discount}',
                                          style: TextStyle(
                                            color: AppColors.pureBlack,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          '${data.data.manifest.shippings[index].collection}',
                                          style: TextStyle(
                                            color: AppColors.pureBlack,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          '${data.data.manifest.shippings[index].adapter}',
                                          style: TextStyle(
                                            color: AppColors.pureBlack,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ViewTripInvoiceForB_Manager(
                                                      shipping_id: data.data.manifest.shippings[index].id ,
                                                    ),
                                              ),
                                            );
                                          },
                                          icon: Icon(
                                            Icons.remove_red_eye,
                                            color: AppColors.darkBlue,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) => Container(
                                width: 1.h,
                                color: AppColors.mediumBlue,
                              ),
                              itemCount: data.data.manifest.shippings.length,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
