import 'package:flutter/material.dart';

class TMAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TMAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    TextTheme _textTheme = Theme.of(context).textTheme;
    return AppBar(
      backgroundColor: Colors.green,
      title: Row(
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}