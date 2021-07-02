part of 'teacher_list_bloc.dart';

abstract class TeacherListState extends Equatable {
  const TeacherListState();

  @override
  List<Object> get props => [];
}

class TeacherListLoading extends TeacherListState {}

class TeacherListLoadFailed extends TeacherListState {}

class TeacherListFetchedState extends TeacherListState {
  final List<TeacherListModel> list;

  const TeacherListFetchedState(this.list);

  @override
  List<Object> get props => [list];
}
