import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g58_app_home_find/app/core/theme/app_theme.dart';
import 'package:g58_app_home_find/app/ui/global_widgets/btn_primary.dart';
import 'package:g58_app_home_find/app/ui/global_widgets/input_text.dart';
import 'package:g58_app_home_find/app/ui/screens/signup/signup_controller.dart';
import 'package:get/get.dart';

class FormSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      builder: (_) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi!",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: AppTheme.blue, fontWeight: FontWeight.w900),
          ),
          Text(
            "Create a new account",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(color: Colors.black38, fontWeight: FontWeight.w400),
          ),
          //SizedBox(height: 25.0),
          InputText(
            iconPrefix: Icons.person_outline,
            iconColor: AppTheme.light,
            border: InputBorder.none,
            keyboardType: TextInputType.text,
            textCapitalization: TextCapitalization.words,
            validator: null,
            labelText: "Name",
            filled: false,
            enabledBorderColor: Colors.black26,
            focusedBorderColor: AppTheme.cyan,
            fontSize: 14.0,
            fontColor: Colors.black45,
            onChanged: _.onChangeName,
          ),
          SizedBox(height: 15.h),
          InputText(
            controller: _.textLastNameController,
            iconPrefix: Icons.bubble_chart_outlined,
            iconColor: AppTheme.light,
            border: InputBorder.none,
            keyboardType: TextInputType.text,
            textCapitalization: TextCapitalization.words,
            validator: null,
            labelText: "Last Name",
            filled: false,
            enabledBorderColor: Colors.black26,
            focusedBorderColor: AppTheme.cyan,
            fontSize: 14.0,
            fontColor: Colors.black45,
            //onChanged: _.onChangeLastName,
          ),
          SizedBox(height: 15.h),
          InputText(
            iconPrefix: Icons.directions_outlined,
            iconColor: AppTheme.light,
            border: InputBorder.none,
            keyboardType: TextInputType.text,
            textCapitalization: TextCapitalization.sentences,
            validator: null,
            labelText: "Adress",
            filled: false,
            enabledBorderColor: Colors.black26,
            focusedBorderColor: AppTheme.cyan,
            fontSize: 14.0,
            fontColor: Colors.black45,
            onChanged: _.onChangeAddress,
          ),
          SizedBox(height: 15.h),
          InputText(
            iconPrefix: Icons.email_outlined,
            iconColor: AppTheme.light,
            border: InputBorder.none,
            keyboardType: TextInputType.emailAddress,
            validator: null,
            labelText: "Email",
            //maxLength: 3,
            filled: false,
            enabledBorderColor: Colors.black26,
            focusedBorderColor: AppTheme.cyan,
            fontSize: 14.0,
            fontColor: Colors.black45,
            onChanged: _.onChangeEmail,
          ),
          SizedBox(height: 15.h),
          InputText(
            iconPrefix: Icons.lock_outline,
            iconColor: AppTheme.light,
            border: InputBorder.none,
            keyboardType: TextInputType.text,
            obscureText: true,
            maxLines: 1,
            validator: null,
            labelText: "Password",
            filled: false,
            enabledBorderColor: Colors.black26,
            focusedBorderColor: AppTheme.cyan,
            fontSize: 14.0,
            fontColor: Colors.black45,
            onChanged: _.onChangePassword,
          ),
          SizedBox(height: 30.h),
          BtnPrimary(
            text: "Sign Up",
            onPressed: _.saveUser,
          ),
          SizedBox(height: 15.h),
          Center(
            child: Text(
              "Already have an account",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle2?.copyWith(
                  color: Colors.black38, fontWeight: FontWeight.w400),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: _.goToLogin,
              child: Text(
                "Sign In",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle2?.copyWith(
                    color: AppTheme.blueDark, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
