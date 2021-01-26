import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_icons.dart';
import 'package:who_i_am/my_card.dart';

class MyCardEditPage extends StatelessWidget {
  final MyCard myCard;
  final userInfo;

  const MyCardEditPage({@required this.myCard, @required this.userInfo});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            CircleAvatar(
              radius: 75.0,
              //backgroundColor: Colors.grey[800],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(myCard.getName().toUpperCase()),
                SizedBox(
                  width: 150.0,
                  height: 13.0,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Text(myCard.getOccupation().toString().toUpperCase()),
                Text(myCard.getEmail()),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ListTile(
                    leading: Icon(SocialMediaIcons.instagram),
                    title: Text(myCard.getInstagram()),
                  ),
                  ListTile(
                    leading: Icon(SocialMediaIcons.linkedin),
                    title: Text(myCard.getLinkedin()),
                  ),
                  ListTile(
                    leading: Icon(SocialMediaIcons.twitter),
                    title: Text(myCard.getTwitter()),
                  ),
                  ListTile(
                    leading: Icon(SocialMediaIcons.whatsapp),
                    title: Text(myCard.getWhatsapp()),
                  ),
                  ListTile(
                    leading: Icon(SocialMediaIcons.reddit),
                    title: Text(myCard.getReddit()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
