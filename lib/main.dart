import 'package:flutter/material.dart';
import 'package:todo_app/core/app_routes.dart';
import 'package:todo_app/data/view/screen/addtask_screen.dart';
import 'package:todo_app/data/view/screen/home_screen.dart';
import 'package:todo_app/data/view/screen/profile_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.profile,
      routes: {
        AppRoutes.profile:(context) => ProfileScreen(),
        AppRoutes.addTask:(context) => AddtaskScreen(),
        AppRoutes.home:(context) => HomeScreen(),
      },
     
     

    );
  }
}