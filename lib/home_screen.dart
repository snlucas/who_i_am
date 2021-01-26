import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:who_i_am/my_card.dart';
import 'bottom_bar.dart';
import 'edit_screen.dart';
import 'my_card_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _info = const [];
  MyCard _myCard = MyCard.blank();

  Future loadInfo() async {
    var content = await rootBundle.loadString('data/info.json');
    var collection = json.decode(content);

    setState(() {
      // Coleta de Dados
      _info = collection;
      var _userInfoNoIndex = _info[0];
      String userImage = 'PJ';
      String userName = _userInfoNoIndex['name'];
      String userOccupation = _userInfoNoIndex['occupation'];
      String userEMail = _userInfoNoIndex['email'];
      String userInstagram = _userInfoNoIndex['instagram'];
      String userLinkedin = _userInfoNoIndex['linkedin'];
      String userTwitter = _userInfoNoIndex['twitter'];
      String userWhatsapp = _userInfoNoIndex['whatsapp'];
      String userReddit = _userInfoNoIndex['reddit'];

      _myCard.setImg(userImage);
      _myCard.setName(userName);
      _myCard.setOccupation(userOccupation);
      _myCard.setEmail(userEMail);
      _myCard.setInstagram(userInstagram);
      _myCard.setLinkedin(userLinkedin);
      _myCard.setTwitter(userTwitter);
      _myCard.setWhatsapp(userWhatsapp);
      _myCard.setReddit(userReddit);
    });
  }

  @override
  void initState() {
    super.initState();
    loadInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyCardPage(
        myCard: _myCard,
      ),
      bottomNavigationBar: BottomBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditScreen(
                myCard: this._myCard,
                userInfo: _info,
              ),
            ),
          );
        },
        child: Icon(Icons.edit),
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
