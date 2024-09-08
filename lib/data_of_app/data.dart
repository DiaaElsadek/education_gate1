
class DataApp {
  static String? studentName;
  static String? teacherName;
  static bool isStudent = true;
  static bool isTeacher = true;
}

class DataTeacher {
  static List<String> titleAssignment = [];
  static List<String> subjectAssignment = [];
  static List<String> dateAssignment = [];
  // static List<bool> isSubmitted = [];
}

class DataStudent {
  static List<String> solveStudent = [];
  static List<bool> isCorrected = [];
  static List<String> degrees = [];
}

class Messages {
  static List<String> messageT = [];
  static List<String> messageS = [];
}
