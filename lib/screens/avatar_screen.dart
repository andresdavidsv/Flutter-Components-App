import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('SL'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
            maxRadius: 120,
            backgroundImage: NetworkImage(
                'https://variety.com/wp-content/uploads/2022/11/Screen-Shot-2022-11-02-at-8.33.52-AM.png')),
      ),
    );
  }
}
