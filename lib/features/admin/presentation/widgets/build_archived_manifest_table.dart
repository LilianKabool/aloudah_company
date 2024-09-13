import 'package:aloudeh_company/features/admin/data/entity/get_manifest_entity.dart';
import 'package:aloudeh_company/features/admin/data/params/params/get_manifest_params.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_manifest_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/screens/archived_order_details_for_admin.dart';
import 'package:aloudeh_company/features/branchManager/controllers/get_manifest_bm_cubit.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_manifest_bm_entity.dart';
import 'package:aloudeh_company/features/branchManager/data/params/get_manifest_params.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../../../../core/constants/colors_constants.dart';
import '../../../../core/error/network_exceptions.dart';
import '../../../../core/global_states/get_state.dart';

class BuildArchivedManifestTable extends StatefulWidget {
  @override
  final String manifestNumber;

  const BuildArchivedManifestTable({super.key, required this.manifestNumber});

  @override
  State<BuildArchivedManifestTable> createState() =>
      _BuildArchivedManifestTableState();
}

class _BuildArchivedManifestTableState
    extends State<BuildArchivedManifestTable> {
  @override
  void initState() {
    context.read<GetManifestBMCubit>().emitGetManifest(
        getManifestBMParams:
            GetManifestBMParams(manifestNumber: widget.manifestNumber));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetManifestBMCubit, GetState<GetManifestBmEntity>>(
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
          orElse: () => const SizedBox(),
          loading: () => const CupertinoActivityIndicator(),
          success: (data) => ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              GetManifestBmEntity shipping = data;
              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Text(
                        shipping.data.manifest.shippings[index].receiver,
                        style: TextStyle(
                          color: AppColors.pureBlack,
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '${shipping.data.manifest.shippings[index].quantity}',
                        style: TextStyle(
                          color: AppColors.pureBlack,
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        shipping.data.manifest.shippings[index].content,
                        style: TextStyle(
                          color: AppColors.pureBlack,
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        shipping.data.manifest.shippings[index].source,
                        style: TextStyle(
                          color: AppColors.pureBlack,
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        shipping.data.manifest.shippings[index].sender,
                        style: TextStyle(
                          color: AppColors.pureBlack,
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        shipping.data.manifest.shippings[index].againstShipping ?? '-',
                        style: TextStyle(
                          color: AppColors.pureBlack,
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        shipping.data.manifest.shippings[index].miscellaneous ?? '-',
                        style: TextStyle(
                          color: AppColors.pureBlack,
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        shipping.data.manifest.shippings[index].prepaid ?? '-',
                        style: TextStyle(
                          color: AppColors.pureBlack,
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        shipping.data.manifest.shippings[index].discount ?? '-',
                        style: TextStyle(
                          color: AppColors.pureBlack,
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        shipping.data.manifest.shippings[index].collection ?? '-',
                        style: TextStyle(
                          color: AppColors.pureBlack,
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        shipping.data.manifest.shippings[index].adapter ?? '-',
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
                                  ArchivedOrderDetailsForAdmin(
                                    prepaid_against_shipping: shipping.data.manifest.againstShipping,
                                archived_source: shipping.data.manifest.shippings[index].source,
                                archived_destination: shipping.data.manifest.shippings[index].destinationId.toString(),
                                sender: shipping.data.manifest.shippings[index].sender,
                                recipient: shipping.data.manifest.shippings[index].receiver,
                                notes: shipping.data.manifest.shippings[index].notes.toString(),
                                prepaid_cost: shipping.data.manifest.shippings[index].shippingCost,
                                num_of_packages: int.parse(
                                    shipping.data.manifest.shippings[index].quantity.toString()),
                                // package_type:shipping.data.manifest.shippings[index].
                          //      prepaid_against_shipping.data.manifest.shippings[index]shipping.data.manifest.shippings[index].againstShipping.toString(),
                                // collection_against_shipping.data.manifest.shippings[index]:shipping.data.manifest.shippings[index].
                                // collection_cost:shipping.data.manifest.shippings[index]
                                content: shipping.data.manifest.shippings[index].content,
                                weight: shipping.data.manifest.shippings[index].weight,
                                marks: shipping.data.manifest.shippings[index].marks,
                                size: shipping.data.manifest.shippings[index].size,
                                collection_adapter: shipping.data.manifest.shippings[index].adapter.toString(),
                              ),
                            ),
                          );
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
            separatorBuilder: (context, index) => Container(
              width: 1.h,
              color: AppColors.mediumBlue,
            ),
            itemCount: data.data.manifest.shippings.length,
          ),
        );
      },
    );
  }
}
