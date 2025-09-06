import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key,
   required this.taskName,
   required this.taskCompleted,
   required this.onChanged,
   required this.deleteFunction,
   });

  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(left: 40.0, right: 40.0,  top: 20.0),
          child: Slidable(
          endActionPane: ActionPane(
              motion: ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: deleteFunction,
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  borderRadius: BorderRadius.circular(15),
                ),
              ],
            ),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Checkbox(
                    value: taskCompleted,
                    onChanged: onChanged,
                    checkColor: Colors.lightBlueAccent,
                    activeColor: Colors.white,
                  ),
                  Text(
                    taskName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      decoration: taskCompleted ? TextDecoration.lineThrough :
                      TextDecoration.none, 
                      decorationThickness: 2,
                    ),
                  ),
                ],
                    )
            ),
          ),
        );
  }
}