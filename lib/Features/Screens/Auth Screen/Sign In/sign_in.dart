import 'package:flutter/material.dart';
import 'package:online_store/Constants/images.dart';
import 'package:online_store/Features/Utils/elevated_button.dart';
import 'package:online_store/Features/Widgets/form.dart';
import 'package:online_store/Style/text_style.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _signUpFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController= TextEditingController();
  final TextEditingController _passwordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                height: double.infinity,
                width: 500,
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.logo, 
                      width:200,
                      height: 100,
                    ),
                    const SizedBox(
                      height : 10.0 
                    ),
                    Text("Welcome to our App !!!", 
                      style: AppTextStyle.mainTitle,
                      textAlign: TextAlign.center
                    ),
                    const SizedBox(
                      height:10.0
                    ),
                    Form(
                      key: _signUpFormKey,
                      child: Column(
                        children: [
                          AppForm(controller: _emailController, hintText: 'Email',),
                          const SizedBox(height: 10.0),
                          AppForm(controller: _passwordController, hintText: 'Password',),
                          const SizedBox(height: 10.0),
                          AppElevatedButton(text: 'Login', onTap: (){})
                        ],
                      )
                    )
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