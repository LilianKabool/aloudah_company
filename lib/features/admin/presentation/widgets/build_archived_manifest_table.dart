import 'package:aloudeh_company/features/admin/data/entity/get_manifest_entity.dart';
import 'package:aloudeh_company/features/admin/data/params/params/get_manifest_params.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/get_manifest_cubit.dart';
import 'package:aloudeh_company/features/admin/presentation/screens/archived_order_details_for_admin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
    context.read<GetManifestCubit>().emitGetManifest(
        getManifestParams:
            GetManifestParams(manifestNumber: widget.manifestNumber));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetManifestCubit, GetState<GetManifestEntity>>(
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
              ShippingData shipping = data.data.shippings[index];
              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Column(
                  children: [
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
                        '${shipping.numOfPackages}',
                        style: TextStyle(
                          color: AppColors.pureBlack,
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        shipping.content,
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
                        shipping.againstShipping ?? '-',
                        style: TextStyle(
                          color: AppColors.pureBlack,
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        shipping.miscellaneous ?? '-',
                        style: TextStyle(
                          color: AppColors.pureBlack,
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        shipping.prepaid ?? '-',
                        style: TextStyle(
                          color: AppColors.pureBlack,
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        shipping.discount ?? '-',
                        style: TextStyle(
                          color: AppColors.pureBlack,
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        shipping.collection ?? '-',
                        style: TextStyle(
                          color: AppColors.pureBlack,
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        shipping.adapter ?? '-',
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
                                archived_source: shipping.sourceName,
                                archived_destination: shipping.destinationName,
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
            itemCount: data.data.shippings.length,
          ),
        );
      },
    );
  }
}
