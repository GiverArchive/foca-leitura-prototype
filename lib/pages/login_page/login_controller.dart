import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:leiturabacanalegal/shared/auth/auth_controller.dart';
import 'package:leiturabacanalegal/shared/models/user_model.dart';

class LoginController {
  final authController = AuthController();

  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: ["email"],
    );

    try {
      final response = await _googleSignIn.signIn();
      authController.setUser(
        context,
        UserModel(
          name: response!.displayName!,
          photoUrl: response.photoUrl,
        ),
      );
    } catch (error) {
      print(error);
      authController.setUser(context, null);
    }
  }
}