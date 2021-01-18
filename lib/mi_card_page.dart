import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_icons.dart';

class MiCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 75.0),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: CircleAvatar(
                  radius: 75.0,
                  backgroundColor: Colors.grey[800],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('NAME'),
                    SizedBox(
                      width: 150.0,
                      height: 13.0,
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    Text('OCCUPATION'),
                    Text('EMAIL'),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        child: ListTile(
                          leading: Icon(SocialMediaIcons.instagram),
                          title: Text('@'),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          leading: Icon(SocialMediaIcons.linkedin),
                          title: Text('in/'),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          leading: Icon(SocialMediaIcons.twitter),
                          title: Text('@'),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          leading: Icon(SocialMediaIcons.whatsapp),
                          title: Text('+55'),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          leading: Icon(SocialMediaIcons.reddit),
                          title: Text('user/'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
