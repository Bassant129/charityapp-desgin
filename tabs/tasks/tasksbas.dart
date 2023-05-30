

import 'package:charityorganization_app/colors.dart';
import 'package:charityorganization_app/tabs/tasks/task_provider.dart';
import 'package:charityorganization_app/tabs/tasks/taskfrom.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class dontors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskProvider = context.watch<TaskProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Donors'),
      ),
      body: Container(
        color: aColor,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(children: [
                  Text(
                    "welcome sir ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 30.0),
                  ),
                ]),
              ),
              FloatingActionButton(
                onPressed: () => showDialog(
                  builder: (BuildContext context) {
                    return Taskfrom();
                  },
                  context: context,
                ),
                child: Icon(Icons.add),
                backgroundColor: Colors.pink,
              ),
              Expanded(
                child: Container(
                  child: Container(
                    child: ListView.builder(
                        itemCount: taskProvider.tasks.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Dismissible(
                              key: Key(index.toString()),
                              background: Container(
                                color: Theme.of(context).errorColor,
                                child: Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 250),
                              ),
                              direction: DismissDirection.endToStart,
                              onDismissed: (direction) {
                                taskProvider.removeTask(index);
                              },
                              child: ListTile(
                                title: Text(
                                  taskProvider.tasks[index].title,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                trailing: Image(
                                  image: taskProvider.tasks[index].completed
                                      ? AssetImage('images/yes.png')
                                      : AssetImage('images/no.png'),
                                ),
                                onTap: () {
                                  taskProvider.makeTaskcomplete(index);
                                },
                              ),
                            ),
                          );
                        }),
                  ),
                  margin: EdgeInsets.only(left: 16, right: 16),
                ),
                flex: 5,
              )
            ]),
      ),
    );
  }
}
