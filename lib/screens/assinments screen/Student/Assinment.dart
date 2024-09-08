import 'package:education_gate/data_of_app/data.dart';
import 'package:education_gate/screens/assinments%20screen/Student/solve_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AssignmentsStudent extends StatefulWidget {
  const AssignmentsStudent({super.key});
  static String routeName = "AssignmentsStudent";
  @override
  State<AssignmentsStudent> createState() => _AssignmentsStudentState();
}

class _AssignmentsStudentState extends State<AssignmentsStudent> {
  static int numberOfAssignments = DataTeacher.titleAssignment.length;
  @override
  Widget build(BuildContext context) {
    numberOfAssignments = DataTeacher.titleAssignment.length;
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )
        ),
        backgroundColor: Colors.green,
        title: const Text("Assignments", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w800, fontSize: 20),),
      ),
      body: Center(
        child: ListView.builder(itemBuilder: (context, index){
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if(DataStudent.solveStudent[index] == "")
                Column(
                  children: [
                    const SizedBox(height: 30,),
                    Column(
                      children: [
                        InkWell(
                          onDoubleTap: (){
                            setState(() {
                              Navigator.pushNamed(context, SolveScreen.routeName, arguments: index);
                            });
                          },
                          child: Container(
                            width: 350,
                            height: 150,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(""" title: ${DataTeacher.titleAssignment[index]}\n date: ${DataTeacher.dateAssignment[index]}\n subject:\n ${DataTeacher.subjectAssignment[index]}""", style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800
                              ),),
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black, width: 2),
                                color: Colors.black12,
                                borderRadius: const BorderRadius.all(Radius.circular(25))
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
            ],
          );
        },
          physics: const BouncingScrollPhysics(),
          itemCount: numberOfAssignments,
        ),
      ),
    );
  }
}
