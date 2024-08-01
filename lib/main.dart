import 'package:chat_app_ai/screens/login_screen/login_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main()  {
  runApp(const MyRootWidget());
}
class MyRootWidget extends StatelessWidget {
  const MyRootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dispute Resolver AI',
       builder: (context, child) => ResponsiveBreakpoints.builder(
      child: child!,
      breakpoints: [
        const Breakpoint(start: 0, end: 550, name: MOBILE),
        const Breakpoint(start: 551, end: 1000, name: TABLET),
        const Breakpoint(start: 1001, end: 1920, name: DESKTOP),
        const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
      ],
    ),
      home: Login_screenPage(),
    );
  }
}

