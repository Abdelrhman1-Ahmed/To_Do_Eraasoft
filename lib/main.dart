import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/core/app_routes.dart';
import 'package:todo_app/data/model/user_model.dart';
import 'package:todo_app/data/view/screen/addtask_screen.dart';
import 'package:todo_app/data/view/screen/home_screen.dart';
import 'package:todo_app/data/view/screen/profile_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserModelAdapter());
  await Hive.openBox<UserModel>('User');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.profile,
      routes: {
        AppRoutes.profile:(context) => ProfileScreen(),
        AppRoutes.addTask:(context) => AddtaskScreen(),
        AppRoutes.home:(context) => HomeScreen(),
      },
     
     

    );
  }
}