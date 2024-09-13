import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/core/error/network_exceptions.dart';
import 'package:aloudeh_company/features/branchManager/controllers/get_manifest_bm_cubit.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_shipping_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/params/get_shipping_params.dart';
import 'package:aloudeh_company/features/branchManager/presentation/screens/branch_manager/package_info_in_view_t_invoice_for_b_manager.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../../core/global_states/get_state.dart';
import '../../../controllers/get_shipping_cubit.dart';
import '../../widget/divider_item.dart';
import '../../widget/divider_space_item.dart';

import '../../widget/trip_invoice_text.dart';


class ViewTripInvoiceForB_Manager extends StatefulWidget {
  final int shipping_id;


  ViewTripInvoiceForB_Manager({
    required this.shipping_id,

  });

  @override
  State<ViewTripInvoiceForB_Manager> createState() => _ViewTripInvoiceForB_ManagerState();
}

class _ViewTripInvoiceForB_ManagerState extends State<ViewTripInvoiceForB_Manager> {

  late GetShippingCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetShippingCubit>();
    cubit.emitGetShipping(GetShippingParams: GetShippingParams(id: widget.shipping_id.toString()),
    );
  }
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: TripInvoiceText(),
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
      body: BlocConsumer<GetShippingCubit , GetState<GetShippingEntity>>(
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


              return ListView(
                children: [
                  SpaceItem(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Source',
                                style: TextStyle(
                                  fontFamily: 'bahnschrift',
                                  color: AppColors.pureBlack,
                                  fontSize: 16.sp,
                                ),
                              ),
                              Container(
                                height: 40.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                  color: AppColors.darkBlue,
                                ),
                                child: Center(
                                  child: Text(
                                    '${data.data.sourceName}',
                                    style: TextStyle(
                                      fontFamily: 'bahnschrift',
                                      color: AppColors.pureWhite,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Destination',
                                style: TextStyle(
                                  fontFamily: 'bahnschrift',
                                  color: AppColors.pureBlack,
                                  fontSize: 16.sp,
                                ),
                              ),
                              Container(
                                height: 40.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                  color: AppColors.yellow,
                                ),
                                child: Center(
                                  child: Text(
                                    '${data.data.destinationName}',
                                    style: TextStyle(
                                      fontFamily: 'bahnschrift',
                                      color: AppColors.darkBlue,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  DividerSpaceItem(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Sender',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.darkBlue,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 11.3,
                            ),
                            Expanded(
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    '${data.data.sender}',
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
                        SpaceItem(),
                        Row(
                          children: [
                            Text(
                              'Recipient',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.darkBlue,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 22,
                            ),
                            Expanded(
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    '${data.data.receiver}',
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
                        SpaceItem(),
                        Row(
                          children: [
                            Text(
                              'Notes',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.darkBlue,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 8.9,
                            ),
                            Expanded(
                              child: Container(
                                height: 40.h,
                                color: AppColors.mediumBlue,
                                child: Center(
                                  child: Text(
                                    '${data.data.notes}',
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
                      ],
                    ),
                  ),
                  DividerSpaceItem(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Package Information',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.yellow,
                            fontSize: 17.sp,
                          ),
                        ),
                        SpaceItem(),
                        Row(
                          children: [
                            Text(
                              'Num Of Packages',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.pureBlack,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 20,
                            ),
                            Expanded(
                              child: Container(
                                height: 35.h,
                                color: AppColors.darkBlue,
                                child: Center(
                                  child: Text(
                                    '${data.data.quantity}',
                                    style: TextStyle(
                                      fontFamily: 'bahnschrift',
                                      color: AppColors.pureWhite,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SpaceItem(),
                        Row(
                          children: [
                            Text(
                              'Package Type',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.pureBlack,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 8,
                            ),
                            Expanded(
                              child: Container(
                                height: 35.h,
                                color: AppColors.yellow,
                                child: Center(
                                  child: Text(
                                    '${data.data.type}',
                                    style: TextStyle(
                                      fontFamily: 'bahnschrift',
                                      color: AppColors.pureBlack,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SpaceItem(),
                        Row(
                          children: [
                            Text(
                              'Content',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.pureBlack,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 4.2,
                            ),
                            Expanded(
                              child: Container(
                                height: 35.h,
                                color: AppColors.darkBlue,
                                child: Center(
                                  child: Text(
                                    '${data.data.content}',
                                    style: TextStyle(
                                      fontFamily: 'bahnschrift',
                                      color: AppColors.pureWhite,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SpaceItem(),
                        Row(
                          children: [
                            Text(
                              'Weight',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.pureBlack,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 3.85,
                            ),
                            Expanded(
                              child: Container(
                                height: 35.h,
                                color: AppColors.yellow,
                                child: Center(
                                  child: Text(
                                    '${data.data.weight}',
                                    style: TextStyle(
                                      fontFamily: 'bahnschrift',
                                      color: AppColors.pureBlack,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SpaceItem(),
                        Row(
                          children: [
                            Text(
                              'Marks',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.pureBlack,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 3.7,
                            ),
                            Expanded(
                              child: Container(
                                height: 35.h,
                                color: AppColors.darkBlue,
                                child: Center(
                                  child: Text(
                                    '${data.data.marks}',
                                    style: TextStyle(
                                      fontFamily: 'bahnschrift',
                                      color: AppColors.pureWhite,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SpaceItem(),
                        Row(
                          children: [
                            Text(
                              'Size',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.pureBlack,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth / 3.23,
                            ),
                            Expanded(
                              child: Container(
                                height: 35.h,
                                color: AppColors.yellow,
                                child: Center(
                                  child: Text(
                                    '${data.data.size}',
                                    style: TextStyle(
                                      fontFamily: 'bahnschrift',
                                      color: AppColors.pureBlack,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  DividerSpaceItem(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Costs',
                          style: TextStyle(
                            fontFamily: 'bahnschrift',
                            color: AppColors.yellow,
                            fontSize: 17.sp,
                          ),
                        ),
                        SpaceItem(),
                        Row(
                          children: [
                            Text(
                              'Shipping Cost',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.pureBlack,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: 42.8.w,
                            ),
                            Expanded(
                              child: Material(
                                elevation: 1.0,
                                child: Container(
                                  height: 35.h,
                                  color: AppColors.mediumBlue,
                                  child: Center(
                                    child: Text(
                                      '${data.data.shippingCost}',
                                      style: TextStyle(
                                        fontFamily: 'bahnschrift',
                                        color: AppColors.darkBlue,
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SpaceItem(),
                      ],
                    ),
                  ),
                  SpaceItem(),
                ],
              );
            },
          );
        },

      ),
    );
  }



}
