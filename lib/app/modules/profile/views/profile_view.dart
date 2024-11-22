import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/constants.dart';
import '../../../components/custom_button.dart';
import '../../../components/no_data.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: context.theme.textTheme.displaySmall),
        centerTitle: true,
      ),
    body: SingleChildScrollView(
      child:Container(
        padding:EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            width: 120,
              height: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: const Image(image: AssetImage("assets/images/avatar.png"),),
              ),
          ),
          SizedBox(height: 10),
          Text('Deepika', style: context.theme.textTheme.displaySmall),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 70.w,vertical: 10.h),
            child: CustomButton(
              text: 'Edit Profile',
              onPressed: () => {},
              fontSize: 16.sp,
              radius: 50.r,
              verticalPadding: 16.h,
              hasShadow: false,
            ).animate().fade().slideY(
              duration: 300.ms,
              begin: 1,
              curve: Curves.easeInSine,
            ),
          ),
        SizedBox(height: 30),
        const Divider(),
     SizedBox(height: 10),
    ListTile(
    leading: Container(
    width: 30,
    height: 30,
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(100),
  //color:Colors.black
  ),
  child: const Icon(Icons.mail,color: Colors.grey),
  ),
  title: Text("deepika1@gmail.com", style: context.theme.textTheme.displaySmall),
  trailing: Container(
  width: 30,
  height: 30,
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(100),
  ),
  ),
    ),
          ListTile(
            leading: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                //color:Colors.black
              ),
              child: const Icon(Icons.phone,color: Colors.grey),
            ),
            title: Text("+91 8056289534", style: context.theme.textTheme.displaySmall),
            trailing: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          ListTile(
            leading: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                //color:Colors.black
              ),
              child: const Icon(Icons.mail,color: Colors.grey),
            ),
            title: Text("MyOrders", style: context.theme.textTheme.displaySmall),
            trailing: Container(
              width: 30,
              height: 30,
              child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          ListTile(
            leading: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                //color:Colors.black
              ),
              child: const Icon(Icons.settings,color: Colors.grey),
            ),
            title: Text("Settings", style: context.theme.textTheme.displaySmall),
            trailing: Container(
              width: 30,
              height: 30,
              child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          )
        ],
      ),
    )
    )
    );
  }
}