import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  void loginUser() {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      print('Username: ${userNameController.text}');
      print('Password: ${passwordController.text}');
      Navigator.pushNamed(
        context,
        '/chat',
        arguments: '${userNameController.text}',
      );
    } else {
      print('Login not successful!');
    }
  }


  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      drawer: const Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Button clicked');
        },
        child: const Icon(Icons.login),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: ListView(
              shrinkWrap: true,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              children: [
                // Title
                const Text(
                  'Let\'s sign you in!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 10),

                // Subtitle
                const Text(
                  'Welcome back!\nYou\'ve been missed!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blueGrey,
                  ),
                ),
                const SizedBox(height: 20),

                // Image
                Image.network(
                  'https://logo.clearbit.com/um.edu.my',
                  height: 200,
                ),
                const SizedBox(height: 20),

                // Username field
                TextFormField(
                  controller: userNameController,
                  decoration: const InputDecoration(
                    hintText: 'Add your Username',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please type your username";
                    } else if (value.length < 5) {
                      return "Username should be more than 5 characters";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),

                // Password field
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Enter your Password',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please type your password";
                    } else if (value.length < 5) {
                      return "Password should be more than 5 characters";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),

                // Login button
                ElevatedButton(
                  onPressed: loginUser,
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                ),
                const SizedBox(height: 10),

                // Clickable UM link
                Center(
                  child: GestureDetector(
                    onTap: () {
                      print('https://um.edu.my');
                    },
                    child: const Text(
                      'https://um.edu.my',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
