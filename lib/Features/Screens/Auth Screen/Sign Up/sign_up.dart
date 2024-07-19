import 'package:flutter/material.dart';
import 'package:online_store/Constants/images.dart';
import 'package:online_store/Features/Screens/Auth%20Screen/Sign%20In/sign_in.dart';
import 'package:online_store/Features/Utils/elevated_button.dart';
import 'package:online_store/Features/Widgets/form.dart';
import 'package:online_store/Features/Widgets/photo_field.dart';
import 'package:online_store/Style/text_style.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = 'signup-screen';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _signUpFormKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
          child: SingleChildScrollView(
            child: Center(
              child: SizedBox(
                width: 800,
                height: 550,
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppImages.background),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.5), 
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              const CircularPhotoField(),
                              const SizedBox(
                                height: 40,
                              ),
                              Text("Amazon" , style: AppTextStyle.appsubTitle)
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 10.0),
                            Text(
                              "Sign Up",
                              style: AppTextStyle.mainTitle,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 20.0),
                            Form(
                              key: _signUpFormKey,
                              child: Column(
                                children: [
                                  AppForm(
                                    controller: _nameController,
                                    hintText: 'User Name',
                                  ),
                                  const SizedBox(height: 10.0),
                                  AppForm(
                                    controller: _emailController,
                                    hintText: 'Email',
                                  ),
                                  const SizedBox(height: 10.0),
                                  AppForm(
                                    controller: _passwordController,
                                    hintText: 'Password',
                                    icon: Icons.visibility,
                                  ),
                                  const SizedBox(height: 20.0),
                                  AppElevatedButton(
                                    text: 'Create Account',
                                    onTap: () {
                                      if (_signUpFormKey.currentState!.validate()) {
                                        // Handle form submission
                                      }
                                    },
                                    color: Colors.green.shade600,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            const SizedBox(height: 20.0),
                            const Divider(
                              color: Colors.black45,
                            ),
                            const SizedBox(height: 10.0),
                            AppElevatedButton(
                              text: "Login to Existing Account",
                              onTap: () {
                                Navigator.pushReplacementNamed(context, SignInScreen.routeName);
                              },
                              color: Colors.orange,
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
      ),
    );
  }
}
