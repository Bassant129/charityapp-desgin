// ignore_for_file: unused_import, depend_on_referenced_packages, library_private_types_in_public_api, sort_child_properties_last, prefer_const_constructors

import 'dart:async';



import 'package:charityorganization_app/tabs/tasks/task.dart';
import 'package:charityorganization_app/tabs/tasks/task_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Taskfrom extends StatefulWidget {
  const Taskfrom({Key? key}) : super(key: key);
  @override
  _Taskfromstate createState() => _Taskfromstate();
}

class _Taskfromstate extends State<Taskfrom> {
  final _fromKey = GlobalKey<FormState>();
  final tasktitle = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
            right: -40.0,
            top: -40.0,
            child: CircleAvatar(
              child: Icon(Icons.close),
              backgroundColor: Colors.red,
            )),
        Form(
            key: _fromKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: tasktitle,
                    decoration:
                        InputDecoration(hintText: "add task title ....."),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {
                        if (_fromKey.currentState!.validate()) {
                          Navigator.of(context).pop();
                          context.read<TaskProvider>().addTask(Task(
                                tasktitle.text,
                                false,
                              ));
                        }
                      },
                      child: Text("Add task")),
                )
              ],
            ))
      ],
    ));
  }
}
