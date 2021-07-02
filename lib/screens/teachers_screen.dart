import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_list_bloc/blocs/teacher_list_bloc/teacher_list_bloc.dart';
import 'package:user_list_bloc/core/routes.dart';
import 'package:user_list_bloc/layout/screen_layout.dart';
import 'package:user_list_bloc/models/args/teacher_details_args.dart';
import 'package:user_list_bloc/models/enums/teacher_type.dart';
import 'package:user_list_bloc/models/teacher_list_model.dart';

class TeachersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
      child: BlocBuilder(
        bloc: BlocProvider.of<TeacherListBloc>(context)
          ..add(FetchTeacherListEvent()),
        builder: (BuildContext context, TeacherListState state) {
          if (state is TeacherListLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TeacherListLoadFailed) {
            return const Center(
              child: Text("Something went wrong!"),
            );
          } else if (state is TeacherListFetchedState) {
            return ListView.builder(
              itemCount: state.list.length,
              itemBuilder: (context, index) {
                TeacherListModel e = state.list[index];
                return ListTile(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      Routes.teacherDetails,
                      arguments: TeacherDetailsArgs(e.id),
                    );
                  },
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      state.list[index].imageUrl,
                    ),
                  ),
                  title: Text(
                    "${e.firstName} ${e.lastName}",
                  ),
                  subtitle: Row(
                    children: [
                      Text("Country: ${e.country}"),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Native Language: ${e.nativeLanguage}"),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Price: \$${e.price}"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                          "Teacher Type: ${TeacherTypeExtension.getTeacherTypeString(e.teacherType)}"),
                    ],
                  ),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
