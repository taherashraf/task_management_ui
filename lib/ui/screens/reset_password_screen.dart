import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_management_ui/ui/screens/forgot_password_verify_screen.dart';
import 'package:task_management_ui/ui/screens/register_screen.dart';
import 'package:task_management_ui/ui/widgets/screen_background.dart';

import 'login_screen.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool _isNewPasswordObscure = true;
  bool _isConfirmPasswordObscure = true;

  final TextEditingController _newPasswordTEditingController =
      TextEditingController();
  final TextEditingController _confirmNewPasswordTEditingController =
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
                  'Set Password',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 4),
                Text(
                  'Minimum length password 8 character with letter and number combination',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(color: Colors.black54),
                ),
                const SizedBox(height: 24),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  controller: _newPasswordTEditingController,
                  obscureText: _isNewPasswordObscure,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isNewPasswordObscure = !_isNewPasswordObscure;
                        });
                      },
                      icon: Icon(
                        _isNewPasswordObscure ? Icons.visibility_off : Icons.visibility,
                      ),
                      color: Colors.grey,
                    ),
                    hintText: 'New Password',
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _confirmNewPasswordTEditingController,
                  obscureText: _isConfirmPasswordObscure,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isConfirmPasswordObscure = !_isConfirmPasswordObscure;
                          });
                        },
                        icon: Icon(
                          _isConfirmPasswordObscure ? Icons.visibility_off : Icons.visibility,
                        ),
                        color: Colors.grey,
                      ),
                      hintText: 'Confirm New Password'),
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
    );
  }

  void _onTapSubmitButton() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
      (predicate) => false,
    );
  }

  void _onTapSignInButton() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
      (predicate) => false,
    );
  }

  @override
  void dispose() {
    _newPasswordTEditingController.dispose();
    _confirmNewPasswordTEditingController.dispose();
    super.dispose();
  }
}
