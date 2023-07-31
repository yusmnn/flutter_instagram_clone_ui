import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone_ui/view/screen/auth/auth_screen.dart';
import 'package:flutter_instagram_clone_ui/view/screen/home/home_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../component/button/primary_button.dart';
import '../../../component/button/text_button.dart';
import '../../../component/theme/color.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 1 / 5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1 / 2.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icon/logo.svg',
                      height: 49,
                      width: 182,
                      colorFilter:
                          const ColorFilter.mode(cWhite, BlendMode.srcIn),
                    ),
                    const SizedBox(height: 2),
                    const CircleAvatar(
                      radius: 56,
                      backgroundImage:
                          NetworkImage('https://picsum.photos/300/300?random'),
                    ),
                    const Text(
                      'jacob_w',
                      style: TextStyle(
                        color: cWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 34),
                      child: PrimaryButton(
                        onPressed: () {
                          Navigator.pushNamed(context, HomeScreen.routeName);
                        },
                        text: 'Log in',
                      ),
                    ),
                    ButtonText(
                      text: 'Switch accounts',
                      color: cBlue,
                      onPressed: () {
                        Navigator.pushNamed(context, AuthScreen.routeName);
                      },
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      color: Color.fromARGB(134, 214, 213, 213),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  ButtonText(
                    text: 'Sign up.',
                    color: cBlue,
                    onPressed: () {
                      Navigator.pushNamed(context, AuthScreen.routeName);
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
