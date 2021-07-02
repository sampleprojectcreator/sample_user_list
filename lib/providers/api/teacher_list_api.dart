import 'package:user_list_bloc/data/mock_data.dart';
import 'package:user_list_bloc/models/enums/teacher_type.dart';
import 'package:user_list_bloc/models/teacher_list_model.dart';

class TeacherListApiProvider {
  Future<List<TeacherListModel>> fetchTeacherList() async {
    /* final response = await http.get(
      Uri.parse(Urls.teacherApi),
      headers: {
        HttpHeaders.authorizationHeader: "Bearer $token",
      },
    );
    json.decode(response.body) as List; */
    return MockData.teachers.values.toList();
  }
}
