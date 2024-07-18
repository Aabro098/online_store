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
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(100, 0.0, 0.0, 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Amazon" ,
                            style: AppTextStyle.appTitle,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text("From A to Z everything you will find here !" ,
                            style: AppTextStyle.appsubTitle,
                          ),
                        ],
                      ),
                    ),
                  )
                ),
                const Spacer(),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 200, 100),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 450,
                          height: 600,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
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
                                  children: [
                                    Image.asset(
                                      AppImages.logo,
                                      width: 200,
                                      height: 100,
                                    ),
                                    const SizedBox(height: 10.0),
                                    Text(
                                      "Welcome to our App !!!",
                                      style: AppTextStyle.mainTitle,
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(height: 20.0),
                                    Form(
                                      key: _signUpFormKey,
                                      child: Column(
                                        children: [
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
                                            text: 'Login',
                                            onTap: () {},
                                            color: Colors.orange,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10.0,),
                                    GestureDetector(
                                      onTap: (){},
                                      child: const Text("Forgot Password?" , 
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w700
                                        )
                                      ),
                                    ),
                                    const SizedBox(height: 20.0),
                                    const Divider(
                                      color: Colors.black45
                                    ),
                                    const SizedBox(height: 10.0),
                                    AppElevatedButton(
                                      text: 'Create New Account',
                                      onTap: () {},
                                      color : Colors.green.shade600
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text("Connect with us to find everything !" ,
                          style: AppTextStyle.mainTitle,
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
}
