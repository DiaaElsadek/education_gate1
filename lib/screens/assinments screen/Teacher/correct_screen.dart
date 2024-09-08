import 'package:education_gate/data_of_app/data.dart';
import 'package:education_gate/screens/assinments%20screen/Teacher/put_degree.dart';
import 'package:education_gate/screens/members_on_school/Student.dart';
import 'package:flutter/material.dart';

class CorrectScreen extends StatefulWidget {
  const CorrectScreen({super.key});
  static String routeName = "Correct";
  @override
  State<CorrectScreen> createState() => _CorrectScreenState();
}

class _CorrectScreenState extends State<CorrectScreen> {
  static int numberOfSolves = DataStudent.solveStudent.length;
  @override
  Widget build(BuildContext context) {
    numberOfSolves = DataStudent.solveStudent.length;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )
        ),
        title: const Text("Correct Assginments"),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(itemBuilder: (context, index){
          return Column(
            children: [
              if(DataStudent.solveStudent[index] != "" && DataStudent.degrees[index] == "")
                Column(
                  children: [
                    const SizedBox(height: 30,),
                    Column(
                      children: [
                        InkWell(
                          onDoubleTap: (){
                            setState(() {
                              Navigator.pushNamed(context, PutDegree.routeName, arguments: index);
                            });
                          },
                          child: Container(
                            width: 350,
                            height: 150,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text("""${DataTeacher.titleAssignment[index]}\n\nsubmitted by student: ${DataApp.studentName}""", style: const TextStyle(
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
                ),
            ],
          );
        },
          physics: const BouncingScrollPhysics(),
          itemCount: numberOfSolves,),
      ),
    );
  }
}
