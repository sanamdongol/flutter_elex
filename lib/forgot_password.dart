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
                "Reset Password",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  "Enter the email addresss we will send you the forgot password link so that you can change your password"),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              Spacer(),
              //SizedBox(height: 70.0),
              ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
