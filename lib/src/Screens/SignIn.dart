import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_fltr_app/src/CommmonFiles/Widgets/TextField.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    bool isChecked = false;

    bool valuefirst = false;
    bool valuesecond = false;

    return Scaffold(
      backgroundColor:
          // Colors.white,
          Colors.white60,
      body: SafeArea(
          child: SingleChildScrollView(
        // ignore: avoid_unnecessary_containers
        child: Container(
          height: screenHeight,
          width: screenWidth,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  color: Colors.black,
                  height: 150.h,
                  child: Stack(
                    children: [
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100.w),
                          child: Image.asset(
                            'assets/hydra.jpg',
                            width: 200.w,
                            height: 200.h,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ColorFiltered(
                          colorFilter: const ColorFilter.mode(
                              Colors.red, BlendMode.color),
                          child: Image.asset(
                            "assets/closeApp.png",
                            height: 20.h,
                            width: 20.w,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("Sign In",
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold))),
                const SizedBox(
                  height: 20,
                ),
                getTextFormField(
                    hintText: "Email Address",
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: "assets/mailBox.jpg",
                    obsecureText: false),
                const SizedBox(
                  height: 15,
                ),
                getTextFormField(
                    hintText: "Password",
                    prefixIcon: "assets/lock.png",
                    keyboardType: TextInputType.emailAddress,
                    obsecureText: true),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Forgor Password?",
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        fontSize: 13.sp,
                      ))),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(children: [
                  Checkbox(
                      checkColor: Colors.greenAccent,
                      activeColor: Colors.red,
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text("By logging in, I agree with Kickin'inn's",
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                          ))),
                      const SizedBox(
                        height: 15,
                      ),
                      Text("Terms & Conditions & Privacy Policy",
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            fontSize: 15.sp,
                          ))),
                    ],
                  )
                ]),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                    minWidth: double.infinity,
                    height: 40.h,
                    color: Color.fromARGB(255,255,22,31),
                    shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.w))),
                    child: Text("Sign In",
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold))),
                    onPressed: () {})
              ],
            ),
          ),
        ),
      )),
    );
  }
}
