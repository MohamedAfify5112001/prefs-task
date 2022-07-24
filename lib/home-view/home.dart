import 'package:flutter/material.dart';
import 'package:prefs_task/local-storage/prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    $username = SharedPrefsHelper.getValue(key: $USERNAME);
    $email = SharedPrefsHelper.getValue(key: $EMAIL);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Content",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w900, fontSize: 28.0),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(children: [
                const TextSpan(
                    text: "Name: ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 28.0)),
                TextSpan(
                    text: $username,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 14.0)),
              ]),
            ),
            const SizedBox(
              height: 20.0,
            ),
            RichText(
              text: TextSpan(children: [
                const TextSpan(
                    text: "Email: ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 28.0)),
                TextSpan(
                    text: $email,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 14.0)),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
