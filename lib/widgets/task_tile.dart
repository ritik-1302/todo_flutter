import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {


  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallBack;
  final Function longPressCallback;

   TaskTile({this.isChecked,this.taskTitle,this.checkboxCallBack,this.longPressCallback});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(taskTitle,style: TextStyle(decoration:isChecked?TextDecoration.lineThrough : null),),
      trailing: Checkbox(
    activeColor: Colors.lightBlueAccent,
    value:isChecked,
    onChanged:checkboxCallBack,
    // onChanged:toggleCheckboxState
      )
    ,);

  }
}



