import 'package:flutter/material.dart';
import 'package:modelhandling/model/studentdate.dart';
import 'package:modelhandling/model/studentmodel.dart';

class Studentlist extends StatefulWidget {
  const Studentlist({super.key});

  @override
  State<Studentlist> createState() => _StudentlistState();
}

class _StudentlistState extends State<Studentlist> {
  final StudentService studentService = StudentService();
  List<Student> students = [];

  bool isloading = true;
  String? errormessage;

  Future<void> loadStudents() async {
    try {
      final loadstudent = await studentService.fetchStudents();
      setState(() {
        students = loadstudent;
        isloading = false;
      });
    } catch (e) {
      setState(() {
        isloading = false;
        errormessage = "Failed to load student data $e";
      });
    }
  }

  @override
  void initState() {
    super.initState();
    loadStudents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return ListTile(
            title: Text(student.name),
            subtitle: Text("${student.age} | ${student.gpa}"),
          );
        },
      ),
    );
  }
}