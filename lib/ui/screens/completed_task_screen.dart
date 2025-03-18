import 'package:flutter/material.dart';
import 'package:task_management_ui/ui/widgets/summary_card.dart';
import 'package:task_management_ui/ui/widgets/task_card.dart';

class CompletedTaskScreen extends StatefulWidget {
  const CompletedTaskScreen({super.key});

  @override
  State<CompletedTaskScreen> createState() => _CompletedTaskScreenState();
}

class _CompletedTaskScreenState extends State<CompletedTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: 6,
              itemBuilder: (context, index) {
                return TaskCard(title: 'Completed title will be Here',
                    description: 'Description will be here',
                    date: '18/3/25',
                    chipText: 'Completed',
                    chipColor: Colors.green);
              },
              separatorBuilder: (context, index) =>
              const SizedBox(height: 8,),),
          )
        ],
      ),
    );
  }
}


