import 'package:flutter/material.dart';
import 'package:united_states/ui/screen/home_screen/widgets/app_bar/appBar_widgets/circle_avatar_icon.dart';
import 'package:united_states/ui/screen/home_screen/widgets/app_bar/appBar_widgets/title_appBar.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      title: const TitleAppBar(),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Row(
            children: [
              CircleAvatarIcon(icon: Icons.insert_chart_outlined),
              CircleAvatarIcon(icon: Icons.sms_outlined),
              CircleAvatarIcon(icon: Icons.notifications_none),
            ],
          ),
        ),
      ],
    );
  }
}
