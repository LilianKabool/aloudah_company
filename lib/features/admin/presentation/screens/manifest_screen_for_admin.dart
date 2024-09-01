import 'package:aloudeh_company/core/global_states/get_state.dart';
import 'package:aloudeh_company/features/admin/data/entity/get_manifest_entity.dart';
import 'package:aloudeh_company/features/admin/data/params/params/get_manifest_params.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_manifest_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../core/constants/colors_constants.dart';
import '../../../../core/error/network_exceptions.dart';
import '../widgets/divider_between_list_elements.dart';
import '../widgets/divider_item.dart';
import '../widgets/logo_image_widget.dart';
import '../widgets/manifest_table_header.dart';
import '../widgets/trip_record_text.dart';
import 'order_details_for_admin.dart';


class ManifestScreenForAdmin extends StatefulWidget {

  final String manifest_id;

  const ManifestScreenForAdmin({super.key, required this.manifest_id, });

  @override
  State<ManifestScreenForAdmin> createState() => _ManifestScreenForAdminState();
}

class _ManifestScreenForAdminState extends State<ManifestScreenForAdmin> {
  @override
  void initState() {
    context.read<GetManifestCubit>().emitGetManifest(
        getManifestParams:
        GetManifestParams(manifestNumber: widget.manifest_id));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;
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
      body: Column(
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
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.lightBlue,
                border: Border.all(
                  color: AppColors.darkBlue,
                ),
              ),
              margin: const EdgeInsets.only(top: 20.0, left: 20.0),
              child: Row(
                children: [
                  const ManifestTableHeader(),
                  Container(
                    width: 1.h,
                    color: AppColors.darkBlue,
                  ),
                  BlocConsumer<GetManifestCubit, GetState<GetManifestEntity>>(
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
                    builder: (cotext, state) {
                      return state.maybeWhen(orElse: () => const SizedBox(),
                        loading: () => const CupertinoActivityIndicator(),
                          success: (data){
                        return Expanded(
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              ShippingData shipping = data.data.shippings[index];
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 10.0),
                                child: Column(
                                  children: [
                                    // Expanded(
                                    //   child: Text(
                                    //     '${shipping.count}',
                                    //     style: TextStyle(
                                    //       color: AppColors.pureBlack,
                                    //       fontFamily: 'bahnschrift',
                                    //       fontSize: 16.sp,
                                    //     ),
                                    //   ),
                                    // ),
                                    Expanded(
                                      child: Text(
                                        shipping.receiver,
                                        style: TextStyle(
                                          color: AppColors.pureBlack,
                                          fontFamily: 'bahnschrift',
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        shipping.sourceName,
                                        style: TextStyle(
                                          color: AppColors.pureBlack,
                                          fontFamily: 'bahnschrift',
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ),
                                    // Expanded(
                                    //   child: Text(
                                    //     '${shipping}',
                                    //     style: TextStyle(
                                    //       color: AppColors.pureBlack,
                                    //       fontFamily: 'bahnschrift',
                                    //       fontSize: 16.sp,
                                    //     ),
                                    //   ),
                                    // ),
                                    // Expanded(
                                    //   child: Text(
                                    //     '${quantity}',
                                    //     style: TextStyle(
                                    //       color: AppColors.pureBlack,
                                    //       fontFamily: 'bahnschrift',
                                    //       fontSize: 16.sp,
                                    //     ),
                                    //   ),
                                    // ),
                                    Expanded(
                                      child: Text(
                                        shipping.sender,
                                        style: TextStyle(
                                          color: AppColors.pureBlack,
                                          fontFamily: 'bahnschrift',
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        shipping.receiver,
                                        style: TextStyle(
                                          color: AppColors.pureBlack,
                                          fontFamily: 'bahnschrift',
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '${shipping.againstShipping}',
                                        style: TextStyle(
                                          color: AppColors.pureBlack,
                                          fontFamily: 'bahnschrift',
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '${shipping.miscellaneous}',
                                        style: TextStyle(
                                          color: AppColors.pureBlack,
                                          fontFamily: 'bahnschrift',
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '${shipping.prepaid}',
                                        style: TextStyle(
                                          color: AppColors.pureBlack,
                                          fontFamily: 'bahnschrift',
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '${shipping.discount}',
                                        style: TextStyle(
                                          color: AppColors.pureBlack,
                                          fontFamily: 'bahnschrift',
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '${shipping.collection}',
                                        style: TextStyle(
                                          color: AppColors.pureBlack,
                                          fontFamily: 'bahnschrift',
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '${shipping.adapter}',
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
                                          Navigator.push(context, MaterialPageRoute(
                                              builder: (context) =>
                                                  OrderDetailsForAdmin(
                                                    source: shipping.sourceName,
                                                    discount:shipping.discount.toString() ,
                                                    destination: shipping.destinationName,
                                                    sender: shipping.sender,
                                                    recipient: shipping.receiver,
                                                    notes: shipping.notes.toString(),
                                                    prepaid_cost: shipping.shippingCost,
                                                    num_of_packages: int.parse(
                                                        shipping.numOfPackages.toString()),
                                                    // package_type:shipping.
                                                    prepaid_against_shipping:
                                                    shipping.againstShipping.toString(),
                                                    // collection_against_shipping:shipping.
                                                    // collection_cost:shipping
                                                    content: shipping.content,
                                                    weight: shipping.weight,
                                                    marks: shipping.marks,
                                                    size: shipping.size,
                                                    collection_adapter: shipping.adapter.toString(),
                                                  )));
                                        },
                                        icon: const Icon(
                                          Icons.remove_red_eye,
                                          color: AppColors.darkBlue,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, index) =>
                                Container(
                                  width: 1.h,
                                  color: AppColors.mediumBlue,
                                ),
                            itemCount: 15,
                          ),
                        );
                          },
                      );
                    },

                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
