import 'package:education_gate/modules/layout_screen.dart';
import 'package:education_gate/modules/screens/Login%20Screens/Students%20Login.dart';
import 'package:education_gate/modules/screens/Login%20Screens/Teachers%20Login.dart';
import 'package:education_gate/screens/assinments%20screen/Student/Assinment.dart';
import 'package:education_gate/screens/assinments%20screen/Student/degrees_screen.dart';
import 'package:education_gate/screens/assinments%20screen/Student/solve_screen.dart';
import 'package:education_gate/screens/assinments%20screen/Student/view_assignment.dart';
import 'package:education_gate/screens/assinments%20screen/Teacher/correct_screen.dart';
import 'package:education_gate/screens/assinments%20screen/Teacher/put_degree.dart';
import 'package:education_gate/screens/assinments%20screen/Teacher/teacher%20assignment.dart';
import 'package:education_gate/screens/chat%20screen/chat_screen.dart';
import 'package:education_gate/screens/members_on_school/Student.dart';
import 'package:education_gate/screens/members_on_school/teacher.dart';
import 'package:education_gate/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter",
      routes: {
        LayoutScreen.routeName : (context)=> const LayoutScreen(),
        SplashScreen.routeName : (context)=> const SplashScreen(),
        Student.routeName : (context)=> Student(),
        Teacher.routeName : (context)=> const Teacher(),
        TeacherLogin.routeName : (context)=> const TeacherLogin(),
        StudentLogin.routeName : (context)=> const StudentLogin(),
        TeacherAssignment.routeName : (context)=> const TeacherAssignment(),
        ChatScreen.routeName : (context)=> const ChatScreen(),
        AssignmentsStudent.routeName : (context)=> const AssignmentsStudent(),
        CorrectScreen.routeName : (context)=> const CorrectScreen(),
        SolveScreen.routeName : (context)=> const SolveScreen(),
        PutDegree.routeName : (context)=> const PutDegree(),
        DegreesScreen.routeName : (context)=> const DegreesScreen(),
        ViewAssignment.routeName : (context)=> const ViewAssignment(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
