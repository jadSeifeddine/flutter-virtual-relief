import 'package:flutter/material.dart';
import '../../widgets/physio_card.dart';

class PhysiotherapistsScreen extends StatelessWidget {
  final List<Map<String, String>> physiotherapists = [
    {
      "name": "Dr. Emily Reid",
      "specialty": "Sports Therapy",
      "image": "/home/user/myapp/assets/images/physio1.jpg",
    },
    {
      "name": "Dr. Michael Chen",
      "specialty": "Post-Op Recovery",
      "image": "/home/user/myapp/assets/images/physio2.jpg",
    },
  ];

  PhysiotherapistsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Physiotherapists")),
      body: ListView.builder(
        itemCount: physiotherapists.length,
        itemBuilder: (context, index) {
          return PhysioCard(
            name: physiotherapists[index]["name"]!,
            specialty: physiotherapists[index]["specialty"]!,
            image: physiotherapists[index]["image"]!,
          );
        },
      ),
    );
  }
}
