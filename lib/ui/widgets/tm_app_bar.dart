import 'package:flutter/material.dart';
import 'package:task_management_ui/ui/screens/update_profile_screen.dart';

class TMAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TMAppBar({
    super.key, this.fromProfileScreen,
  });

  final bool? fromProfileScreen;

  @override
  Widget build(BuildContext context) {

    TextTheme _textTheme = Theme.of(context).textTheme;
    return AppBar(
      backgroundColor: Colors.green,
      title: GestureDetector(
        onTap: () {
          if (fromProfileScreen ?? false) {
            return;
          }
          _onTapUpdateProfile(context);
        },
        child: Row(
          children: [
            CircleAvatar(
              radius: 16,
            ),
            const SizedBox(width: 8,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Rahim Hasan', style: _textTheme.bodyLarge?.copyWith(color: Colors.white)), //?. safe unwrap
                  Text('rahimhasan@gmail.com', style: _textTheme.bodySmall?.copyWith(color: Colors.white)),
                ],
              ),
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.logout, color: Colors.white,),),
          ],
        ),
      ),
    );
  }

  void _onTapUpdateProfile (BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> UpdateProfileScreen(),),);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}