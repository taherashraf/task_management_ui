import 'package:flutter/material.dart';


enum TaskStatus {
  sNew,
  progress,
  completed,
  cancelled,
}

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key, required this.title, required this.description, required this.date, required this.chipText, required this.taskStatus,
  });

  final TaskStatus taskStatus;

  final String title;
  final String description;
  final String date;
  final String chipText;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('$title',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
            Text('$description'),
            Text('$date'),
            Row(
              children: [
                Chip(label: Text(
                  '$chipText', style: TextStyle(color: Colors.white),),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  backgroundColor: _getColorStatus(),
                  side: BorderSide.none,
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.delete,),),
                IconButton(onPressed: () {}, icon: Icon(Icons.edit,),),
              ],
            )
          ],
        ),
      ),
    );
  }

  Color _getColorStatus (){
    late Color color;
    switch(taskStatus){
      case TaskStatus.sNew:
        color = Colors.blue;
      case TaskStatus.progress:
        color = Colors.purple;
      case TaskStatus.completed:
        color = Colors.green;
      case TaskStatus.cancelled:
        color = Colors.red;
    }
    return color;

  }

}