import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  static const routeName = 'MessagePage';

  const MessagePage({Key? key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  static const TAG = 'MessagePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        alignment: Alignment.center,
        child: const Text("Messages"),
      ),
    ));
  }
}
