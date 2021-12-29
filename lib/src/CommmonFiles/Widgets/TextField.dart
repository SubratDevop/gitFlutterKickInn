import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget getTextFormField(
    {required String hintText,
    required TextInputType keyboardType,
    required String prefixIcon,
    required bool obsecureText}) {
  return Container(
    height: 60.h,
    decoration:  BoxDecoration(
      color: Color.fromARGB(255, 53, 59, 46),
      borderRadius: BorderRadius.circular(5.w),
         border: Border.all(
                    color: Colors.white60,
                    width: 0.2,
                  )
    ),
    child: Padding(
      padding: EdgeInsets.all(13.w),
      child: Row(
        children: [
          ColorFiltered(
              colorFilter: const ColorFilter.mode(Colors.red, BlendMode.color),
              child: Image.asset(
                prefixIcon,
                fit: BoxFit.fill,
              )),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
              child: Form(
                  child: TextFormField(
            keyboardType: keyboardType,
            obscureText: obsecureText,
            decoration: InputDecoration(
              hintText: hintText,
              
            ),
          )))
        ],
      ),
    ),
  );
}
