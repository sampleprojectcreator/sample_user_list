import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:user_list_bloc/models/teacher_list_model.dart';
import 'package:user_list_bloc/repositories/teacher_list_repository.dart';

part 'teacher_list_event.dart';
part 'teacher_list_state.dart';

class TeacherListBloc extends Bloc<TeacherListEvent, TeacherListState> {
  TeacherListBloc() : super(TeacherListLoading());

  final TeacherListRepository _repository = TeacherListRepository();

  @override
  Stream<TeacherListState> mapEventToState(TeacherListEvent event) async* {
    if (event is FetchTeacherListEvent) {
      yield* _mapFetchTeacherListEventToState(event);
    }
  }

  Stream<TeacherListState> _mapFetchTeacherListEventToState(
      FetchTeacherListEvent event) async* {
    List<TeacherListModel> list = await _repository.fetchTeacherList();
    yield TeacherListFetchedState(list);
  }
}
