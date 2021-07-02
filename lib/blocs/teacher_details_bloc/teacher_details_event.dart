part of 'teacher_details_bloc.dart';

abstract class TeacherDetailsEvent extends Equatable {
  const TeacherDetailsEvent();

  @override
  List<Object> get props => [];
}

class FetchTeacherDetailsEvent extends TeacherDetailsEvent {
  final int id;

  const FetchTeacherDetailsEvent(this.id);

  @override
  List<Object> get props => [id];
}
