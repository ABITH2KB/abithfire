import 'package:abijithfirebase/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class EmailAndPasswordSignIn extends StatefulWidget {
  const EmailAndPasswordSignIn({super.key});

  @override
  State<EmailAndPasswordSignIn> createState() => _EmailAndPasswordSignInState();
}

class _EmailAndPasswordSignInState extends State<EmailAndPasswordSignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _signIn(BuildContext context) async {
    try {
      String email = _emailController.text.trim();
      String password = _passwordController.text.trim();

      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Sign-in Successful')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to sign in: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _signIn(context),
              child: const Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}