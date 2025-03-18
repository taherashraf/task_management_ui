import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_management_ui/ui/widgets/screen_background.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailTEditingController =
      TextEditingController();
  final TextEditingController _firstNameTEditingController =
      TextEditingController();
  final TextEditingController _lastNameTEditingController =
      TextEditingController();
  final TextEditingController _mobileEditingController =
      TextEditingController();
  final TextEditingController _passwordTEditingController =
      TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 80),
                  Text(
                    'Join With Us',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    controller: _emailTEditingController,
                    decoration: InputDecoration(hintText: 'Email'),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: _firstNameTEditingController,
                    decoration: InputDecoration(hintText: 'First Name'),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: _lastNameTEditingController,
                    decoration: InputDecoration(hintText: 'Last Name'),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    controller: _mobileEditingController,
                    decoration: InputDecoration(hintText: 'Mobile'),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _passwordTEditingController,
                    decoration: InputDecoration(hintText: 'Password'),
                  ),
                  const SizedBox(height: 8),

                  ElevatedButton(
                    onPressed: _onTapSubmitButton,
                    child: Icon(Icons.arrow_circle_right_outlined),
                  ),
                  const SizedBox(height: 32),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(text: "Have an account? "),
                          TextSpan(
                            text: "Sign In",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer:
                                TapGestureRecognizer()
                                  ..onTap =
                                      _onTapSignInButton, // cascade operation double
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSubmitButton() {}

  @override
  void dispose() {
    _emailTEditingController.dispose();
    _firstNameTEditingController.dispose();
    _lastNameTEditingController.dispose();
    _mobileEditingController.dispose();
    _passwordTEditingController.dispose();
    super.dispose();
  }

  void _onTapSignInButton() {
    Navigator.pop(context);
  }
}
