import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/screen/add_task_screen.dart';
import 'package:todo_flutter/widgets/tasks_list.dart';
import 'package:todo_flutter/models/task_data.dart';

class TasksScreen extends StatelessWidget {





  @override



  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(context: context, builder:(context)=>AddTaskScreen());
        },
      ),
      backgroundColor:Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.0,left:30,right:30,bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    child: Icon(Icons.list,size:30 ,
                    color: Colors.lightBlueAccent,),
                backgroundColor:Colors.white ,
                radius: 30.0,),
                SizedBox(height: 10,),
                Text('Todoey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w700
                ),),
                Text('${Provider.of<TaskData>(context).tasks.length}  Tasks',
                style: TextStyle(
                  color:Colors.white,
                  fontSize: 18,
                ),),


              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),


              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
              ),
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}





