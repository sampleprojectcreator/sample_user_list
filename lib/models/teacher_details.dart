import 'package:user_list_bloc/models/enums/teacher_type.dart';
import 'package:user_list_bloc/models/teacher_comment.dart';
import 'package:user_list_bloc/models/teacher_list_model.dart';

class TeacherDetails {
  final int id;
  final String firstName;
  final String lastName;
  final double price;
  final String country;
  final String nativeLanguage;
  final String imageUrl;
  final TeacherType teacherType;
  final String aboutTeacher;
  final double averageRating;
  final String aboutLecture;
  final List<TeacherComment> comments;

  TeacherDetails({
    this.id,
    this.firstName,
    this.lastName,
    this.price,
    this.country,
    this.nativeLanguage,
    this.imageUrl,
    this.teacherType,
    this.aboutLecture,
    this.aboutTeacher,
    this.comments,
    this.averageRating,
  });

  TeacherDetails.fromTeacherListModel(
    TeacherListModel teacherListModel, {
    this.aboutLecture,
    this.aboutTeacher,
    this.comments,
    this.averageRating,
  })  : id = teacherListModel.id,
        firstName = teacherListModel.firstName,
        lastName = teacherListModel.lastName,
        price = teacherListModel.price,
        country = teacherListModel.country,
        nativeLanguage = teacherListModel.nativeLanguage,
        imageUrl = teacherListModel.imageUrl,
        teacherType = teacherListModel.teacherType;
}
