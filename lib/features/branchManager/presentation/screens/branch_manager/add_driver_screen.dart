
import 'package:aloudeh_company/core/constants/colors_constants.dart';
import 'package:aloudeh_company/features/branchManager/presentation/widget/space_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/add_driver_text.dart';
import '../../widget/divider_item.dart';

class AddDriverScreen extends StatefulWidget{
  @override
  State<AddDriverScreen> createState() => _AddDriverScreenState();
}

class _AddDriverScreenState extends State<AddDriverScreen> {

  var driver_name = TextEditingController();
  var driver_id = TextEditingController();
  var driver_mobile = TextEditingController();
  var driver_email = TextEditingController();
  var driver_certificate = TextEditingController();

  Widget EnterDriverInformation() => Padding(
    padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
    child: Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.number,
          controller: driver_id,
          decoration: InputDecoration(
            isDense: true,
            //contentPadding: const EdgeInsets.all(3.0),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2.0,
                color: AppColors.darkBlue,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: 2.0,
                color: AppColors.darkBlue,
              ),
            ),
            labelText: 'ID',
            labelStyle: TextStyle(
              color: AppColors.yellow,
              //fontSize: 20.0,
            ),
            hintText: 'enter employee id',
            hintStyle: TextStyle(
              //fontStyle: FontStyle.italic,
              color: AppColors.yellow,
            ),
            prefixIcon: Icon(
              Icons.numbers,
              color: AppColors.yellow,
              // textDirection: TextDirection.rtl,
            ),
          ),
        ),
        SpaceItem(),
        TextFormField(
          keyboardType: TextInputType.text,
          controller: driver_name,
          decoration: InputDecoration(
            isDense: true,
            //contentPadding: const EdgeInsets.all(3.0),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2.0,
                color: AppColors.darkBlue,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: 2.0,
                color: AppColors.darkBlue,
              ),
            ),
            labelText: 'Name',
            labelStyle: TextStyle(
              color: AppColors.yellow,
              //fontSize: 20.0,
            ),
            hintText: 'enter employee name',
            hintStyle: TextStyle(
              //fontStyle: FontStyle.italic,
              color: AppColors.yellow,
            ),
            prefixIcon: Icon(
              Icons.person_3_outlined,
              color: AppColors.yellow,
            ),
          ),
        ),
        SpaceItem(),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          controller: driver_email,
          decoration: InputDecoration(
            isDense: true,
            //contentPadding: const EdgeInsets.all(3.0),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2.0,
                color: AppColors.darkBlue,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: 2.0,
                color: AppColors.darkBlue,
              ),
            ),
            labelText: 'Email',
            labelStyle: TextStyle(
              color: AppColors.yellow,
              //fontSize: 20.0,
            ),
            hintText: 'enter employee email',
            hintStyle: TextStyle(
              //fontStyle: FontStyle.italic,
              color: AppColors.yellow,
            ),
            prefixIcon: Icon(
              Icons.email_outlined,
              color: AppColors.yellow,
            ),
          ),
        ),
        SpaceItem(),
        TextFormField(
          keyboardType: TextInputType.number,
          controller: driver_mobile,
          decoration: InputDecoration(
            isDense: true,
            //contentPadding: const EdgeInsets.all(3.0),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2.0,
                color: AppColors.darkBlue,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: 2.0,
                color: AppColors.darkBlue,
              ),
            ),
            labelText: 'Phone',
            labelStyle: TextStyle(
              color: AppColors.yellow,
              //fontSize: 20.0,
            ),
            hintText: 'enter employee phone',
            hintStyle: TextStyle(
              //fontStyle: FontStyle.italic,
              color: AppColors.yellow,
            ),
            prefixIcon: Icon(
              Icons.phone_outlined,
              color: AppColors.yellow,
              // textDirection: TextDirection.rtl,
            ),
          ),
        ),
        SpaceItem(),
        TextFormField(
          keyboardType: TextInputType.text,
          controller: driver_certificate,
          decoration: InputDecoration(
            isDense: true,
            //contentPadding: const EdgeInsets.all(3.0),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2.0,
                color: AppColors.darkBlue,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: 2.0,
                color: AppColors.darkBlue,
              ),
            ),
            labelText: 'Certificate',
            labelStyle: TextStyle(
              color: AppColors.yellow,
              //fontSize: 20.0,
            ),
            hintText: 'enter Certificate Type',
            hintStyle: TextStyle(
              //fontStyle: FontStyle.italic,
              color: AppColors.yellow,
            ),
            prefixIcon: Icon(
              Icons.card_membership_outlined,
              color: AppColors.yellow,
              // textDirection: TextDirection.rtl,
            ),
          ),
        ),
      ],
    ),
  );

  Widget Photo1() => GestureDetector(
    onTap: (){
      _showOption(context);
    },
    child: Container(
      height: 200.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.r),
        border: Border.all(color: AppColors.pureBlack),
      ),
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      // child: Image(
      //   image: AssetImage(
      //     'assets/images/employee.png',
      //   ),
      //   //fit: BoxFit.fill,
      // ),
      child: Icon(
        Icons.add_a_photo_outlined,
        color: AppColors.mediumBlue,
        size: 90,
      ),
    ),
  );

  Widget Photo2() => GestureDetector(
    onTap: (){
      _showOption(context);
    },
    child: Container(
      height: 200.h, // هون اذا الصورة ماطلعت كلا بسبب الهايت فيكي تشيلي ال 200 المهم تطلع الصورة كاملة
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.r),
        border: Border.all(color: AppColors.pureBlack),
      ),
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      // child: Image(
      //   image: AssetImage(
      //     'assets/images/employee.png',
      //   ),
      //   //fit: BoxFit.fill,
      // ),
      child: Icon(
        Icons.add_a_photo_outlined,
        color: AppColors.mediumBlue,
        size: 90,
      ),
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: AddDriverText(),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SpaceItem(),
            EnterDriverInformation(),
            SpaceItem(),
            SpaceItem(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: AppColors.darkBlue,
                ),
                Icon(
                  Icons.star_half,
                  color: AppColors.darkBlue,
                ),
                Icon(
                  Icons.star,
                  color: AppColors.darkBlue,
                ),
                Icon(
                  Icons.star_half,
                  color: AppColors.darkBlue,
                ),
                Icon(
                  Icons.star,
                  color: AppColors.darkBlue,
                ),
              ],
            ),
            SpaceItem(),
            Text(
              'Please Enter ID Photo.',
              style: TextStyle(
                fontFamily: 'Bauhaus',
                fontSize: 18.0.sp,
                color: AppColors.yellow,
              ),
            ),
            SpaceItem(),
            Photo1(),
            SpaceItem(),
            Photo2(),
            SpaceItem(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text(
          'Add',
          style: TextStyle(
            fontFamily: 'Bauhaus',
            fontWeight: FontWeight.bold,
            fontSize: 17.0.sp,
            color: AppColors.mediumBlue,
          ),
        ),
        backgroundColor: AppColors.darkBlue,
        shape: CircleBorder(),
      ),
    );
  }

  _showOption(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("make a choice",style: TextStyle(fontFamily: 'Bauhaus'),),
        content: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.image_outlined,
                  color: AppColors.yellow,
                ),
                title: Text(
                  'Gallery',
                ),
                // onTap: () => imageFromGallery(),
              ),
              ListTile(
                leading: Icon(
                  Icons.camera_alt_outlined,
                  color: AppColors.yellow,
                ),
                title: Text(
                  'Camera',
                ),
                //onTap: () => imageFromCamera(),
              ),
            ],
          ),
        ),
      ),
    );
  }

/* late PickedFile imageFile;
  final ImagePicker picker = ImagePicker();
  File? fileImage;*/

//// هون توابع ادخال الصورة
// void imageFromGallery() async {
//   var pickedFile = await picker.pickImage(source: ImageSource.gallery);
//   if (pickedFile != null) {
//     setState(() {
//       fileImage = File(pickedFile.path);
//       fileImage = File(pickedFile.path);
//     });
//     Navigator.pop(context);
//   }
// }
//
// void imageFromCamera() async {
//   var pickedFile = await picker.pickImage(source: ImageSource.camera);
//   if (pickedFile != null) {
//     setState(() {
//       fileImage = File(pickedFile.path);
//       fileImage = File(pickedFile.path);
//     });
//     Navigator.pop(context);
//   }
// }

}