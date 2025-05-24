import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  String name;

  ForgotPasswordPage(this.name, {super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                  text: "Hello"+widget.name,
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Hello',
                      style: TextStyle(color: Colors.green),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
