import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
              imageUrl:
                  'https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&w=1600',
              name: 'Un hermoso paisaje'),
          SizedBox(height: 10),
          CustomCardType2(
              imageUrl:
                  'https://mymodernmet.com/wp/wp-content/uploads/2017/09/ty-newcomb-landscape-photography-6.jpg'),
          SizedBox(height: 10),
          CustomCardType2(
              imageUrl:
                  'https://mymodernmet.com/wp/wp-content/uploads/2017/09/ty-newcomb-landscape-photography-9.jpg'),
        ],
      ),
    );
  }
}
