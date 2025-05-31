import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  String name;

  ForgotPasswordPage(this.name, {super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

//https://github.com/sanamdongol/flutter_elex
class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "This field can't be empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),

                // TextFormField(
                //   validator: (value) {
                //     if (value == null || value.isEmpty) {
                //       return "Email can't be null";
                //     }
                //     return null;
                //   },
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(),
                //   ),
                // ),
                Spacer(),
                //SizedBox(height: 70.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      /*ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Processing Data'),
                        ),
                      );*/

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Email sent"),
                          action:
                              SnackBarAction(label: "Undo", onPressed: () {}),
                        ),
                      );

                      /* Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotMailPage(),
                        ),
                      );*/
                    }

                    /*  Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotMailPage(),
                        ));*/
                  },
                  child: Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
