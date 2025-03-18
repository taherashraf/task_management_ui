import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key, required this.title, required this.description, required this.date, required this.chipText, required this.chipColor,
  });

  final String title;
  final String description;
  final String date;
  final String chipText;
  final Color chipColor;

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
                  backgroundColor: chipColor,
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
}