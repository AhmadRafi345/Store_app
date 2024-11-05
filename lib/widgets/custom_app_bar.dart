import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String avatarUrl; // Add this parameter

  CustomAppBar({required this.title, required this.avatarUrl});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      leading: Row(
        children: [
          SizedBox(width: 8), // Adjust spacing
          CircleAvatar(
            backgroundImage: AssetImage(avatarUrl), // Use the avatarUrl
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.more_vert, color: Colors.black),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
