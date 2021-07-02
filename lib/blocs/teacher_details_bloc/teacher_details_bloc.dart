import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:user_list_bloc/models/teacher_details.dart';
import 'package:user_list_bloc/repositories/teacher_details_repository.dart';

part 'teacher_details_event.dart';
part 'teacher_details_state.dart';

class TeacherDetailsBloc
    extends Bloc<TeacherDetailsEvent, TeacherDetailsState> {
  TeacherDetailsBloc() : super(TeacherDetailsLoadingState());

  final TeacherDetailsRepository _teacherDetailsRepository =
      TeacherDetailsRepository();

  @override
  Stream<TeacherDetailsState> mapEventToState(
      TeacherDetailsEvent event) async* {
    if (event is FetchTeacherDetailsEvent) {
      yield* _mapFetchTeacherDetailsEventToState(event);
    }
  }

  Stream<TeacherDetailsState> _mapFetchTeacherDetailsEventToState(
      FetchTeacherDetailsEvent event) async* {
    TeacherDetails details =
        await _teacherDetailsRepository.fetchTeacherDetails(event.id);
    yield TeacherDetailsFetchedState(details);
  }
}
