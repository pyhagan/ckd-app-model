import 'package:demo/authentication.dart';
import 'package:demo/snack_bar.dart';

import '../ui_components/signupbutton.dart';
import '../ui_components/textfield.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import './login.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isLoading = false;


void signUpUser() async {
   String res = await AuthServices().signUpUser(
    username: usernameController.text,
    email: emailController.text,
     password: passwordController.text );


     if(res=="successful"){
setState(() {
  isLoading =true;
});
//navigate to the next screen

Navigator.of(context).pushReplacement(
  MaterialPageRoute(
    builder: (context)=>LoginPage()
    ),
    );

     }else{
      setState(() {
        isLoading=false;
      });

      showSnackBar(context, res);
     }

}
 
  @override
  void initState() {
    super.initState();
    // Initialize Firebase
    Firebase.initializeApp().then((value) {
      setState(() {});
    });
  }

  void saveUserDetails() async {
    if (_formKey.currentState!.validate()) {
      try {
        // Save user details to Firestore
        await FirebaseFirestore.instance.collection('users').add({
          'username': usernameController.text.trim(),
          'email': emailController.text.trim(),
          'password': passwordController.text.trim() // Consider encrypting this
        });
        // Show success message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('User registered successfully!'))
        );
        // Navigate to login page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      } catch (e) {
        // Show error message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error registering user: $e'))
        );
      }
    }
  }

  String? validateEmail(String value) {
    Pattern pattern =
        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';
    RegExp regex = RegExp(pattern as String);
    if (!regex.hasMatch(value)) {
      return 'Enter a valid email';
    } else {
      return null;
    }
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 245, 245),
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 150),
                Text(
                  'REGISTER',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 23,
                  ),
                ),
                const SizedBox(height: 25),

                // Username textfield
                MyTextfield(
                  controller: usernameController,
                  hintText: 'Username',
                  ObscureText: false,
                   maxLength: 10,
                  hintStyle: TextStyle(color: Colors.black),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your username';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 15),

                // Email textfield
                MyTextfield(
                  controller: emailController,
                  hintText: 'Email',
                  ObscureText: false,
                   maxLength: 50,
                  hintStyle: TextStyle(color: Colors.black),
                  validator: (value) {
                    return validateEmail(value!);
                  },
                ),

                const SizedBox(height: 15),

                // Password textfield
                MyTextfield(
                  controller: passwordController,
                  hintText: 'Password',
                  ObscureText: true,
                   maxLength: 15,
                  hintStyle: TextStyle(color: Colors.black),
                  validator: (value) {
                    return validatePassword(value!);
                  },
                ),
                const SizedBox(height: 10),

                const SizedBox(height: 25),

                // Sign up button
                SignupButton(
                  onTap: signUpUser,
                ),

                const SizedBox(height: 50),

                // Already have an account? Sign In
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 6),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
