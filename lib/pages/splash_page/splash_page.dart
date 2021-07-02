import 'package:flutter/material.dart';
import 'package:leiturabacanalegal/shared/theme/app_images.dart';
import 'package:leiturabacanalegal/shared/auth/auth_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    new AuthController().checkLogin(context);
    
    return Container(
      decoration: BoxDecoration(
        color: Colors.white70,
      ),
      child: Center(
        child: Image.asset(AppImages.splash),
      ),
    );
  }
}
