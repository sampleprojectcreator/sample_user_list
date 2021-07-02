import 'package:user_list_bloc/models/teacher_details.dart';
import 'package:user_list_bloc/providers/api/teacher_details_api.dart';

class TeacherDetailsRepository {
  final TeacherDetailsApiProvider _apiProvider = TeacherDetailsApiProvider();

  Future<TeacherDetails> fetchTeacherDetails(int id) async {
    return await _apiProvider.fetchTeacherDetails(id);
  }
}
