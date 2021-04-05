import 'package:ecommerce_app/core/view_model/profile_view_model.dart';
import 'package:ecommerce_app/view/auth/login_view.dart';
import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileViewModel>(
      init: ProfileViewModel(),
      builder: (controller) {
        return Scaffold(
            body: Container(
          padding: EdgeInsets.only(top: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/aziz.jpg'),

                            //NetworkImage(controller.userModel.pic),
                            // controller.userModel == null
                            //     ?
                            //     : controller.userModel.pic == 'default'
                            //         ? AssetImage('assets/images/aziz.jpg')
                            //         :
                            // ),
                          ),
                        ),
                      ),
                      // GestureDetector(
                      //     onTap: () {
                      //       controller.signOut();
                      //       Get.offAll(LoginView());
                      //     },
                      //     child: Container(
                      //       child: Text('signout'),
                      //     )),
                      Column(
                        children: [
                          CustomText(
                            text: controller.userModel.name,
                            color: Colors.black,
                            fontSize: 24,
                          ),
                          CustomText(
                            text: controller.userModel.name,
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
      },
    );
  }
}
