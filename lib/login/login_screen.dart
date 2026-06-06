import 'package:assignmant/OTP/OTP%20Verify_screen.dart';
import 'package:assignmant/sign_up/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              const SizedBox(height: 35),

              const Icon(
                Icons.change_history,
                color: Color(0xffF26A4B),
                size: 35,
              ),

              const SizedBox(height: 10),

              const Text(
                "Hipcamp",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 30),

              socialButton(
                icon: Icons.g_mobiledata,
                title: "Continue with Google",
              ),

              const SizedBox(height: 12),

              socialButton(
                icon: Icons.facebook,
                title: "Continue with Facebook",
              ),

              const SizedBox(height: 12),

              socialButton(icon: Icons.apple, title: "Continue with Apple"),

              const SizedBox(height: 30),

              fieldTitle("Email or username"),

              const SizedBox(height: 8),

              textField(
                hint: "Adilhussain0766@gmail.com",
                suffix: const Icon(Icons.check_circle, color: Colors.green),
              ),

              const SizedBox(height: 18),

              fieldTitle("Password"),

              const SizedBox(height: 8),

              textField(hint: "Enter Your Password", obscure: true),

              const SizedBox(height: 28),

              greenButton(text: "Log In", onTap: () {}),

              const SizedBox(height: 18),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't Have Account ? ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const SignupScreen()),
                      );
                    },
                    child: const Text(
                      "Please Sign up*",
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
