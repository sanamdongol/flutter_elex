import 'package:flutter/material.dart';
import 'package:ncit_flutter_project/forgot/reset_password.dart';

class ForgotMailPage extends StatefulWidget {
  const ForgotMailPage({super.key});

  @override
  State<ForgotMailPage> createState() => _ForgotMailPageState();
}

class _ForgotMailPageState extends State<ForgotMailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0, bottom: 10.0),
                  child: Text(
                    'Nepal Corp',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
              Text('Get paid even more'),
              SizedBox(height: 10.0),
              Text(
                "Check Mail",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  "Enter the email address we will send you the forgot password link so that you can change your password"),

              Spacer(),
              //SizedBox(height: 70.0),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResetPasswordPage(),
                      ));
                },
                child: Text("Haven't received email?"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
