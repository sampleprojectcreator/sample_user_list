import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_list_bloc/blocs/teacher_details_bloc/teacher_details_bloc.dart';
import 'package:user_list_bloc/layout/screen_layout.dart';
import 'package:user_list_bloc/models/args/teacher_details_args.dart';

class TeacherDetailsScreen extends StatelessWidget {
  final TeacherDetailsArgs args;

  TeacherDetailsScreen(this.args);

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
      child: BlocBuilder(
        bloc: BlocProvider.of<TeacherDetailsBloc>(context)
          ..add(
            FetchTeacherDetailsEvent(args.id),
          ),
        builder: (BuildContext context, TeacherDetailsState state) {
          if (state is TeacherDetailsLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TeacherDetailsLoadFailedState) {
            return const Center(
              child: Text("Something went wrong!"),
            );
          } else if (state is TeacherDetailsFetchedState) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(state.details.imageUrl),
                        radius: 100,
                      ),
                      Text(
                          "${state.details.firstName} ${state.details.lastName}"),
                      Text("\$${state.details.price}"),
                      Text(state.details.nativeLanguage),
                      Text(state.details.country),
                      Text(state.details.averageRating.toString()),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(state.details.aboutTeacher),
                      Text(state.details.aboutLecture),
                    ],
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
