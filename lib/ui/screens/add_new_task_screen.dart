import 'package:flutter/material.dart';
import 'package:task_management_ui/ui/widgets/screen_background.dart';
import 'package:task_management_ui/ui/widgets/tm_app_bar.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {

  TextEditingController _subjectTEcontroller = TextEditingController();
  TextEditingController _descriptionTEcontroller = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: ScreenBackground(child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32),
                Text(
                  'Add New Task',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 24),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  controller: _subjectTEcontroller,
                  decoration: InputDecoration(hintText: 'Subject'),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  maxLines: 6,
                  keyboardType: TextInputType.emailAddress,
                  controller: _descriptionTEcontroller,
                  decoration: InputDecoration(
                      hintText: 'Description',
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                ),
                const SizedBox(height: 8),
                ElevatedButton(onPressed: _onTapSubmitButton, child: Icon(Icons.arrow_circle_right_outlined),),
              ],
            ),
          ),
        ),
      )),
    );
  }

  @override
  void dispose() {
    _subjectTEcontroller.dispose();
    _descriptionTEcontroller.dispose();
    super.dispose();
  }

  void _onTapSubmitButton (){

  }
}
