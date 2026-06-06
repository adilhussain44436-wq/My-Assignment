import 'package:assignmant/OTP/OTP%20Verify_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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

              const SizedBox(height: 25),

              fieldTitle("Name"),

              const SizedBox(height: 8),

              textField(
                hint: "Adil Hussain",
                suffix: const Icon(Icons.check_circle, color: Colors.green),
              ),

              const SizedBox(height: 18),

              fieldTitle("Email"),

              const SizedBox(height: 8),

              textField(hint: "Adilhussain0766@gmail.com"),

              const SizedBox(height: 18),

              fieldTitle("Password"),

              const SizedBox(height: 8),

              textField(hint: "Enter Your Password", obscure: true),

              const SizedBox(height: 30),

              greenButton(
                text: "Create Account",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const OtpScreen()),
                  );
                },
              ),

              const SizedBox(height: 18),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already Have An Account ? ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Please Login*",
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
