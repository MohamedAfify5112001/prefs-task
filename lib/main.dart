import 'package:flutter/material.dart';
import 'package:prefs_task/constants/constants.dart';
import 'package:prefs_task/home-view/home.dart';
import 'package:prefs_task/local-storage/prefs.dart';
import 'package:prefs_task/login-view/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefsHelper.initPrefs();

  String name = SharedPrefsHelper.getValue(key: $USERNAME);
  String email = SharedPrefsHelper.getValue(key: $EMAIL);
  Widget? widget;
  if (name.isNotEmpty && email.isNotEmpty) {
    widget = const HomeScreen();
  } else {
    widget = const LoginScreen();
  }
  runApp(MyApp(
    widget: widget,
  ));
}

class MyApp extends StatelessWidget {
  final Widget widget;

  const MyApp({Key? key, required this.widget}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: widget,
    );
  }
}
