import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone_ui/component/button/text_button.dart';
import 'package:flutter_instagram_clone_ui/component/field/text_box.dart';
import 'package:flutter_instagram_clone_ui/component/theme/color.dart';
import 'package:flutter_instagram_clone_ui/view/screen/login/login_screen.dart';
import 'package:flutter_svg/svg.dart';

import '../../../component/button/icon_text_button.dart';
import '../../../component/button/primary_button.dart';
import '../home/home_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  static const String routeName = '/auth';

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, LoginScreen.routeName);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: cGrey,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icon/logo.svg',
                  height: 49,
                  width: 182,
                  colorFilter: const ColorFilter.mode(cWhite, BlendMode.srcIn),
                ),
                const SizedBox(height: 38),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextBox(
                        textEditingController: _userName,
                        hintText: 'asad_khasanov',
                      ),
                      const SizedBox(height: 12),
                      TextBox(
                        textEditingController: _password,
                        hintText: 'Password',
                        obscureText: true,
                        obscureChar: '*',
                      ),
                      const SizedBox(height: 18),
                      Container(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, LoginScreen.routeName);
                          },
                          child: const Text(
                            'Forgot password?',
                            style: TextStyle(
                              color: cBlue,
                              fontSize: 12,
                              letterSpacing: 0.15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                PrimaryButton(
                  onPressed: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  },
                  text: 'Log in',
                ),
                const SizedBox(height: 38),
                IconTextButton(
                  onTap: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                  icon: SvgPicture.asset(
                    'assets/icon/facebook.svg',
                    // height: 49,
                    // width: 182,
                    colorFilter: const ColorFilter.mode(cBlue, BlendMode.srcIn),
                  ),
                  text: 'Log in with Facebook',
                ),
                const SizedBox(height: 41),
                const Text(
                  'OR',
                  style: TextStyle(
                    color: Color.fromARGB(134, 214, 213, 213),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 41),
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
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 1 / 7,
                ),
                const Text(
                  'Instagram from Facebook',
                  style: TextStyle(
                    color: Color.fromARGB(134, 214, 213, 213),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
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
