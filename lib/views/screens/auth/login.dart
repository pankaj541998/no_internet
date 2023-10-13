import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_one/views/screens/auth/providers/login_provider.dart';
import 'package:test_one/views/screens/widget/link_btn.dart';
import 'package:test_one/views/screens/widget/primary_btn.dart';
import 'package:test_one/views/screens/widget/primary_textfield.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  static const String pageRoute = 'login';

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LoginProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('eCommerce App'),
          // elevation: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ListView(
              children: [
                const Text(
                  'Log in',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                (provider.error != '')
                    ? Text(provider.error,style: const TextStyle(color: Colors.red),)
                    : const SizedBox(),
                const SizedBox(height: 16),
                PrimaryTextField(
                    controller: provider.emailController,
                    labelTex: 'Email Address'),
                const SizedBox(height: 16),

                // const SizedBox(height: 16),
                PrimaryTextField(
                  controller: provider.passwordController,
                  labelTex: 'Passwords',
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: LinkBtn(text: 'Forgot Password', onPressed: () {}),
                ),
                const SizedBox(height: 16),
                PrimaryBtn(btnText: 'Submit', onPressed: provider.logIn),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const Text(
                      'Don\'t have an account? ',
                      style: TextStyle(fontSize: 18),
                    ),
                    LinkBtn(
                      text: (provider.isLoading)?'...':'Sign Up',
                      onPressed: (){},
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
