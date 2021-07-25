import 'package:flutter/material.dart';
import 'package:provider_next/constrained_center.dart';
import 'package:provider_next/blog_list_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 612,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstrainedCenter(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    // 'https://i.ibb.co/ZKkSW4H/profile-image.png',
                    'https://avatars.githubusercontent.com/u/60123878?v=4',
                  ),
                  radius: 72,
                ),
              ),
              SizedBox(height: 18),
              ConstrainedCenter(
                child: SelectableText(
                  'Naok!',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              SizedBox(height: 40),
              SelectableText(
                'Hello, I\'m Naoki Dohi. I\'m  graduate students and Flutter a developer.',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              SizedBox(height: 40),
              SelectableText(
                'Blog',
                style: Theme.of(context).textTheme.headline2,
              ),
              BlogListTile(),
            ],
          ),
        ),
      ),
    );
  }
}
