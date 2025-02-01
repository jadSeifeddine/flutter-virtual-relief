import 'package:flutter/material.dart';

class PhysioCard extends StatelessWidget {
  final String name, specialty, image;

  const PhysioCard({super.key, required this.name, required this.specialty, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: 30,
        ),
        title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(specialty),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.orange),
        onTap: () {
          // Can navigate to physiotherapist details if needed
        },
      ),
    );
  }
}
