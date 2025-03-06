import 'package:flutter/material.dart';
import '../../widgets/profile_option.dart';
import 'chat_ai_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Column(
        children: [
          ProfileOption(
            icon: Icons.person,
            title: "Edit Profile",
            onTap: () {},
          ),
          ProfileOption(icon: Icons.settings, title: "Settings", onTap: () {}),
          ProfileOption(
            icon: Icons.chat,
            title: "Chat with AI",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ChatAIScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
