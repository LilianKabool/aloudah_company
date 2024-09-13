import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/features/branchManager/controllers/get_profile_cubit.dart';
import 'package:aloudeh_company/features/branchManager/data/entity/get_profile_entity.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/b_manager_profile_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../../core/error/network_exceptions.dart';
import '../../../../../core/global_states/get_state.dart';
import '../../../../admin/presentation/widgets/space_item.dart';

class B_ManagerProfileScreen extends StatefulWidget {
  @override
  State<B_ManagerProfileScreen> createState() => _B_ManagerProfileScreenState();
}

class _B_ManagerProfileScreenState extends State<B_ManagerProfileScreen> {
  @override
  late GetProfileBMCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<GetProfileBMCubit>();
    cubit.emitGetProfile();
  }
  Widget build(BuildContext context) {
    return BlocConsumer<GetProfileBMCubit, GetState<GetProfileEntity>>(
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
            return ListView(
              children: [
                SpaceItem(),
                Icon(
                  Icons.account_circle,
                  color: AppColors.darkBlue,
                  size: 120.r,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  '${data.data.name}',
                  style: TextStyle(
                    color: AppColors.pureBlack,
                    fontFamily: 'bahnschrift',
                    fontSize: 22.0.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  '${data.data.rank}',
                  style: TextStyle(
                    color: AppColors.pureBlack,
                    fontFamily: 'Bauhaus',
                    fontSize: 18.0.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
                SpaceItem(),
                SpaceItem(),
                B_ManagerProfileInfo(
                    address: data.data.managerAddress,
                    email: data.data.email,
                    mobile: data.data.phoneNumber.toString(),
                    birth: data.data.dateOfBirth.toString()),
                SpaceItem(),
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.5),
                    BlendMode.dstIn,
                  ),
                  child: Image.asset(
                    'assets/images/Logo.png',
                    fit: BoxFit.contain,
                    width: 188.w,
                    height: 188.h,
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
