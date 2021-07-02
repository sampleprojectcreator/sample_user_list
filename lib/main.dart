import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_list_bloc/blocs/teacher_details_bloc/teacher_details_bloc.dart';
import 'package:user_list_bloc/blocs/teacher_list_bloc/teacher_list_bloc.dart';
import 'package:user_list_bloc/core/routes.dart';
import 'package:user_list_bloc/models/args/teacher_details_args.dart';
import 'package:user_list_bloc/screens/home_screen.dart';
import 'package:user_list_bloc/screens/teacher_details_screen.dart';
import 'package:user_list_bloc/screens/teachers_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        Routes.teachers: (BuildContext context) => BlocProvider(
              create: (context) => TeacherListBloc(),
              child: TeachersScreen(),
            ),
        Routes.teacherDetails: (BuildContext context) => BlocProvider(
              create: (BuildContext context) => TeacherDetailsBloc(),
              child: TeacherDetailsScreen(
                ModalRoute.of(context).settings.arguments as TeacherDetailsArgs,
              ),
            ),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
