import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ncit_flutter_project/dashboard.dart';
import 'package:ncit_flutter_project/demo_container.dart';
import 'package:ncit_flutter_project/forgot/forgot_password.dart';
import 'package:ncit_flutter_project/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextButton(
                onPressed: () {},
                child: Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Skip'),
                    )),
              ),
              Row(
                children: [
                  Icon(Icons.home_max_sharp),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("LuxCars")
                ],
              ),
              SizedBox(height: 10.0),
              Text(
                'Welcome back',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text('Sign in to continue your journery'),
              SizedBox(height: 20.0),
              Text('Phone/Email'),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10.0),
              Text('Password'),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10.0),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPasswordPage("Jake"),
                      ),
                    );
                  },
                  child: Text("Forgot Password?"),
                ),
              ),
              SizedBox(height: 20.0),
              RichText(
                text: TextSpan(
                  text: "By continuing you agree to our ",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: "Terms and Conditions",
                      style: TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("object");
                          //navigate to another page
                          showTCBottomSheet();
                        },
                    ),
                    TextSpan(text: ' and '),
                    TextSpan(
                      text: "Privacy and Policy",
                      style: TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardPage(),),
                  );
                },
                child: Text('Sign in'),
              ),
              SizedBox(height: 10.0),
              Align(
                alignment: Alignment.center,
                child: Text('or'),
              ),
              SizedBox(width: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.wifi),
                  ),
                  SizedBox(width: 10.0),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.wifi),
                  ),
                  SizedBox(width: 10.0),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.wifi),
                  ),
                ],
              ),
              Spacer(),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(color: Colors.red),
                    children: [
                      TextSpan(
                        text: "Create account",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpPage(),
                              ),
                            );
                          },
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showTCBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                ),
              ),
              Text(
                "Our Terms and Conditions",
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
            ],
          ),
        );
      },
    );

    /*showModalBottomSheet<void>(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      clipBehavior: Clip.hardEdge,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 350,
          color: Colors.redAccent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text('Modal BottomSheet'),
                ElevatedButton(
                  child: const Text('Close BottomSheet'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        );
      },
    );*/
  }
}
