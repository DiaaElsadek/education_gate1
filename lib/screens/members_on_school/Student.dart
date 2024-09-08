import 'package:education_gate/data_of_app/data.dart';
import 'package:education_gate/screens/assinments%20screen/Student/Assinment.dart';
import 'package:education_gate/screens/assinments%20screen/Student/degrees_screen.dart';
import 'package:education_gate/screens/chat%20screen/chat_screen.dart';
import 'package:flutter/material.dart';

class Student extends StatefulWidget {
  String? name, Id, value;
  static String routeName = "student";
  Student({this.Id, this.name, this.value});

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )
        ),
        backgroundColor: const Color(0xff181FC7),
        title: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  image: DecorationImage(
                      image: AssetImage("assets/images/Student.jpg"),
                    fit: BoxFit.contain
                  )
              ),
            ),
            const SizedBox(width: 8,),
            Text("Welcome our Dear ${DataApp.studentName}", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white))
          ],
        ),
      ),
      backgroundColor: const Color(0xffA5B0F7),
      body: Center(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                const SizedBox(height: 40,),
                Container(
                  width: 350,
                  height: 150,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.green,
                            blurRadius: 11,
                            spreadRadius: 2
                        )
                      ],
                      border: Border.all(color: const Color(0xffFACC1D), width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      color: Colors.white
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 2),
                        child: Text("""  Do You Need to
      solve assginment?""", style: TextStyle(
                            shadows: [Shadow(color: Colors.black, offset: Offset(-0.8, -0.8))],
                            fontWeight: FontWeight.w800, fontSize: 18, color: Colors.red
                        ),),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20, ),
                        width: 140,
                        height: 100,
                        decoration: const BoxDecoration(
                          // borderRadius: BorderRadius.all(Radius.circular(0)),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/Assinment Logo.jpg")
                            )
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    setState(() {});
                    Navigator.pushNamed(context, AssignmentsStudent.routeName);
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
                              color: Colors.yellowAccent,
                              blurRadius: 5,
                              spreadRadius: 2
                          )
                        ]
                    ),
                    child: const Center(
                      child: Text("Click Here", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xff000099)),),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                const Divider(height: 20, color: Colors.green, endIndent: 20, indent: 20),
                const SizedBox(height: 10,),
                Container(
                  width: 350,
                  height: 150,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.green,
                            blurRadius: 11,
                            spreadRadius: 2
                        )
                      ],
                      border: Border.all(color: const Color(0xffFACC1D), width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      color: Colors.white
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 2),
                        child: Text("""   Do You Need to
    show your degrees?""", style: TextStyle(
                            shadows: [Shadow(color: Colors.blue, offset: Offset(-0.8, -0.8))],
                            fontWeight: FontWeight.w800, fontSize: 18, color: Colors.red
                        ),),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 40, ),
                        width: 120,
                        height: 120,
                        decoration: const BoxDecoration(
                          // borderRadius: BorderRadius.all(Radius.circular(0)),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/correct Assinments1.jpg")
                            )
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    setState(() {});
                    Navigator.pushNamed(context, DegreesScreen.routeName);
                  },
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/images/correct button.jpg"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), topRight: Radius.circular(20), topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                        border: Border.all(color: Colors.white, width: 2),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.blue,
                              blurRadius: 5,
                              spreadRadius: 2
                          )
                        ]
                    ),
                    child: const Center(
                      child: Text("Click Here", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xff000099)),),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                const Divider(height: 20, color: Colors.green, endIndent: 20, indent: 20),
                const SizedBox(height: 10,),
                Container(
                  width: 350,
                  height: 150,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.green,
                            blurRadius: 11,
                            spreadRadius: 2
                        )
                      ],
                      border: Border.all(color: const Color(0xffFACC1D), width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      color: Colors.white
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 2),
                        child: Text("""   Do You Need to
       chat with Teacher?""", style: TextStyle(
                            shadows: [Shadow(color: Colors.blue, offset: Offset(-0.8, -0.8))],
                            fontWeight: FontWeight.w800, fontSize: 18, color: Colors.red
                        ),),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 30, ),
                        width: 120,
                        height: 120,
                        decoration: const BoxDecoration(
                          // borderRadius: BorderRadius.all(Radius.circular(0)),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/chat Icon.png")
                            )
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    setState(() {});
                    Navigator.pushNamed(context, ChatScreen.routeName);
                  },
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/images/Chat Icon 2.jpg"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), topRight: Radius.circular(20), topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                        border: Border.all(color: Colors.white, width: 2),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.blue,
                              blurRadius: 5,
                              spreadRadius: 2
                          )
                        ]
                    ),
                    child: const Center(
                      child: Text("Click Here", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xff000099)),),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
