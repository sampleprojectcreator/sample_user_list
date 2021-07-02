enum TeacherType { professional, community }

extension TeacherTypeExtension on TeacherType {
  static getTeacherTypeString(TeacherType teacherType) {
    switch (teacherType) {
      case TeacherType.professional:
        return "Professional";
      case TeacherType.community:
        return "Community";
      default:
        return "";
    }
  }
}
