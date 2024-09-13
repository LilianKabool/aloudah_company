
import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/divider_space_item.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/space_item.dart';
import 'package:aloudeh_company/features/customer/conroller/get_arrived_shippings_cubit.dart';
import 'package:aloudeh_company/features/customer/data/entity/get_arrived_shipping_entity.dart';
import 'package:aloudeh_company/features/customer/data/entity/get_not_arrived_shipping_entity.dart';
import 'package:aloudeh_company/features/customer/data/entity/get_not_received_shipping_entity.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../core/error/network_exceptions.dart';
import '../../../../core/global_states/get_state.dart';
import '../../conroller/get_not_arrived_shipping_cubit.dart';

class ViewSentOrdersForCustomer extends StatefulWidget{

  @override
  State<ViewSentOrdersForCustomer> createState() => _ViewSentOrdersForCustomerState();
}

class _ViewSentOrdersForCustomerState extends State<ViewSentOrdersForCustomer> {

  late GetArrivedShippingCubit cubit1;
  late GetNotArrivedShippingCubit cubit2;

  @override
  void initState() {
    super.initState();
    cubit1 = context.read<GetArrivedShippingCubit>();
    cubit1.emitGetShipping();
    cubit2 = context.read<GetNotArrivedShippingCubit>();
    cubit2.emitGetShipping();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SpaceItem(),
          BlocConsumer<GetArrivedShippingCubit , GetState<GetArrivedShippingEntity>>(
            listener: (context, state) {
              state.whenOrNull(
                error: (networkExceptions) => Fluttertoast.showToast(
                  msg: NetworkExceptions.getErrorMessage(networkExceptions),
                  toastLength: Toast.LENGTH_SHORT,
                ),
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const Center(child: Text("No data available")),
                loading: () => const Center(child: CircularProgressIndicator()),
                success: (data) {
                  return CarouselSlider.builder(
                    itemCount: 5,
                    itemBuilder: (_, int index, int x) => SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(
                            '${data.data[index].number}',
                            style: TextStyle(
                              color: AppColors.darkBlue,
                              fontFamily: 'Bauhaus',
                              fontSize: 17.0.sp,
                            ),
                          ),
                          Banner(
                            message: 'Sent',
                            location: BannerLocation.topEnd,
                            color: AppColors.darkBlue,
                            child: Container(
                              height: 240.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                color: AppColors.pureWhite,
                                border: Border.all(
                                  color: AppColors.darkBlue,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SpaceItem(),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.numbers,
                                          color: AppColors.darkBlue,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          'Manifest : ',
                                          style: TextStyle(
                                            color: AppColors.darkBlue,
                                            fontFamily: 'Bauhaus',
                                            fontSize: 17.0.sp,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          '${data.data[index].manifestNumber}',
                                          style: TextStyle(
                                            color: AppColors.pureBlack,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.0.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.person_3_outlined,
                                          color: AppColors.darkBlue,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          'ٌReciever : ',
                                          style: TextStyle(
                                            color: AppColors.darkBlue,
                                            fontFamily: 'Bauhaus',
                                            fontSize: 17.0.sp,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          '${data.data[index].receiver}',
                                          style: TextStyle(
                                            color: AppColors.pureBlack,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.0.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.pin_drop_outlined,
                                          color: AppColors.darkBlue,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          'Dest : ',
                                          style: TextStyle(
                                            color: AppColors.darkBlue,
                                            fontFamily: 'Bauhaus',
                                            fontSize: 17.0.sp,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          '${data.data[index].destination}',
                                          style: TextStyle(
                                            color: AppColors.pureBlack,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.0.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.shopping_bag_outlined,
                                          color: AppColors.darkBlue,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          'Type : ',
                                          style: TextStyle(
                                            color: AppColors.darkBlue,
                                            fontFamily: 'Bauhaus',
                                            fontSize: 17.0.sp,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          '${data.data[index].type}',
                                          style: TextStyle(
                                            color: AppColors.pureBlack,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.0.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.confirmation_num_outlined,
                                          color: AppColors.darkBlue,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          'Quantity : ',
                                          style: TextStyle(
                                            color: AppColors.darkBlue,
                                            fontFamily: 'Bauhaus',
                                            fontSize: 17.0.sp,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          '${data.data[index].quantity}',
                                          style: TextStyle(
                                            color: AppColors.pureBlack,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.0.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.money,
                                          color: AppColors.darkBlue,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          'Shipping Cost : ',
                                          style: TextStyle(
                                            color: AppColors.darkBlue,
                                            fontFamily: 'Bauhaus',
                                            fontSize: 17.0.sp,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          '${data.data[index].shippingCost}',
                                          style: TextStyle(
                                            color: AppColors.pureBlack,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.0.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_month,
                                          color: AppColors.yellow,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          'Shipping Date : ',
                                          style: TextStyle(
                                            color: AppColors.yellow,
                                            fontFamily: 'Bauhaus',
                                            fontSize: 17.0.sp,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          '${data.data[index].shippingDate }',
                                          style: TextStyle(
                                            color: AppColors.yellow,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.0.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.event_available_outlined,
                                          color: AppColors.yellow,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          'Recieved Date : ',
                                          style: TextStyle(
                                            color: AppColors.yellow,
                                            fontFamily: 'Bauhaus',
                                            fontSize: 17.0.sp,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          '${data.data[index].receivingDate}',
                                          style: TextStyle(
                                            color: AppColors.yellow,
                                            fontFamily: 'bahnschrift',
                                            fontSize: 16.0.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    options: CarouselOptions(
                      height: 280.h,
                      initialPage: 0,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2),
                      enlargeCenterPage: true,
                      viewportFraction: 0.9,
                    ),
                  );
                },
              );
            },

          ),
          SpaceItem(),
          BlocConsumer<GetNotArrivedShippingCubit , GetState<GetNotArrivedShippingEntity>>(
            listener: (context, state) {
              state.whenOrNull(
                error: (networkExceptions) => Fluttertoast.showToast(
                  msg: NetworkExceptions.getErrorMessage(networkExceptions),
                  toastLength: Toast.LENGTH_SHORT,
                ),
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const Center(child: Text("No data available")),
                loading: () => const Center(child: CircularProgressIndicator()),
                success: (data) {
                  return Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Text(
                              '${data.data[index].number}',
                              style: TextStyle(
                                color: AppColors.darkBlue,
                                fontFamily: 'Bauhaus',
                                fontSize: 17.0.sp,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Banner(
                                message: 'Waiting',
                                location: BannerLocation.topEnd,
                                color: AppColors.darkBlue,
                                child: Container(
                                  width: double.infinity,
                                  height: 240.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    color: AppColors.pureWhite,
                                    border: Border.all(
                                      color: AppColors.darkBlue,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      SpaceItem(),
                                      Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 20.w),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.numbers,
                                                  color: AppColors.darkBlue,
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Text(
                                                  'Manifest : ',
                                                  style: TextStyle(
                                                    color: AppColors.darkBlue,
                                                    fontFamily: 'Bauhaus',
                                                    fontSize: 17.0.sp,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Text(
                                                  '${data.data[index].manifestNumber}',
                                                  style: TextStyle(
                                                    color: AppColors.pureBlack,
                                                    fontFamily: 'bahnschrift',
                                                    fontSize: 16.0.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.person_3_outlined,
                                                  color: AppColors.darkBlue,
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Text(
                                                  'Reciever : ',
                                                  style: TextStyle(
                                                    color: AppColors.darkBlue,
                                                    fontFamily: 'Bauhaus',
                                                    fontSize: 17.0.sp,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Text(
                                                  '${data.data[index].receiver}',
                                                  style: TextStyle(
                                                    color: AppColors.pureBlack,
                                                    fontFamily: 'bahnschrift',
                                                    fontSize: 16.0.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.pin_drop_outlined,
                                                  color: AppColors.darkBlue,
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Text(
                                                  'Dest : ',
                                                  style: TextStyle(
                                                    color: AppColors.darkBlue,
                                                    fontFamily: 'Bauhaus',
                                                    fontSize: 17.0.sp,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Text(
                                                  '${data.data[index].destination}',
                                                  style: TextStyle(
                                                    color: AppColors.pureBlack,
                                                    fontFamily: 'bahnschrift',
                                                    fontSize: 16.0.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.shopping_bag_outlined,
                                                  color: AppColors.darkBlue,
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Text(
                                                  'Type : ',
                                                  style: TextStyle(
                                                    color: AppColors.darkBlue,
                                                    fontFamily: 'Bauhaus',
                                                    fontSize: 17.0.sp,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Text(
                                                  '${data.data[index].type}',
                                                  style: TextStyle(
                                                    color: AppColors.pureBlack,
                                                    fontFamily: 'bahnschrift',
                                                    fontSize: 16.0.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.confirmation_num_outlined,
                                                  color: AppColors.darkBlue,
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Text(
                                                  'Quantity : ',
                                                  style: TextStyle(
                                                    color: AppColors.darkBlue,
                                                    fontFamily: 'Bauhaus',
                                                    fontSize: 17.0.sp,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Text(
                                                  '${data.data[index].quantity}',
                                                  style: TextStyle(
                                                    color: AppColors.pureBlack,
                                                    fontFamily: 'bahnschrift',
                                                    fontSize: 16.0.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.calendar_month,
                                                  color: AppColors.darkBlue,
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Text(
                                                  'Shipping Date : ',
                                                  style: TextStyle(
                                                    color: AppColors.darkBlue,
                                                    fontFamily: 'Bauhaus',
                                                    fontSize: 17.0.sp,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Text(
                                                  '${data.data[index].shippingDate}',
                                                  style: TextStyle(
                                                    color: AppColors.pureBlack,
                                                    fontFamily: 'bahnschrift',
                                                    fontSize: 16.0.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      DividerSpaceItem(),
                                      Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 20.w),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Shipping Cost',
                                              style: TextStyle(
                                                color: AppColors.yellow,
                                                fontFamily: 'Bauhaus',
                                                fontSize: 17.0.sp,
                                              ),
                                            ),
                                            Text(
                                              '${data.data[index].shippingCost}',
                                              style: TextStyle(
                                                color: AppColors.yellow,
                                                fontFamily: 'bahnschrift',
                                                fontSize: 16.0.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) => SpaceItem(),
                      itemCount: data.data.length,
                    ),
                  );
                },
              );
            },

          ),
        ],
      ),
    );
  }
}
