import 'package:education_gate/data_of_app/data.dart';
import 'package:education_gate/screens/assinments%20screen/Student/Assinment.dart';
import 'package:education_gate/screens/members_on_school/Student.dart';
import 'package:flutter/material.dart';

class SolveScreen extends StatefulWidget {
  const SolveScreen({super.key});
  static String routeName = "SolveScreen";
  @override
  State<SolveScreen> createState() => _SolveScreenState();
}

class _SolveScreenState extends State<SolveScreen> {
  TextEditingController subjectSolve = TextEditingController();
  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)?.settings.arguments as int;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Let's Solve"),
        backgroundColor: Colors.indigo,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                height: 65,
                width: 380,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Colors.red, width: 2)
                ),
                child: Center(
                  child: Text("title is ${DataTeacher.titleAssignment[index]}", style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 20, color: Colors.red),),
                ),
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
                      controller: subjectSolve,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                      ),
                      decoration: const InputDecoration(
                        hintText: "Enter Assignment's solve",
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
            const Spacer(),
            InkWell(
              onTap: (){
                setState(() {
                  if(subjectSolve.text != "") {
                    DataStudent.solveStudent[index] = subjectSolve.text;
                    subjectSolve.text = "";
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pushNamed(context, AssignmentsStudent.routeName);
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
                    boxShadow: const [
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
