// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:aloudeh_company/core/constants/colors_constants.dart';
// import 'package:aloudeh_company/core/global_states/pagination_state.dart';
// import 'package:aloudeh_company/features/admin/presentation/controllers/get_all_branches_cubit.dart';
// import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import '../../../../core/error/network_exceptions.dart';
// import '../../data/entity/get_all_branches_paginated_entity.dart';
//
// class AddBranchWarehouseInformation extends StatefulWidget {
//   final TextEditingController warehouseNameController;
//   final TextEditingController warehouseLocationController;
//   final TextEditingController notesController;
//   final TextEditingController areaController;
//
//   AddBranchWarehouseInformation({
//     required this.warehouseNameController,
//     required this.warehouseLocationController,
//     required this.areaController,
//     required this.notesController,
//   });
//
//   @override
//   State<AddBranchWarehouseInformation> createState() =>
//       _AddBranchWarehouseInformationState();
// }
//
// class _AddBranchWarehouseInformationState
//     extends State<AddBranchWarehouseInformation> {
//   String selectedBranch = "";
//
//   @override
//   void initState() {
//     super.initState();
//     context.read<GetAllBranchesPaginatedCubit>().emitGetAllBranches();
//   }
//
//   Widget buildTextField({
//     required String label,
//     required TextEditingController controller,
//   }) {
//     return Column(
//       children: [
//         Text(
//           label,
//           style: TextStyle(
//             color: AppColors.darkBlue,
//             fontFamily: 'bahnschrift',
//             fontSize: 16.sp,
//           ),
//           textAlign: TextAlign.center,
//         ),
//         Container(
//           height: 44.h,
//           child: TextFormField(
//             controller: controller,
//             cursorColor: AppColors.darkBlue,
//             decoration: InputDecoration(
//               isDense: true,
//               filled: true,
//               fillColor: AppColors.pureWhite,
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: AppColors.darkBlue),
//                 borderRadius: BorderRadius.all(Radius.circular(10.r)),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: AppColors.darkBlue),
//                 borderRadius: BorderRadius.circular(10.r),
//               ),
//             ),
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return 'This field must not be empty';
//               }
//               return null;
//             },
//           ),
//         ),
//         SpaceItem(),
//       ],
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20.0),
//         child: Container(
//           padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 70.0),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20.r),
//             color: AppColors.lightBlue,
//           ),
//           child: ListView(
//             children: <Widget>[
//               buildTextField(
//                 label: 'Area',
//                 controller: widget.areaController,
//               ),
//               buildTextField(
//                 label: 'Warehouse Name',
//                 controller: widget.warehouseNameController,
//               ),
//               buildTextField(
//                 label: 'Location',
//                 controller: widget.warehouseLocationController,
//               ),
//               buildTextField(
//                 label: 'Notes',
//                 controller: widget.notesController,
//               ),
//               Text(
//                 'Branch Name',
//                 style: TextStyle(
//                   color: AppColors.darkBlue,
//                   fontFamily: 'bahnschrift',
//                   fontSize: 16.sp,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               BlocBuilder<GetAllBranchesPaginatedCubit,
//                   PaginationState<GetAllBranchesPaginatedEntity>>(
//                 builder: (context, state) {
//                   return Container(
//                     height: 44.h,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10.r),
//                       color: AppColors.pureWhite,
//                       border: Border.all(color: AppColors.darkBlue),
//                     ),
//                     child: DropdownButtonHideUnderline(
//                       child: ,
//                     ),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
