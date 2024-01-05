import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/images/logo.png',
              width: 250,
            ),
            SizedBox(
              width: 250,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Email',
                  labelStyle: const TextStyle(color: Colors.white70),
                  fillColor: Colors.grey.shade800,
                ),
              ),
            ),
            const SizedBox(height: 3),
            SizedBox(
              width: 250,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Password',
                  labelStyle: const TextStyle(color: Colors.white70),
                  fillColor: Colors.grey.shade800,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    shape: const RoundedRectangleBorder()),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Not a member yet? Start your free month!',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
            const SizedBox(height: 18),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Your Password?',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15),
                ))
          ],
        ),
      ),
    );
  }
}
