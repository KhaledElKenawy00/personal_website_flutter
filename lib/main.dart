import 'package:flutter/material.dart';
import 'package:personal_website_flutter/personal_website_app.dart';

import 'core/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    PersonalWebsiteApp(
      appRouter: AppRouter(),
    ),
  );
}
