import 'package:education_gate/data_of_app/data.dart';
import 'package:education_gate/screens/assinments%20screen/Teacher/correct_screen.dart';
import 'package:flutter/material.dart';

class PutDegree extends StatefulWidget {
  const PutDegree({super.key});
  static String routeName = "PutDegree";
  @override
  State<PutDegree> createState() => _PutDegreeState();
}

class _PutDegreeState extends State<PutDegree> {
  TextEditingController degree = TextEditingController();
  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)?.settings.arguments as int;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )
        ),
        backgroundColor: Colors.deepOrange,
        title: const Text("Put Degree"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30,),
            Container(
              width: 350,
              height: 350,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text("${DataStudent.solveStudent[index]}", style: const TextStyle(
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
            const SizedBox(height: 20,),
            TextField(
             controller: degree,
             decoration: const InputDecoration(
               hintText: "10",
               hintStyle: TextStyle(color: Colors.green, fontSize: 18),
               filled: true,
                 border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(25)),
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.red, width: 1),
                   borderRadius: BorderRadius.all(Radius.circular(20)),
                 )
             ),
              maxLength: 2,
            ),
            const Spacer(),
            InkWell(
              onTap: (){
                setState(() {
                  DataStudent.degrees[index] = degree.text;
                  degree.text = "";
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.pushNamed(context, CorrectScreen.routeName);
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
                    boxShadow: [
                      const BoxShadow(
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
            const SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}
