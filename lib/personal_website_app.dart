import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

class PersonalWebsiteApp extends StatelessWidget {
  final AppRouter appRouter;
  const PersonalWebsiteApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 1024),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Personal Website',
        theme: _buildTheme(Brightness.dark),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.mainPage,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }

  ThemeData _buildTheme(brightness) {
    var baseTheme = ThemeData(brightness: brightness);
    // TODO : check this later
    return baseTheme.copyWith(
      textTheme: GoogleFonts.latoTextTheme(baseTheme.textTheme),
    );
  }
}
