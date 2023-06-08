import 'package:demo1/page-1/login_page.dart';
import 'package:demo1/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:demo1/components/my_button.dart';
import 'package:demo1/components/my_textfield.dart';
import 'package:demo1/components/square_tile.dart';

import '../auth_controller.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();


  // sign user in method
  signUserIn(BuildContext context) 
  { 
    if(passwordController.text == confirmpasswordController.text)
    {
    AuthController.instance.register(usernameController.text, passwordController.text);
    }
    else{
      showDialog(context: context,builder: (context) => AlertDialog(
      title: Text("Error"),
      content: Text("Passwords don\'t match"),),
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
              const SizedBox(height: 40),

              // logo

              SquareTile(
              onTap: () {} ,
              imagePath: 'assets/page-1/images/mechanic-1.png',
              decoration: BoxDecoration(
              ),
              ),

              const SizedBox(height: 10),

              // Let's create an account for you!
              Text(
                'Let\'s create an account for you!',
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

              // Confirm password textfield
              MyTextField(
                controller: confirmpasswordController,
                hintText: 'Confirm password',
                obscureText: true,
              ),

              
              
              const SizedBox(height: 25),
              
              
              // sign in button
              MyButton(
                onTap : (){
                signUserIn(context);
                Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()),);
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

              // Login now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                  onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()),);},
                  child: Text(
                    'Login now',
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