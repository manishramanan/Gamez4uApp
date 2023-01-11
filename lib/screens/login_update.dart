import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  late String _email, _password;
  late bool _isLoginForm;
  late bool _isEmailerror;

  @override
  void initState() {
    _isLoginForm = true;
    super.initState();
  }

  void _toggleForm() {
    setState(() {
      _isLoginForm = !_isLoginForm;
    });
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      // Perform login or signup
      if (_isLoginForm) {
        _login();
      } else {
        _signup();
      }
    }
  }

  void _login() {
    // Perform login
    ('Email: $_email, Password: $_password');
  }

  void _signup() {
    // Perform signup
    ('Email: $_email, Password: $_password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter an email';
                }
                if (!value.contains('@')) {
                  _isEmailerror = true;
                  return 'Please enter a valid email';
                }
                _isEmailerror = false;
                return null;
              },
              onSaved: (value) => _email = value!,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Password'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a password';
                }
                return null;
              },
              onSaved: (value) => _password = value!,
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: _submit,
              child: Text(_isLoginForm ? 'Login' : 'Signup'),
            ),
            TextButton(
              onPressed: _toggleForm,
              child: Text(_isLoginForm
                  ? 'Create an account'
                  : 'Have an account? Login'),
            )
          ],
        ),
      ),
    );
  }
}


