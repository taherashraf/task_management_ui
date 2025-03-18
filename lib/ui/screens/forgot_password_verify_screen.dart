import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_management_ui/ui/screens/forgot_password_pin_verification_screen.dart';
import 'package:task_management_ui/ui/widgets/screen_background.dart';

class ForgotPasswordVerifyEmailScreen extends StatefulWidget {
  const ForgotPasswordVerifyEmailScreen({super.key});

  @override
  State<ForgotPasswordVerifyEmailScreen> createState() =>
      _ForgotPasswordVerifyEmailScreenState();
}

class _ForgotPasswordVerifyEmailScreenState
    extends State<ForgotPasswordVerifyEmailScreen> {
  final TextEditingController _emailTEditingController =
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
                  'Your Email Address',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 4),
                Text(
                  'A 6 digit verification pin will send to your email address',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(color: Colors.black54),
                ),

                const SizedBox(height: 24),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailTEditingController,
                  decoration: InputDecoration(hintText: 'Email'),
                ),

                const SizedBox(height: 8),

                ElevatedButton(
                  onPressed: _onTapSubmitButton,
                  child: Icon(Icons.arrow_circle_right_outlined),
                ),
                const SizedBox(height: 8),
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
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ForgotPasswordPinVerificationScreen(),
      ),
    );
  }

  void _onTapForgotPasswordButton() {}

  void _onTapSignInButton() {
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _emailTEditingController.dispose();
    super.dispose();
  }
}
