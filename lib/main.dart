import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'app/themes/theme_data.dart';
import 'control_binding.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    GetMaterialApp(
      title: "Dashtoon Machine Coding",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

class DashtoonMachineCoding extends StatelessWidget {
  const DashtoonMachineCoding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: customTheme,
        title: "Dashtoon Machine Coding",
        routerDelegate: GetDelegate(
          backButtonPopMode: PopMode.Page,
          preventDuplicateHandlingMode:
              PreventDuplicateHandlingMode.PopUntilOriginalRoute,
        ),
        popGesture: Get.isPopGestureEnable,
        //initialRoute: AppPages.HOME,
        getPages: AppPages.routes,
        initialBinding: ControlBinding()
        );
  }
}
