import 'package:flutter/material.dart';

class ViewAssignment extends StatefulWidget {
  const ViewAssignment({super.key});
  static String routeName = "View";
  @override
  State<ViewAssignment> createState() => _ViewAssignmentState();
}

class _ViewAssignmentState extends State<ViewAssignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("View"),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )
        ),
        backgroundColor: Colors.purpleAccent,
      ),
    );
  }
}
