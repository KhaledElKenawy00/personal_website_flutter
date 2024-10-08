import 'package:flutter/material.dart';
import 'package:personal_website_flutter/ui/widgets/desktop_layout.dart';
import 'package:personal_website_flutter/ui/widgets/mobile_layout.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              // Layout for mobile
              return const MobileLayout();
            } else {
              // Layout for larger screens (tablet or desktop)
              return const DesktopLayout();
            }
          },
        ),
      ),
    );
  }
}
