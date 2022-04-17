import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/models/task_model.dart';
import 'package:state_managment/todo_app/data/tasks_data.dart';

class TaskWidget extends StatelessWidget {
  Function fun;
  Function del;
  Task task;
  TaskWidget(this.task, this.fun, this.del);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: task.isCompleted ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),

      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Text(task.title),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Checkbox(
              value: task.isCompleted,
              onChanged: (v) {
                fun(task);
              },
            ),
          ),
          Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                  onPressed: () {
                    del(task);
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ))),
        ],
      ),

      // child: Row(
      //   children: [
      //     CheckboxListTile(
      //       title: Text(task.title),
      //       value: task.isCompleted,
      //       onChanged: (v) {
      //         fun(task);
      //       },
      //     ),
      //     IconButton(onPressed: () {}, icon: Icon(Icons.delete))
      //   ],
      // ),
      // Container(
      //   child: Card(
      //     child: ListTile(
      //       trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
      //     ),
      //   ),
      // )
    );
  }
}
