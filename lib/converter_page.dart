import 'package:assignment_5/widget/input_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ConverterPageState();
  }
}

class _ConverterPageState extends State<ConverterPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter.co",
          style: GoogleFonts.montserrat(
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 161, 127, 155),
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 300,
          child: Card(
            color: const Color.fromARGB(255, 161, 127, 155),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Log Into Flutter.co",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 20),

                    InputField(
                      controller: usernameController,
                      keyboardType: TextInputType.text,
                      validator: (value) =>
                          value!.isEmpty ? "Enter username" : null,
                      hintText: "Name",
                      labelText: "Username",
                      prefixIcon: Icons.account_circle,
                    ),

                    SizedBox(height: 10),

                    InputField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) =>
                          value!.isEmpty ? "Enter email" : null,
                      hintText: "Enter Email",
                      labelText: "Email",
                      prefixIcon: Icons.email,
                    ),

                    SizedBox(height: 10),

                    InputField(
                      controller: passwordController,
                      keyboardType: TextInputType.text,
                      validator: (value) =>
                          value!.isEmpty ? "Enter password" : null,
                      hintText: "Enter Password",
                      labelText: "Password",
                      prefixIcon: Icons.lock,
                      isPassword: true, 
                    ),

                    SizedBox(height: 20),

                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Login Successful")),
                          );
                        }
                      },
                      child: Text("Sign in"),
                    ),

                    SizedBox(height: 10),

                    Text(
                      "You are not registered yet? Create your account",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
