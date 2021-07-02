import 'package:user_list_bloc/models/enums/teacher_type.dart';
import 'package:user_list_bloc/models/teacher_details.dart';
import 'package:user_list_bloc/models/teacher_list_model.dart';

class MockData {
  static Map<int, TeacherListModel> teachers = {
    431: TeacherListModel(
      id: 431,
      firstName: "John",
      lastName: "Doe",
      country: "USA",
      price: 9.99,
      teacherType: TeacherType.professional,
      nativeLanguage: "English",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/John_Doe%2C_born_John_Nommensen_Duchac.jpg/1200px-John_Doe%2C_born_John_Nommensen_Duchac.jpg",
    ),
    435: TeacherListModel(
      id: 435,
      firstName: "Jane",
      lastName: "Doe",
      country: "France",
      price: 9.99,
      teacherType: TeacherType.professional,
      nativeLanguage: "French",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/John_Doe%2C_born_John_Nommensen_Duchac.jpg/1200px-John_Doe%2C_born_John_Nommensen_Duchac.jpg",
    ),
    513: TeacherListModel(
      id: 513,
      firstName: "Angela",
      lastName: "Doe",
      country: "Germany",
      price: 9.99,
      teacherType: TeacherType.community,
      nativeLanguage: "German",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/John_Doe%2C_born_John_Nommensen_Duchac.jpg/1200px-John_Doe%2C_born_John_Nommensen_Duchac.jpg",
    ),
  };

  static Map<int, TeacherDetails> teacherDetails = {
    431: TeacherDetails.fromTeacherListModel(
      teachers[431],
      aboutLecture: "Lorem ipsum doler sit amet",
      averageRating: 4.8,
      aboutTeacher: "Hi, my name is John",
    ),
    513: TeacherDetails.fromTeacherListModel(
      teachers[513],
      aboutLecture: "Great lectures",
      aboutTeacher: "Hello!",
      averageRating: 4.5,
    ),
    435: TeacherDetails.fromTeacherListModel(teachers[435],
        aboutLecture: "Very very nice lectures",
        aboutTeacher: "Bonjour",
        averageRating: 4.3),
  };
}
