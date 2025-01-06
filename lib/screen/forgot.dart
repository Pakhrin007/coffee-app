import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot password"),
        centerTitle: true,
      ),
      backgroundColor: Color.fromRGBO(246, 250, 253, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: 10, top: 9), // Reduced from left:40, top:15
                child: Image.asset(
                  'assets/splash/logo.png',
                  height: 275,
                  fit: BoxFit.contain,
                ),
              ),

              SizedBox(height: 1),

              Text(
                'Email',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 5),
              Container(
                width: width * .8,
                child: TextFormField(
                  decoration: const InputDecoration(
                    // labelText: "Enter your email",
                    labelStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) =>
                      value!.isEmpty ? "Please enter your E-Mail" : null,
                ),
              ),
              SizedBox(height: 18),

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
                    "Send Link",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'poppins-Medium'),
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
