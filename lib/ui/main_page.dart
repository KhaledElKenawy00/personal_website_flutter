import 'package:flutter/material.dart';
import 'package:personal_website_flutter/core/theming/colors.dart';
import 'package:personal_website_flutter/ui/web/desktop_layout.dart';
import 'package:personal_website_flutter/ui/mobile/mobile_layout.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.steelGray,
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 1000) {
              return const MobileLayout();
            } else {
              return const DesktopLayout();
            }
          },
        ),
      ),
    );
  }
}
