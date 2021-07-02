import 'package:user_list_bloc/data/mock_data.dart';
import 'package:user_list_bloc/models/teacher_details.dart';

class TeacherDetailsApiProvider {
  Future<TeacherDetails> fetchTeacherDetails(int id) async {
    return MockData.teacherDetails[id];
  }
}
