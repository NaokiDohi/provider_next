import 'package:flutter/material.dart';

class BlogListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        InkWell(
          child: Text(
            'I was born',
            style: TextStyle(color: Colors.blueAccent.shade700),
          ),
          onTap: () {},
        ),
        SizedBox(height: 10),
        SelectableText(
          'February 9, 1999',
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
