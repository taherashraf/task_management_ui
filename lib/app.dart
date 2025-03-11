import 'package:flutter/material.dart';
import 'package:task_management_ui/ui/screens/splash_screen.dart';

class TaskManagerApp extends StatefulWidget {
  const TaskManagerApp({super.key});

  @override
  State<TaskManagerApp> createState() => _TaskManagerAppState();
}

class _TaskManagerAppState extends State<TaskManagerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.black54,
          ),
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          border: _getZeroBorder(),
          enabledBorder: _getZeroBorder(),
          errorBorder: _getZeroBorder(),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              fixedSize: Size.fromWidth(double.maxFinite),
              foregroundColor: Colors.white,
              backgroundColor: Colors.green,
              iconColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )
          ),
        ),
        textTheme: TextTheme(
          titleMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
      ),
      home: const SplashScreen(),
    );
  }

  OutlineInputBorder _getZeroBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
    );
  }

}
