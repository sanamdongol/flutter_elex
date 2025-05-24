import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ncit_flutter_project/forgot_password.dart';
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
              ElevatedButton(
                onPressed: () {},
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

              //https://github.com/sanamdongol/flutter_elex
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
}
