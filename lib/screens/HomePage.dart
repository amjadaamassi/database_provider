import 'package:flutter/material.dart';
import 'package:gsg/DataBase/DataBaseHelper.dart';
import 'package:gsg/widgets/addTaskDialog.dart';

import 'AllTasks.dart';
import 'CompleteTasks.dart';
import 'InCompleteTasks.dart';





class HomePage extends StatelessWidget {
  var db = DBHelper();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            drawer: Drawer(),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AddTaskDialog(
                        db: db,
                      );
                    });
              },
              child: Icon(Icons.add),
            ),
            appBar: AppBar(
              title: Text('My Task'),
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: 'All Tasks',
                  ),
                  Tab(
                    text: 'complete Tasks',
                  ),
                  Tab(
                    text: 'incomplete  Tasks',
                  )
                ],
                isScrollable: true,
              ),
            ),
            body: TabBarView(
              children: [AllTasks(), CompleteTasks(), InCompleteTasks()],
            )));
  }
}
