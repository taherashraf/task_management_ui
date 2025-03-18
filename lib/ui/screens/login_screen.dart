import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_management_ui/ui/screens/forgot_password_verify_screen.dart';
import 'package:task_management_ui/ui/screens/main_bottom_nav_screen.dart';
import 'package:task_management_ui/ui/screens/register_screen.dart';
import 'package:task_management_ui/ui/widgets/screen_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;
  final TextEditingController _emailTEditingController =
      TextEditingController();
  final TextEditingController _passwordTEditingController =
      TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80),
                Text(
                  'Get Started With',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 24),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailTEditingController,
                  decoration: InputDecoration(hintText: 'Email'),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  obscureText: _isObscure,
                  controller: _passwordTEditingController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      icon: Icon(
                        _isObscure ? Icons.visibility_off : Icons.visibility,
                      ),
                      color: Colors.grey,
                    ),
                    hintText: 'Password',
                  ),
                ),
                const SizedBox(height: 8),

                ElevatedButton(
                  onPressed: _onTapSubmitButton,
                  child: Icon(Icons.arrow_circle_right_outlined),
                ),
                const SizedBox(height: 8),
                Center(
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: _onTapForgotPasswordButton,
                        child: Text('Forget Password?'),
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                          ),
                          children: [
                            TextSpan(text: "Don't have account? "),
                            TextSpan(
                              text: "Sign Up",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer:
                                  TapGestureRecognizer()
                                    ..onTap =
                                        _onTapSignUpButton, // cascade operation double
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSubmitButton() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => MainBottomNavScreen()),
      (pre) => false,
    );
  }

  void _onTapForgotPasswordButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ForgotPasswordVerifyEmailScreen(),
      ),
    );
  }

  void _onTapSignUpButton() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterScreen()),
    );
  }

  @override
  void dispose() {
    _emailTEditingController.dispose();
    _passwordTEditingController.dispose();
    super.dispose();
  }
}
