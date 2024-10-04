import 'package:flutter/material.dart';
import 'package:personal_website_flutter/ui/pages/main_page.dart';
import 'package:personal_website_flutter/core/routing/routes.dart';


class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.mainPage:
        return MaterialPageRoute(
          builder: (_) => const MainPage(),
        );
      default:
        return null;
    }
  }
}
