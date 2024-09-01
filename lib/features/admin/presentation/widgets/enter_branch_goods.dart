import 'package:aloudeh_company/core/global/base_entity.dart';
import 'package:aloudeh_company/core/global_states/post_state.dart';
import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:aloudeh_company/features/branchManager/controllers/add_shipping_cost_cubit.dart';
import 'package:aloudeh_company/features/branchManager/data/params/add_shipping_cost_params.dart';import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../core/constants/colors_constants.dart';
import '../../../../core/error/network_exceptions.dart';


class EnterBranchGoods extends StatelessWidget{

  var good_type = TextEditingController();
  var good_wieght = TextEditingController();
  var good_price = TextEditingController();

  EnterBranchGoods({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SpaceItem(),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 40.h,
                  child: TextFormField(
                    controller: good_type,
                    decoration: const InputDecoration(
                      isDense: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.darkBlue,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.darkBlue,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      hintText: 'Good',
                      hintStyle: TextStyle(
                        color: AppColors.darkBlue,
                        fontFamily: 'Bahnschrift',
                      ),
                    ),
                    onChanged: (value) {
                      print(value);
                    },
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth/75,
              ),
              Expanded(
                child: SizedBox(
                  height: 40.h,
                  child: TextFormField(
                    controller: good_wieght,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      isDense: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.darkBlue,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.darkBlue,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      hintText: 'Wieght',
                      hintStyle: TextStyle(
                        color: AppColors.darkBlue,
                        fontFamily: 'Bahnschrift',
                      ),
                    ),
                    onChanged: (value) {
                      print(value);
                    },
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth/75,
              ),
              Expanded(
                child: SizedBox(
                  height: 40.h,
                  child: TextFormField(
                    controller: good_price,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      isDense: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.darkBlue,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.darkBlue,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      hintText: 'Price',
                      hintStyle: TextStyle(
                        color: AppColors.darkBlue,
                        fontFamily: 'Bahnschrift',
                      ),
                    ),
                    onChanged: (value) {
                      print(value);
                    },
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                  ),
                ),
              ),
            ],
          ),
          const SpaceItem(),
          BlocConsumer<AddShippingCostCubit , PostState <BaseEntity>>(
            listener: (context, state) {
              state.whenOrNull(
                success: (_) {
                  Fluttertoast.showToast(
                    msg: "edit it  successfully!",
                    toastLength: Toast.LENGTH_SHORT,
                  );
                },
                error: (exception) {
                  Fluttertoast.showToast(
                    msg: NetworkExceptions.getErrorMessage(exception),
                    toastLength: Toast.LENGTH_SHORT,
                  );
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                idle: (){
                  return Container(
                    width: double.infinity,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      //color: AppColors.yellow,
                    ),
                    child: FloatingActionButton(
                      onPressed: (){
                        context
                            .read<AddShippingCostCubit>()
                            .emitAddShippingCost(addShippingCostParams:ShippingCostParams(
                          cost: good_price.text,
                          type: good_type.text,
                        ), );
                      },
                      backgroundColor: AppColors.darkBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      elevation: 0.0,
                      child: Text(
                        'Enter Good',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          //fontWeight: FontWeight.bold,
                          fontSize: 17.0.sp,
                          color: AppColors.pureWhite,
                        ),
                      ),
                    ),
                  );

                },
                orElse: () {
                  return Container(
                    width: double.infinity,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      //color: AppColors.yellow,
                    ),
                    child: FloatingActionButton(
                      onPressed: (){
                        context
                            .read<AddShippingCostCubit>()
                            .emitAddShippingCost(addShippingCostParams:ShippingCostParams(
                          cost: good_price.text,
                          type: good_type.text,
                        ), );
                      },
                      backgroundColor: AppColors.darkBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      elevation: 0.0,
                      child: Text(
                        'Enter Good',
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          //fontWeight: FontWeight.bold,
                          fontSize: 17.0.sp,
                          color: AppColors.pureWhite,
                        ),
                      ),
                    ),
                  );
                },
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              );
            },

          ),
          //SpaceItem(),
        ],
      ),
    );
  }
}