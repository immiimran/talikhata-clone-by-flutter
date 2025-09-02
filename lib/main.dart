import 'app/core/config/themes/app_theme.dart';
import 'exports.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      // themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
