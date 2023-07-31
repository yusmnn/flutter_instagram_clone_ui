import 'package:flutter/material.dart';

import '../../../component/navigation/bottom_navbar.dart';
import '../../widget/grid_image.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({super.key});
  static const String routeName = '/upload';

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GridImage(),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 2,
      ),
    );
  }
}
