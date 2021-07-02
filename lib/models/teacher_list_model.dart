import 'package:user_list_bloc/models/enums/teacher_type.dart';

class TeacherListModel {
  final int id;
  final String firstName;
  final String lastName;
  final double price;
  final String country;
  final String nativeLanguage;
  final String imageUrl;
  final TeacherType teacherType;

  TeacherListModel({
    this.id,
    this.firstName,
    this.lastName,
    this.price,
    this.country,
    this.nativeLanguage,
    this.imageUrl,
    this.teacherType,
  });
}
