import 'package:user_list_bloc/models/teacher_list_model.dart';
import 'package:user_list_bloc/providers/api/teacher_list_api.dart';

class TeacherListRepository {
  final TeacherListApiProvider _apiProvider = TeacherListApiProvider();

  Future<List<TeacherListModel>> fetchTeacherList() async {
    return await _apiProvider.fetchTeacherList();
  }
}
