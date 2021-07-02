import 'package:flutter/material.dart';
import 'package:user_list_bloc/core/routes.dart';

class ScreenLayout extends StatelessWidget {
  final Widget child;

  const ScreenLayout({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Demo"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.access_time),
              title: const Text("Teachers"),
              onTap: () => Navigator.pushNamed(context, Routes.teachers),
            ),
          ],
        ),
      ),
      body: child,
    );
  }
}
