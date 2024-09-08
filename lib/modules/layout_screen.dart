import 'package:education_gate/data_of_app/data.dart';
import 'package:education_gate/modules/screens/Login%20Screens/Students%20Login.dart';
import 'package:education_gate/modules/screens/Login%20Screens/Teachers%20Login.dart';
import 'package:education_gate/screens/members_on_school/Student.dart';
import 'package:education_gate/screens/members_on_school/teacher.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});
  static String routeName = "Layout";

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(width: 70,),
            const Text("Welcome to ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.amber),),
            const Text("Education Gate", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.red),),
          ],
        ),
        backgroundColor: const Color(0xff181FC7),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          )
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Who are you?", style: TextStyle(color: Colors.black, shadows: [Shadow(color: Colors.red, offset: Offset(-1, -1))], fontWeight: FontWeight.w800, fontSize: 20),),
          Center(
            child: Container(
              height: 200,
              width: double.infinity,
              child: Row(
                children: [
                  const SizedBox(width: 40,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        DataApp.isTeacher = false;
                        DataApp.isStudent = true;
                      });
                      if(DataApp.studentName == null){
                        Navigator.pushNamed(context, StudentLogin.routeName);
                      }
                      else{
                        Navigator.pushNamed(context, Student.routeName);
                      }
                    },
                    child: Container(
                      width: 130,
                      height: 180,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: const BorderRadius.all(Radius.circular(25)),
                          border: Border.all(color: Colors.indigo, width: 2)
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 130,
                            margin: const EdgeInsets.only(left: 15, top: 10),
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(25)),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Student.jpg"),
                                  fit: BoxFit.cover
                                )
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 145, left: 30),
                            child: Text("Student", style: TextStyle(
                                color: Colors.indigo,
                                fontSize: 20,
                                fontWeight: FontWeight.w800
                            ),),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 60,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        DataApp.isTeacher = true;
                        DataApp.isStudent = false;
                      });
                      if(DataApp.teacherName == null){
                        Navigator.pushNamed(context, TeacherLogin.routeName);
                      }
                      else{
                        Navigator.pushNamed(context, Teacher.routeName);
                      }
                    },
                    child: Container(
                      width: 130,
                      height: 180,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: const BorderRadius.all(Radius.circular(25)),
                          border: Border.all(color: Colors.indigo, width: 2)
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 130,
                            margin: const EdgeInsets.only(left: 15, top: 10),
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(25)),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Teacher.jpg"),
                                )
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 145, left: 30),
                            child: Text("Teacher", style: TextStyle(
                                color: Colors.indigo,
                                fontSize: 20,
                                fontWeight: FontWeight.w800
                            ),),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
