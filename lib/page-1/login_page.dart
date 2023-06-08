import 'package:demo1/components/my_button_signin.dart';
import 'package:demo1/page-1/iphone-13-13-pro-1.dart';
import 'package:demo1/page-1/signup_page.dart';
import 'package:demo1/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:demo1/components/my_textfield.dart';
import 'package:demo1/components/square_tile.dart';

import 'package:firebase_auth/firebase_auth.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> _signIn(BuildContext context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: usernameController.text.trim(),
        password: passwordController.text.trim(),
      );

      // Sign-in successful, handle the user data or navigate to the next screen
      User? user = userCredential.user;
      if (user != null) {
        // Handle the signed-in user
        // e.g., store user data, navigate to the home screen, etc.
        print('Signed in successfully! User: ${user.uid}');

        // Navigate to the home screen or any other screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Scene1()),
        );
      }
    } catch (e) {
      // Handle sign-in errors
      print('Sign-in error: $e');
      // Show error message to the user, e.g., using a snackbar or dialog
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Sign-in failed. Please check your credentials and try again.'),
        ),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo

              SquareTile(
              onTap: () {} ,
              imagePath: 'assets/page-1/images/mechanic-1.png',
              decoration: BoxDecoration(
              ),
              ),
              
  
              

              const SizedBox(height: 50),

              // welcome back!
              Text(
                'Welcome back!',
                style: TextStyle(
                  color: Color(0xff02508e),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              
              const SizedBox(height: 25),
              
              
              // sign in button
              MyButton2(
                onTap : (){
                 _signIn(context);
                }
              ),

              const SizedBox(height: 50),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google button
                  SquareTile(
                    onTap: () => AuthService().signInwWithGoogle(),
                    decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[200],
                    ),
                    imagePath: 'assets/page-1/images/google.png',
                    ),

                  SizedBox(width: 25),

                  // apple button
                  SquareTile(
                    onTap: (){},
                    decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[200],
                    ),
                    imagePath: 'assets/page-1/images/facebook.png',
                    ),
                ],
              ),

              const SizedBox(height: 50),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                  onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context) => SignUpPage()),);},
                  child: Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}