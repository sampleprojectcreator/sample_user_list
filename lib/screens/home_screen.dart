import 'package:flutter/material.dart';
import 'package:user_list_bloc/layout/screen_layout.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
      child: const Center(
        child: Text("Home Screen"),
      ),
    );
  }
}
