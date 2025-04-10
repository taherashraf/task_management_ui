import 'package:flutter/material.dart';
import 'package:task_management_ui/ui/widgets/summary_card.dart';
import 'package:task_management_ui/ui/widgets/task_card.dart';

class CanceledTaskScreen extends StatefulWidget {
  const CanceledTaskScreen({super.key});

  @override
  State<CanceledTaskScreen> createState() => _CanceledTaskScreenState();
}

class _CanceledTaskScreenState extends State<CanceledTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: 6,
              itemBuilder: (context, index) {
                return TaskCard(title: 'Canceled title will be Here',
                    description: 'Description will be here',
                    date: '18/3/25',
                    chipText: 'Canceled',
                  taskStatus: TaskStatus.cancelled,);
              },
              separatorBuilder: (context, index) =>
              const SizedBox(height: 8,),),
          )
        ],
      ),
    );
  }
}


