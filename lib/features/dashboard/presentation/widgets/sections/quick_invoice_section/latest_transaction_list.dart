import 'package:admin_dashboard/core/utils/app_images.dart';
import 'package:admin_dashboard/features/dashboard/data/models/user_model.dart';
import 'package:admin_dashboard/features/dashboard/presentation/widgets/sections/drawer_section/user_info.dart';
import 'package:flutter/material.dart';

class LatestTransactionList extends StatelessWidget {
  const LatestTransactionList({super.key});

  static List<UserModel> users = [
    UserModel(
      imagePath: AppImages.imagesSmileFrame,
      name: 'Ahmed Majed',
      email: 'ahmedmajed@gmail.com',
    ),
    UserModel(
      imagePath: AppImages.imagesHappyFrame,
      name: 'Kareem Khaled',
      email: 'kareemkhaled@gmail.com',
    ),
    UserModel(
      imagePath: AppImages.imagesSmileFrame,
      name: 'Ahmed Shoman',
      email: 'ahmedshoman@gmail.com',
    ),
    UserModel(
      imagePath: AppImages.imagesHappyFrame,
      name: 'Mohamed Mandooh',
      email: 'mohamedmandooh@gmail.com',
    ),
    UserModel(
      imagePath: AppImages.imagesSmileFrame,
      name: 'Mohamed Majed',
      email: 'mohamedmajed@gmail.com',
    ),
    UserModel(
      imagePath: AppImages.imagesHappyFrame,
      name: 'Mohamed Fouad',
      email: 'mohamedfouad@gmail.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
          children: users
              .map((e) => IntrinsicWidth(child: UserInfo(userModel: e)))
              .toList()),
    );
  }
}
