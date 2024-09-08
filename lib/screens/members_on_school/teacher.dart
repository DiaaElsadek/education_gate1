import 'package:education_gate/data_of_app/data.dart';
import 'package:education_gate/screens/assinments%20screen/Teacher/correct_screen.dart';
import 'package:education_gate/screens/assinments%20screen/Teacher/teacher%20assignment.dart';
import 'package:education_gate/screens/chat%20screen/chat_screen.dart';
import 'package:flutter/material.dart';

class Teacher extends StatefulWidget {
  const Teacher({super.key});

  static String routeName = "teacher";

  @override
  State<Teacher> createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  String text1 = """  Do You Need to
  create new Assignment?""";
  String text2 = """   Do You Need to
     correct Assignments?""";
  String text3 = """   Do You Need to
       chat with student?""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/Profile Photo Teacher.jpg"))),
            ),
            const SizedBox(
              width: 5,
            ),
            Text("Welcome Dear ${DataApp.teacherName}",
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white))
          ],
        ),
        backgroundColor: const Color(0xffFACC1D),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        )),
      ),
      backgroundColor: const Color(0xffAFD3EF),
      body: Center(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: 350,
                  height: 150,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.green,
                            blurRadius: 11,
                            spreadRadius: 2)
                      ],
                      border:
                          Border.all(color: const Color(0xffFACC1D), width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Text(
                          text1,
                          style: const TextStyle(
                              shadows: [
                                Shadow(
                                    color: Colors.black,
                                    offset: Offset(-0.8, -0.8))
                              ],
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                              color: Colors.red),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 0,
                        ),
                        width: 135,
                        height: 100,
                        decoration: const BoxDecoration(
                            // borderRadius: BorderRadius.all(Radius.circular(0)),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    "assets/images/Assinment Logo.jpg"))),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    setState(() {});
                    Navigator.pushNamed(context, TeacherAssignment.routeName);
                  },
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                                "assets/images/background assinment.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        border: Border.all(color: Colors.white, width: 2),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.yellowAccent,
                              blurRadius: 5,
                              spreadRadius: 2)
                        ]),
                    child: const Center(
                      child: Text(
                        "Click Here",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff000099)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                    height: 20, color: Colors.white, endIndent: 20, indent: 20),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  height: 150,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.green,
                            blurRadius: 11,
                            spreadRadius: 2)
                      ],
                      border:
                          Border.all(color: const Color(0xffFACC1D), width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Text(
                          text2,
                          style: const TextStyle(
                              shadows: [
                                Shadow(
                                    color: Colors.blue,
                                    offset: Offset(-0.8, -0.8))
                              ],
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                              color: Colors.red),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                        ),
                        width: 120,
                        height: 120,
                        decoration: const BoxDecoration(
                            // borderRadius: BorderRadius.all(Radius.circular(0)),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    "assets/images/correct Assinments1.jpg"))),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    setState(() {});
                    Navigator.pushNamed(context, CorrectScreen.routeName);
                  },
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image:
                                AssetImage("assets/images/correct button.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        border: Border.all(color: Colors.white, width: 2),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.blue,
                              blurRadius: 5,
                              spreadRadius: 2)
                        ]),
                    child: const Center(
                      child: Text(
                        "Click Here",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff000099)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                    height: 20, color: Colors.white, endIndent: 20, indent: 20),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  height: 150,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.green,
                            blurRadius: 11,
                            spreadRadius: 2)
                      ],
                      border:
                          Border.all(color: const Color(0xffFACC1D), width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Text(
                          text3,
                          style: const TextStyle(
                              shadows: [
                                Shadow(
                                    color: Colors.blue,
                                    offset: Offset(-0.8, -0.8))
                              ],
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                              color: Colors.red),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 40,
                        ),
                        width: 120,
                        height: 120,
                        decoration: const BoxDecoration(
                            // borderRadius: BorderRadius.all(Radius.circular(0)),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage("assets/images/chat Icon.png"))),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    setState(() {});
                    Navigator.pushNamed(context, ChatScreen.routeName);
                  },
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/images/Chat Icon 2.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        border: Border.all(color: Colors.white, width: 2),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.blue,
                              blurRadius: 5,
                              spreadRadius: 2)
                        ]),
                    child: const Center(
                      child: Text(
                        "Click Here",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff000099)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
