import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album,
              color: AppTheme.primary,
            ),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Voluptate reprehenderit officia veniam eu ut reprehenderit culpa commodo sint eu.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('OK'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
