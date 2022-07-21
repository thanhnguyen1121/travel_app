import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static const routeName = 'ProfilePage';

  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  static const TAG = 'ProfilePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        alignment: Alignment.center,
        child: const Text("Profile"),
      ),
    ));
  }
}
