import 'package:flutter/material.dart';
import 'package:task_management_ui/ui/widgets/summary_card.dart';
import 'package:task_management_ui/ui/widgets/task_card.dart';

class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: 6,
              itemBuilder: (context, index) {
                return TaskCard(title: 'Progress title will be Here',
                    description: 'Description will be here',
                    date: '18/3/25',
                    chipText: 'Progress',
                    chipColor: Colors.purple);
              },
              separatorBuilder: (context, index) =>
              const SizedBox(height: 8,),),
          )
        ],
      ),
    );
  }
}


