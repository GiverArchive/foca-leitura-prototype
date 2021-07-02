import 'package:flutter/material.dart';
import 'package:leiturabacanalegal/shared/theme/app_colors.dart';
import 'package:leiturabacanalegal/shared/theme/app_images.dart';
import 'package:leiturabacanalegal/shared/theme/text_styles.dart';
import 'package:leiturabacanalegal/shared/widgets/google_login_button.dart';

import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              color: AppColors.primary,
              width: size.width,
              height: size.height * 0.36,
            ),
            Positioned(
              top: size.height * 0.08,
              left: 0,
              right: 0,
              child: Image.asset(
                AppImages.logo,
                width: 350,
                height: 400,
              ),
            ),
            Positioned(
              bottom: size.height * 0.15,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 70,
                      right: 70,
                      top: 30,
                    ),
                    child: Text(
                      "Organize facilmente sua leitura",
                      textAlign: TextAlign.center,
                      style: TextStyles.titleHome,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 40,
                      left: 40,
                      top: 40,
                    ),
                    child: GoogleLoginButton(
                      onTap: () {
                        controller.googleSignIn(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
