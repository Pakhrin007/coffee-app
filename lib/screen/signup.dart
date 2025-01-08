import 'package:coffee/screen/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    // It's better to avoid multiplying by 1
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 250, 253, 1),
      body: SingleChildScrollView(
        child: Padding(
          // Apply overall horizontal padding to maintain consistency
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image Container with reduced top margin
              Container(
                margin: const EdgeInsets.only(
                    left: 10, top: 9), // Reduced from left:40, top:15
                child: Image.asset(
                  'assets/splash/logo.png',
                  height: 275,
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(height: 1),

              Text(
                'Email',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 5),
              Container(
                width: width * .8,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter your email",
                    labelStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  ),
                  validator: (value) =>
                      value!.isEmpty ? "Please enter your E-Mail" : null,
                ),
              ),

              // Spacing between fields
              SizedBox(height: 8), // Adjust spacing as needed

              // Password Field
              Text(
                'Password',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 5),
              Container(
                width: width * .8,
                child: TextFormField(
                  obscureText: !isPasswordVisible, // Hide password input
                  decoration: InputDecoration(
                      hintText: "Enter your password",
                      labelStyle: TextStyle(fontSize: 16),
                      border: OutlineInputBorder(),
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

              // Spacing between fields
              SizedBox(height: 8),

              // Confirm Password Field
              Text(
                'Confirm Password',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 5),
              Container(
                width: width * .8,
                child: TextFormField(
                  obscureText: true, // Hide password input
                  decoration: InputDecoration(
                      hintText: "Enter your confirm password",
                      labelStyle: TextStyle(fontSize: 16),
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                          icon: Icon(isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off))),
                  validator: (value) => value!.isEmpty
                      ? "Please enter your confirm password"
                      : null,
                ),
              ),

              // Spacing before the Sign Up button
              SizedBox(height: 18),

              // Sign Up Button
              Container(
                height: height * 0.074,
                width: width * .8,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(1, 139, 250, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontFamily: 'poppins-Medium',
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(height: 8),

              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Already have an account?  "),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.blue.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
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
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),

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
                    SizedBox(
                      width: 10,
                    ),
                    Text(
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
