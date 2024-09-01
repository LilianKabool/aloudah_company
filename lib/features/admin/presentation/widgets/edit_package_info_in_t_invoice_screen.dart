import 'package:aloudeh_company/features/admin/presentation/widgets/space_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors_constants.dart';


class EditPackageInfoInT_InvoiceScreen extends StatefulWidget{
  const EditPackageInfoInT_InvoiceScreen({super.key});


  @override
  State<EditPackageInfoInT_InvoiceScreen> createState() => _EditPackageInfoInT_InvoiceScreenState();
}

class _EditPackageInfoInT_InvoiceScreenState extends State<EditPackageInfoInT_InvoiceScreen> {

  String num_of_packages = '20';
  String package_type = 'Package';
  String weight = '200 Kg';
  String size = 'medium';
  String content = 'Toys';
  String marks = 'Katakate';
  String editedNumOfPackages = '';
  String editedPackageType = '';
  String editedWeight = '';
  String editedSize = '';
  String editedContent = '';
  String editedMarks = '';

  void _editNumOfPackages() {
    TextEditingController numOfPackagesController = TextEditingController(text: num_of_packages);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Edit Num Of Packages',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: numOfPackagesController,
            onChanged: (value) {
              editedNumOfPackages = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: const Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  num_of_packages = editedNumOfPackages;
                });
                numOfPackagesController.text = num_of_packages;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editPackageType() {
    TextEditingController packageTypeController = TextEditingController(text: package_type);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Edit Package Type',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: packageTypeController,
            onChanged: (value) {
              editedPackageType = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: const Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  package_type = editedPackageType;
                });
                packageTypeController.text = package_type;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editWeight() {
    TextEditingController weightController = TextEditingController(text: weight);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Edit Weight',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: weightController,
            onChanged: (value) {
              editedWeight = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: const Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  weight = editedWeight;
                });
                weightController.text = weight;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editSize() {
    TextEditingController sizeController = TextEditingController(text: size);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Edit Size',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: sizeController,
            onChanged: (value) {
              editedSize = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: const Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  size = editedSize;
                });
                sizeController.text = size;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editContent() {
    TextEditingController contentController = TextEditingController(text: content);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Edit Content',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: contentController,
            onChanged: (value) {
              editedContent = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: const Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  content = editedContent;
                });
                contentController.text = content;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editMarks() {
    TextEditingController marksController = TextEditingController(text: marks);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Edit Marks',
            style: TextStyle(
              fontFamily: 'Bauhaus',
              color: AppColors.yellow,
            ),
          ),
          content: TextField(
            controller: marksController,
            onChanged: (value) {
              editedMarks = value;
            },
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: AppColors.darkBlue,
              child: const Text(
                'Save',
                style: TextStyle(
                  color: AppColors.pureWhite,
                  fontFamily: 'bahnschrift',
                ),
              ),
              onPressed: () {
                setState(() {
                  marks = editedMarks;
                });
                marksController.text = marks;
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
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
          const SpaceItem(),
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
                child: GestureDetector(
                  onTap: (){
                    _editNumOfPackages();
                  },
                  child: Container(
                    height: 35.h,
                    color: AppColors.darkBlue,
                    child: Center(
                      child: Text(
                        num_of_packages,
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.pureWhite,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SpaceItem(),
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
                child: GestureDetector(
                  onTap: (){
                    _editPackageType();
                  },
                  child: Container(
                    height: 35.h,
                    color: AppColors.yellow,
                    child: Center(
                      child: Text(
                        package_type,
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.pureBlack,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SpaceItem(),
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
                child: GestureDetector(
                  onTap: (){
                    _editContent();
                  },
                  child: Container(
                    height: 35.h,
                    color: AppColors.darkBlue,
                    child: Center(
                      child: Text(
                        content,
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.pureWhite,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SpaceItem(),
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
                child: GestureDetector(
                  onTap: (){
                    _editWeight();
                  },
                  child: Container(
                    height: 35.h,
                    color: AppColors.yellow,
                    child: Center(
                      child: Text(
                        weight,
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.pureBlack,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SpaceItem(),
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
                child: GestureDetector(
                  onTap: (){
                    _editMarks();
                  },
                  child: Container(
                    height: 35.h,
                    color: AppColors.darkBlue,
                    child: Center(
                      child: Text(
                        marks,
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.pureWhite,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SpaceItem(),
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
                child: GestureDetector(
                  onTap: (){
                    _editSize();
                  },
                  child: Container(
                    height: 35.h,
                    color: AppColors.yellow,
                    child: Center(
                      child: Text(
                        size,
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          color: AppColors.pureBlack,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}