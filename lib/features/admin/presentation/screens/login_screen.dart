import 'package:aloudeh_company/features/admin/data/params/log_in_admin_params.dart';
import 'package:aloudeh_company/features/admin/presentation/controllers/log_in_cubit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../core/constants/colors_constants.dart';
import '../../../../core/error/network_exceptions.dart';
import 'admin_main_screen.dart';

class LogInAdminScreen extends StatelessWidget {
  var user_name = TextEditingController();
  var password = TextEditingController();
  bool passwordVisible = true;
  var formKey = GlobalKey<FormState>();
  final String guard;

  LogInAdminScreen({super.key, required this.guard});


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: screenHeight,
                  decoration: BoxDecoration(
                    color: AppColors.pureWhite,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(300.r),
                      bottomLeft: Radius.circular(300.r),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image(
                            image: const AssetImage('assets/images/Logo.png'),
                            width: 150.w,
                            height: 150.h,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight / 30,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'LO',
                                style: TextStyle(
                                  fontSize: 30.sp,
                                  fontFamily: 'Bauhaus',
                                  color: AppColors.darkBlue,
                                ),
                              ),
                              TextSpan(
                                text: 'G I',
                                style: TextStyle(
                                  fontSize: 30.sp,
                                  fontFamily: 'Bauhaus',
                                  color: AppColors.yellow,
                                ),
                              ),
                              TextSpan(
                                text: 'N',
                                style: TextStyle(
                                  fontSize: 30.sp,
                                  fontFamily: 'Bauhaus',
                                  color: AppColors.darkBlue,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Log in to your account',
                          style: TextStyle(
                            color: AppColors.pureBlack,
                            fontFamily: 'bahnschrift',
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight / 15,
                        ),
                        TextFormField(
                          controller: user_name,
                          cursorColor: AppColors.darkBlue,
                          decoration: InputDecoration(
                            isDense: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.yellow,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.r),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.yellow,
                              ),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40.r),
                                bottomLeft: Radius.circular(40.r),
                              ),
                            ),
                            labelText: 'User Name',
                            labelStyle: const TextStyle(
                              color: AppColors.darkBlue,
                              fontFamily: 'Bahnschrift',
                            ),
                            hintText: 'enter your name',
                            hintStyle: const TextStyle(
                              color: AppColors.yellow,
                              fontFamily: 'Bahnschrift',
                            ),
                            prefixIcon: const Icon(
                              Icons.person_2_outlined,
                            ),
                          ),
                          onChanged: (value) {
                            print(value);
                          },
                          onFieldSubmitted: (value) {
                            print(value);
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'this field must not be empty';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: screenHeight / 30,
                        ),
                        TextFormField(
                          controller: password,
                          obscureText: passwordVisible,
                          decoration: InputDecoration(
                            isDense: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.yellow,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.r),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.yellow,
                              ),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40.r),
                                bottomLeft: Radius.circular(40.r),
                              ),
                            ),
                            labelText: 'Password',
                            labelStyle: const TextStyle(
                              color: AppColors.darkBlue,
                              fontFamily: 'Bahnschrift',
                            ),
                            hintText: 'enter password',
                            hintStyle: const TextStyle(
                              color: AppColors.yellow,
                              fontFamily: 'Bahnschrift',
                            ),
                            prefixIcon: const Icon(
                              Icons.lock_outline,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                // Manually setState using StatefulWidget for this part or manage state in your own way
                                passwordVisible = !passwordVisible;
                              },
                              icon: Icon(
                                passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppColors.darkBlue,
                              ),
                            ),
                          ),
                          onChanged: (value) {
                            print(value);
                          },
                          onFieldSubmitted: (value) {
                            print(value);
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'this field must not be empty';
                            }
                            return null;
                          },
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'forget password ?',
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.darkBlue,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight / 20,
                        ),
                        BlocConsumer<LogInCubit, LogInState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                              orElse: () {
                                return Align(
                                  alignment: Alignment.centerRight,
                                  child: FloatingActionButton.extended(
                                    heroTag: 'loginButton', // Unique hero tag
                                    onPressed: () async {
                                      if (formKey.currentState!.validate()) {
                                        print('sddff');
                                        String? deviceToken = await FirebaseMessaging.instance.getToken();
                                        print('this is de_token');
                                        print(deviceToken);
                                        context.read<LogInCubit>().emitLogInAdmin(
                                          logInAdminParams: LogInAdminParams(
                                            name: user_name.text,
                                            password: password.text,
                                            device_token: deviceToken!,
                                          ),
                                        );
                                      }
                                    },
                                    label: Text(
                                      'Log In',
                                      style: TextStyle(
                                        color: AppColors.mediumBlue,
                                        fontFamily: 'Bauhaus',
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                    icon: const Icon(
                                      Icons.login,
                                      color: AppColors.mediumBlue,
                                    ),
                                    backgroundColor: AppColors.darkBlue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(40.r),
                                        bottomLeft: Radius.circular(40.r),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              initial: () {
                                return Align(
                                  alignment: Alignment.centerRight,
                                  child: FloatingActionButton.extended(
                                    heroTag: 'loginButtonInitial', // Unique hero tag
                                    onPressed: () async {
                                      if (formKey.currentState!.validate()) {
                                        print('sddff');
                                        String? deviceToken = await FirebaseMessaging.instance.getToken();
                                       print(deviceToken);
                                        context.read<LogInCubit>().emitLogInAdmin(
                                          logInAdminParams: LogInAdminParams(
                                            name: user_name.text,
                                            password: password.text,
                                            device_token: deviceToken!,
                                          ),
                                        );
                                      }
                                    },
                                    label: Text(
                                      'Log In',
                                      style: TextStyle(
                                        color: AppColors.mediumBlue,
                                        fontFamily: 'Bauhaus',
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                    icon: const Icon(
                                      Icons.login,
                                      color: AppColors.mediumBlue,
                                    ),
                                    backgroundColor: AppColors.darkBlue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(40.r),
                                        bottomLeft: Radius.circular(40.r),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              loading: () {
                                return const Center(child: CircularProgressIndicator());
                              },
                            );
                          },
                          listener: (context, state) {
                            state.whenOrNull(
                              success: (data) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (_) => const AdminMainScreen()),
                                );
                              },
                              error: (networkExceptions) =>
                                  Fluttertoast.showToast(
                                    msg: NetworkExceptions.getErrorMessage(networkExceptions),
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: CupertinoColors.activeBlue,
                                    textColor: Colors.white,
                                    fontSize: 16.0,
                                  ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
