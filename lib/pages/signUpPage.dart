import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  bool _hidePass = true;
  bool _agree = false;

  void _showPassword() {
    setState(() {
      _hidePass = !_hidePass;
    });
  }
  void Function(bool?)? _agreeWtihTermsAndConditions() {
    setState(() {
      _agree = !_agree;
    });

  }

  @override
  void dispose() {
    super.dispose();
    _firstNameController.text;
    _emailController.text;
    _passwordController.text;
    _confirmPasswordController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF25273e),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Sign Up',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _firstNameController,
              decoration: InputDecoration(
                labelText: 'First Name',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              controller: _passwordController,
              obscureText: _hidePass,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: GestureDetector(
                  onTap: _showPassword,
                  child: Icon(_hidePass? Icons.visibility_off : Icons.visibility)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              controller: _confirmPasswordController,
              obscureText: _hidePass,
              decoration: InputDecoration(
                labelText: 'Confrim Password',
                suffixIcon: GestureDetector(
                  onTap: _showPassword,
                  child: Text('Show')),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                // Checkbox(value: _agree, onChanged: _agreeWtihTermsAndConditions,)
              ],
            )
          ],
        ),
      )),
    );
  }
}
