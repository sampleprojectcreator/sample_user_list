part of 'teacher_details_bloc.dart';

abstract class TeacherDetailsState extends Equatable {
  const TeacherDetailsState();

  @override
  List<Object> get props => [];
}

class TeacherDetailsFetchedState extends TeacherDetailsState {
  final TeacherDetails details;

  const TeacherDetailsFetchedState(this.details);

  @override
  List<Object> get props => [details];
}

class TeacherDetailsLoadingState extends TeacherDetailsState {}

class TeacherDetailsLoadFailedState extends TeacherDetailsState {}
