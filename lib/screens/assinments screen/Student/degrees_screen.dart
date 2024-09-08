import 'package:education_gate/data_of_app/data.dart';
import 'package:education_gate/screens/assinments%20screen/Student/view_assignment.dart';
import 'package:education_gate/screens/members_on_school/Student.dart';
import 'package:flutter/material.dart';

class DegreesScreen extends StatefulWidget {
  const DegreesScreen({super.key});
  static String routeName = "Degrees";
  @override
  State<DegreesScreen> createState() => _DegreesScreenState();
}

class _DegreesScreenState extends State<DegreesScreen> {
  static int number = DataStudent.degrees.length;
  @override
  Widget build(BuildContext context) {
    number = DataStudent.degrees.length;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Degrees"),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )
        ),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: ListView.builder(itemBuilder: (context, index){
          return Column(
            children: [
              if(DataStudent.degrees[index] != "")
              Column(
                children: [
                  const SizedBox(height: 15,),
                  Column(
                    children: [
                      InkWell(
                        onLongPress: (){
                          setState(() {
                            Navigator.pushNamed(context, ViewAssignment.routeName, arguments: index);
                          });
                        },
                        child: Container(
                          width: 350,
                          height: 100,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("${DataTeacher.titleAssignment[index]}", style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.blue
                                ),),
                                Text("${DataStudent.degrees[index]}/10", style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.green
                                ),)
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              color: Colors.black12,
                              borderRadius: const BorderRadius.all(Radius.circular(16))
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15,),
                ],
              )
            ],
          );
        },
          physics: const BouncingScrollPhysics(),
          itemCount: number,),
      ),
    );
  }
}
