import 'package:education_gate/data_of_app/data.dart';
import 'package:education_gate/screens/members_on_school/teacher.dart';
import 'package:flutter/material.dart';

class TeacherAssignment extends StatefulWidget {
  const TeacherAssignment({super.key});
  static String routeName = "Assignment_Teacher";
  @override
  State<TeacherAssignment> createState() => _TeacherAssignmentState();
}

class _TeacherAssignmentState extends State<TeacherAssignment> {
  TextEditingController title = TextEditingController();
  TextEditingController subject = TextEditingController();
  TextEditingController date = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Create a Assignment"),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )
        ),
        backgroundColor: Colors.redAccent,
        shadowColor: Colors.blue,
        elevation: 5,
      ),
      backgroundColor: const Color(0xffF5E7E7),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 15),
              child: Stack(
                children: [
                  Container(
                    height: 65,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.red, width: 2)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 9),
                    child: TextField(
                      controller: title,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                      ),
                      decoration: const InputDecoration(
                        hintText: "Enter Assignment's title",
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20
                        ),
                        border: InputBorder.none,
                        fillColor: Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 15),
              child: Stack(
                children: [
                  Container(
                    height: 205,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.green, width: 2)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 9, right: 30),
                    child: TextField(
                      maxLines: 7,
                      controller: subject,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                      ),
                      decoration: const InputDecoration(
                        hintText: "Enter Assignment's subject",
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20
                        ),
                        border: InputBorder.none,
                        fillColor: Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 15),
              child: Stack(
                children: [
                  Container(
                    height: 65,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.blue, width: 2)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 9),
                    child: TextField(
                      controller: date,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                      ),
                      decoration: const InputDecoration(
                        hintText: "Enter Assignment's deadline",
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20
                        ),
                        border: InputBorder.none,
                        fillColor: Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: (){
                setState(() {
                  if(title.text != "" && date.text != "" && subject.text != ""){
                    DataTeacher.titleAssignment.add(title.text);
                    DataTeacher.subjectAssignment.add(subject.text);
                    DataTeacher.dateAssignment.add(date.text);
                    DataStudent.solveStudent.add("");
                    // DataTeacher.isSubmitted.add(true);
                    DataStudent.degrees.add("");
                    date.text = "";
                    subject.text = "";
                    title.text = "";
                    Navigator.pop(context);
                  }
                });
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/images/background assinment.jpg"),
                        fit: BoxFit.cover
                    ),
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), topRight: Radius.circular(20), topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                    border: Border.all(color: Colors.white, width: 2),
                    boxShadow: const  [
                      BoxShadow(
                          color: Colors.red,
                          blurRadius: 5,
                          spreadRadius: 2
                      )
                    ]
                ),
                child: const Center(
                  child: Text("Submit", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xff000099)),),
                ),
              ),
            ),
            const SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
