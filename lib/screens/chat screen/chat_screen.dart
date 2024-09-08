import 'package:education_gate/data_of_app/data.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});
  static String routeName = "ChatScreen";

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController message = TextEditingController();
  static int number = Messages.messageS.length;
  @override
  Widget build(BuildContext context) {
    number = Messages.messageS.length;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            if(DataApp.isTeacher)
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        image: DecorationImage(
                            image: AssetImage("assets/images/Student.jpg")
                        )
                    ),
                  ),
                  const SizedBox(width: 8,),
                  const Text("Student", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white))
                ],
              ),
            if(DataApp.isStudent)
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        image: DecorationImage(
                            image: AssetImage("assets/images/Profile Photo Teacher.jpg")
                        )
                    ),
                  ),
                  const SizedBox(width: 5,),
                  const Text("Teacher", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white))
                ],
              ),
          ],
        ),
        backgroundColor: const Color(0xff27C115),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )
        ),
      ),
      body: Center(
        child: Expanded(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 730,
                    child: ListView.builder(itemBuilder: (context, index){
                      return Column(
                        children: [
                          const SizedBox(height: 10,),
                          if(Messages.messageS[index] != "")
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/Student.jpg"),
                                        fit: BoxFit.contain
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(100))
                                    ),
                                  ),
                                  const SizedBox(width: 10,),
                                  Container(
                                    width: 310,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(colors: [Colors.red, Colors.purple, Colors.yellow]),
                                      color: Colors.deepPurpleAccent,
                                      borderRadius: const BorderRadius.only(bottomRight: Radius.circular(25), topRight: Radius.circular(25), topLeft: Radius.circular(25)),
                                      border: Border.all(color: Colors.black45, width: 2),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Text("Student: ${Messages.messageS[index]}", style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                                    ),
                                  ),
                                ],
                              )
                            ),
                          if(Messages.messageT[index] != "")
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Row(
                                children: [
                                  Container(
                                    width: 310,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(colors: [Colors.blue, Colors.green, Colors.white]),
                                      color: Colors.blue,
                                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25), bottomLeft: Radius.circular(25)),
                                      border: Border.all(color: const Color(0xff000099), width: 2),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Text("Teacher: ${Messages.messageT[index]}", style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                                    ),
                                  ),
                                  const SizedBox(width: 10,),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/Profile Photo Teacher.jpg")
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(100))
                                    ),
                                  )
                                ],
                              )
                            ),
                          // if(Messages.messageS[index] != "" && DataApp.isTeacher)
                          //   Padding(
                          //       padding: const EdgeInsets.only(right: 40),
                          //       child: Row(
                          //         children: [
                          //           Container(
                          //             height: 50,
                          //             width: 50,
                          //             decoration: BoxDecoration(
                          //                 image: DecorationImage(
                          //                     image: AssetImage("assets/images/Profile Photo Teacher.jpg"),
                          //                 ),
                          //                 borderRadius: BorderRadius.all(Radius.circular(100))
                          //             ),
                          //           ),
                          //           SizedBox(width: 10,),
                          //           Container(
                          //             width: 310,
                          //             height: 50,
                          //             decoration: BoxDecoration(
                          //               gradient: LinearGradient(colors: [Colors.red, Colors.purple]),
                          //               color: Colors.deepPurpleAccent,
                          //               borderRadius: BorderRadius.only(bottomRight: Radius.circular(25), topRight: Radius.circular(25), topLeft: Radius.circular(25)),
                          //               border: Border.all(color: Colors.black45, width: 2),
                          //             ),
                          //             child: Padding(
                          //               padding: const EdgeInsets.all(14.0),
                          //               child: Text("Teacher: ${Messages.messageT[index]}", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                          //             ),
                          //           ),
                          //         ],
                          //       )
                          //   ),
                          // if(Messages.messageS[index] != "" && DataApp.isTeacher)
                          //   Padding(
                          //       padding: const EdgeInsets.only(left: 40),
                          //       child: Row(
                          //         children: [
                          //           Container(
                          //             width: 310,
                          //             height: 50,
                          //             decoration: BoxDecoration(
                          //               gradient: LinearGradient(colors: [Colors.blue, Colors.green]),
                          //               color: Colors.blue,
                          //               borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25), bottomLeft: Radius.circular(25)),
                          //               border: Border.all(color: Color(0xff000099), width: 2),
                          //             ),
                          //             child: Padding(
                          //               padding: const EdgeInsets.all(14.0),
                          //               child: Text("Student: ${Messages.messageS[index]}", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                          //             ),
                          //           ),
                          //           SizedBox(width: 10,),
                          //           Container(
                          //             width: 50,
                          //             height: 50,
                          //             decoration: BoxDecoration(
                          //                 image: DecorationImage(
                          //                     image: AssetImage("assets/images/Student.jpg")
                          //                 ),
                          //                 borderRadius: BorderRadius.all(Radius.circular(100))
                          //             ),
                          //           )
                          //         ],
                          //       )
                          //   ),
                          const SizedBox(height: 10,),
                        ],
                      );
                    },
                      physics: const BouncingScrollPhysics(),
                      itemCount: number,),
                  ),
                ),
                Container(
                  width: 410,
                  height: 58,
                  child: Row(
                    children: [
                      Container(
                        width: 360,
                        height: 58,
                        child: TextFormField(
                          controller: message,
                          decoration: const InputDecoration(
                              hintText: "Enter your Message...",
                              filled: true,
                              fillColor: Colors.grey,
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                  borderSide: BorderSide(color: Colors.green, width: 2)
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.deepPurpleAccent, width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              )
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      InkWell(
                        onTap: (){
                          if(DataApp.isStudent){
                            Messages.messageS.add(message.text);
                            Messages.messageT.add("");
                          }
                          else{
                            Messages.messageT.add(message.text);
                            Messages.messageS.add("");
                          }
                          message.text = "";
                          setState(() {});
                        },
                        child: const Icon(Icons.send, size: 30, color: Colors.green, opticalSize: 5),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xffBCCCF3),
    );
  }
}
