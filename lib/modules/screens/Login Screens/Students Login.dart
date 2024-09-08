import 'package:education_gate/data_of_app/data.dart';
import 'package:education_gate/screens/members_on_school/Student.dart';
import 'package:flutter/material.dart';
class StudentLogin extends StatefulWidget {
  const StudentLogin({super.key});
  static String routeName = "LoginT";
  @override
  State<StudentLogin> createState() => _StudentLoginState();
}

class _StudentLoginState extends State<StudentLogin> {

  Color textColors = Colors.black;

  TextEditingController name = TextEditingController();
  TextEditingController ID = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100,),
            Container(
              width: 350,
              height: 5,
              color: Colors.amber,
            ),
            const SizedBox(height: 20,),
            Container(
              height: 50,
              width: 390,
              decoration: BoxDecoration(
                  color: const Color(0xff181FC7),
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), topRight: Radius.circular(20), topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                  border: Border.all(color: Colors.white, width: 2),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 11,
                        spreadRadius: 2
                    )
                  ]
              ),
              child: const Center(
                child: Text("Welcome our Dear Student", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: [
                  Container(
                    height: 65,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 7),
                    child: TextFormField(
                      controller: name,
                      onChanged: (text){
                        DataApp.studentName = text;
                      },
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                      ),
                      decoration: InputDecoration(
                        hintText: "Enter Your Name Here",
                        hintStyle: TextStyle(
                            color: textColors,
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),
                        border: InputBorder.none,
                        fillColor: Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: [
                  Container(
                    height: 65,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 7),
                    child: TextFormField(
                      controller: ID,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                      ),
                      decoration: InputDecoration(
                        hintText: "Enter Your ID Here",
                        hintStyle: TextStyle(
                            color: textColors,
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),
                        border: InputBorder.none,
                        fillColor: Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            InkWell(
              onTap: (){
                setState(() {});
                if(name.text == "" || ID.text == "") textColors = Colors.red;
                else{
                  ID.text = "";
                  name.text = "";
                  DataApp.isStudent = true;
                  DataApp.isTeacher = false;
                  Navigator.pushReplacementNamed(context, Student.routeName);
                }
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), topRight: Radius.circular(20), topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                    border: Border.all(color: Colors.white, width: 2),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 11,
                          spreadRadius: 2
                      )
                    ]
                ),
                child: const Center(
                  child: Text("Login", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              width: 350,
              height: 5,
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
