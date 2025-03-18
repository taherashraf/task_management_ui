import 'package:flutter/material.dart';
import 'package:task_management_ui/ui/widgets/summary_card.dart';
import 'package:task_management_ui/ui/widgets/task_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildSummarySection(),
          Expanded(
            child: ListView.separated(
              itemCount: 6,
              itemBuilder: (context, index) {
                return TaskCard(title: 'New title will be Here',
                    description: 'Description will be here',
                    date: '18/3/25',
                    chipText: 'New',
                    chipColor: Colors.blue);
              },
              separatorBuilder: (context, index) =>
              const SizedBox(height: 8,),),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildSummarySection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SummaryCard(title: 'New', count: 12),
          SummaryCard(title: 'Progress', count: 14),
          SummaryCard(title: 'Completed', count: 17),
          SummaryCard(title: 'Canceled', count: 13),
        ],
      ),
    );
  }
}


