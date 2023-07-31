import 'package:flutter/material.dart';
import 'view/screen/auth/auth_screen.dart';
import 'view/screen/home/home_screen.dart';
import 'view/screen/likes/likes_screen.dart';
import 'view/screen/login/login_screen.dart';
import 'view/screen/profile/edit_profile_screen.dart';
import 'view/screen/profile/profile_screen.dart';
import 'view/screen/search/search_screen.dart';
import 'view/screen/upload/upload_screen.dart';

import 'component/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Instagram Clone UI',
      theme: StyleTheme.themeData(),
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => const LoginScreen(),
        AuthScreen.routeName: (context) => const AuthScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        SearchScreen.routeName: (context) => const SearchScreen(),
        UploadScreen.routeName: (context) => const UploadScreen(),
        LikesScreen.routeName: (context) => const LikesScreen(),
        ProfileScreen.routeName: (context) => const ProfileScreen(),
        EditProfileScreen.routeName: (context) => const EditProfileScreen(),
      },
    );
  }
}
