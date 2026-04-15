import 'package:modelhandling/model/studentmodel.dart';

class StudentService {
  Future<List<Student>> fetchStudents() async {
    await Future.delayed(const Duration(seconds: 2));

    final rawData = [
      {'id': '2', 'name': 'Juan Dela Cruz', 'age': 30, 'gpa': 1.5},
      {'id': '3', 'name': 'Juan Dela Cruz 1', 'age': 45, 'gpa': 1.6},
      {'id': '4', 'name': 'Juan Dela Cruz 2', 'age': 34, 'gpa': 1.7},
    ];

    return rawData.map((data) => Student.fromMap(data)).toList();
  }
}