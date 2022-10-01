import 'package:flutter/material.dart';
import 'package:hello_flutter/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool validate = false;
  final _formKey = GlobalKey<FormState>();

  submit(BuildContext buildContext) {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, Routes.homeRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text("Welcome $name",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter Username", labelText: "Username"),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        onChanged: (value) {
                          if (name == "Shivam" && value == "1234") {
                            validate = true;
                          }
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                          style:
                              TextButton.styleFrom(minimumSize: Size(150, 40)),
                          onPressed: () {
                            if (validate) {
                              validate = false;
                              // Navigator.pushNamed(context, Routes.homeRoute);
                              submit(context);
                            }
                          },
                          child: Text("Login"))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
