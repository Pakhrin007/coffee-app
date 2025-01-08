import 'package:coffee/screen/forgot.dart';
import 'package:coffee/screen/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    // It's better to avoid multiplying by 1
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 250, 253, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, top: 9),
                child: Image.asset(
                  'assets/splash/logo.png',
                  height: 275,
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(height: 1),

              const Text(
                'Email',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 5),
              Container(
                width: width * .8,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter your email",
                    labelStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 10, horizontal: 12), // Adjust padding here
                  ),
                  validator: (value) =>
                      value!.isEmpty ? "Please enter your E-Mail" : null,
                ),
              ),

              // Spacing between fields
              const SizedBox(height: 8), // Adjust spacing as needed

              // Password Field
              const Text(
                'Password',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 5),
              Container(
                width: width * .8,
                child: TextFormField(
                  obscureText: !isPasswordVisible,
                  decoration: InputDecoration(
                      hintText: "Enter your password",
                      labelStyle: const TextStyle(fontSize: 16),
                      border: const OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                          icon: Icon(isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off))),
                  validator: (value) =>
                      value!.isEmpty ? "Please enter your password" : null,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Forgot()));
                  },
                  child: const Text("Forgot password")),
              const SizedBox(height: 18),

              // Sign Up Button
              Container(
                height: height * 0.074,
                width: width * .8,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(1, 139, 250, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              // Spacing before the Login prompt
              const SizedBox(height: 8),

              // Login Prompt
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text("Don't have an Account?  "),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Signup()));
                      },
                      child: Text(
                        "Signup",
                        style: TextStyle(
                          color: Colors.blue.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Optional: Add more spacing at the bottom
              const SizedBox(height: 10),
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "or",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),

              Container(
                height: height * 0.077,
                width: width * .8,
                decoration: BoxDecoration(
                    // color: Color.fromRGBO(1, 139, 250, 1),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1)),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon/google.png',
                      height: 40,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Continue with google",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
