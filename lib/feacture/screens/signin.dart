import 'package:flutter/material.dart';
import 'package:flutter_application_1/feacture/screens/forgottenpassword/forgottenpassword.dart';
import 'package:flutter_application_1/feacture/screens/welcomescreen/home.dart';

import '../../utils/theme/theme.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Apptheme.lightheme,
        darkTheme: Apptheme.darktheme,
        themeMode: ThemeMode.light,
        home: Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          appBar: AppBar(
            title: Text(
              "Signin",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                        child: TextFormField(
                          controller: emailController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(), labelText: "Email"),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(), labelText: "Password"),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 16.0),
                            child: Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    // Navigate the user to the Home
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => const Homepage()));
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                        'Please fill input',
                                      )),
                                    );
                                  }
                                },
                                child: Text(
                                  'Signin',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 16.0),
                            child: Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    // Navigate the user to the Home page
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text('Please fill input')),
                                    );
                                  }
                                },
                                child: Text(
                                  'Signup',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () async {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => const ForgottenPassword()));
                            },
                            child: Text(
                              "forgotten password",
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ),
                          TextButton(
                            onPressed: () async {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => const ForgottenPassword()));
                            },
                            child: Text(
                              "signup with mobile number",
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          )
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
/*
import 'dart:developer';

import 'package:authentication/verify.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'backbutton.dart';

class SignWithPhone extends StatefulWidget {
  SignWithPhone({Key? key}) : super(key: key);

  @override
  State<SignWithPhone> createState() => _SignWithPhoneState();
}

class _SignWithPhoneState extends State<SignWithPhone> {
  TextEditingController Phonecontroller = TextEditingController();

  void sendOTP() async {
    String phone = "+91" + Phonecontroller.text.trim();
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phone,
        codeSent: (verificationId, resendToken) {
          Navigator.push(context, MaterialPageRoute(builder:(context)=> Verify(verificationId: verificationId)));
          
        },
        verificationCompleted: (credential) {},
        verificationFailed: (ex) {
          log(ex.code.toString());
        },
        codeAutoRetrievalTimeout: (verificationId) {},
        timeout: Duration(seconds: 30));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff251f34),
      appBar: AppBar(
        elevation: 0,
        leading: backButton(context),
        backgroundColor: const Color(0xff251f34),
      ),
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 8),
                child: Text(
                  'Sign In With Phone',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 25),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Phone',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 13),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: Phonecontroller,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: const Color(0xff3B324E),
                      filled: true,
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff14dae2), width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        sendOTP();
                      },
                      child: Text('Verify')))
            ]),
      ),
    );
  }
}
*/