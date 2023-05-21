import 'package:flutter/material.dart';
import 'package:will_bank/component/box_card.dart';
import 'package:will_bank/component/content_division.dart';
import 'package:will_bank/component/sections/account_actions.dart';
import 'package:will_bank/component/sections/recent_activity.dart';
import 'package:will_bank/themes/theme_colors.dart';
import '../component/color_dot.dart';
import '../component/sections/account_points.dart';
import '../component/sections/header.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            Header(),
            RecentActivity(),
            AccountActions(),
            AccountPoints(),
          ],
        ),
      ),
    );
  }
}
