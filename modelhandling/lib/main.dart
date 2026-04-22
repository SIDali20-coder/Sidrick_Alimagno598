import 'package:flutter/material.dart';
import 'package:modelhandling/model/studentmodel.dart';
import 'package:modelhandling/screen/chat_screen.dart';
import 'package:modelhandling/screen/login_screen.dart';
import 'package:modelhandling/screen/product_screen.dart';
import 'package:modelhandling/screen/student_screen%20(2)%20(1).dart';
import 'package:modelhandling/screen/studentlist.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://arifnxmhvjerfoogbkax.supabase.co",
    anonKey:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFyaWZueG1odmplcmZvb2dia2F4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzI1NjU3MTIsImV4cCI6MjA4ODE0MTcxMn0.9NICJXY7W6DPoujTDkKSLltMfvSMAvrcugRIEW1IXDQ",
  );

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple),),
      home: ChatPage(username:"Sidrick_Alimagno598"),
    );
  }
}

