import 'package:admin_dashboard/core/utils/styles.dart';
import 'package:admin_dashboard/features/dashboard/data/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.userModel,
  });

  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userModel.imagePath),
          title: Text(
            userModel.name,
            style: Styles.textStyle16W600,
          ),
          subtitle: Text(
            userModel.email,
            style: Styles.textStyle12W400,
          ),
        ),
      ),
    );
  }
}
