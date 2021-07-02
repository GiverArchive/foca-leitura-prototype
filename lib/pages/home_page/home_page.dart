import 'package:flutter/material.dart';
import 'package:leiturabacanalegal/pages/home_page/home_controller.dart';
import 'package:leiturabacanalegal/shared/auth/auth_controller.dart';
import 'package:leiturabacanalegal/shared/theme/app_colors.dart';
import 'package:leiturabacanalegal/shared/theme/app_images.dart';
import 'package:leiturabacanalegal/shared/theme/text_styles.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController();
  final authController = AuthController();

  final pages = [
    Container(color: Colors.red),
    Container(color: Colors.yellow),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(152),
        child: Container(
          height: 152,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(
                TextSpan(
                  text: "Olá, ",
                  style: TextStyles.titleRegular,
                  children: [
                    TextSpan(
                      text: authController.user.name,
                      style: TextStyles.titleBoldBackground,
                    ),
                  ],
                ),
              ),
              subtitle: Text(
                "Mantenha sua leitura em dia",
                style: TextStyles.captionShape,
              ),
              trailing: ClipRRect(
                child: Image.network(
                  authController.user.photoUrl ?? AppImages.defaultAvatar,
                  width: 48,
                  height: 48,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
      body: pages[homeController.currentPage],
      bottomNavigationBar: Container(
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                setState(() => homeController.setPage(0));
              },
              icon: Icon(
                Icons.home,
                color: AppColors.primary,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(
                  Icons.add_box_outlined,
                  color: AppColors.background,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() => homeController.setPage(1));
              },
              icon: Icon(
                Icons.description_outlined,
                color: AppColors.body,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
