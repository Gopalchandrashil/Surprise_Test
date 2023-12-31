import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:surprise_test/screen/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 135, 33),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 250),
              const Text(
                'Welcome',
                style: TextStyle(
                  color: Color.fromARGB(211, 0, 0, 0),
                  fontSize: 32,
                  letterSpacing: 5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                style: const TextStyle(color: Colors.black),
                controller: _emailController,
                decoration: const InputDecoration(
                  labelStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  labelText: 'Password',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(153, 255, 255, 255),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Perform login logic here
                      Get.to(() => const HomePage());
                    }
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Center(
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Color.fromARGB(137, 0, 0, 0)),
                ),
              ),
              const Spacer(),
              const Center(
                child: Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white60,
                  ),
                  onPressed: () {
                    // Perform signup logic here
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.black),
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
