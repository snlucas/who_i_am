import 'package:flutter/material.dart';
import 'package:who_i_am/my_card.dart';
import 'package:who_i_am/my_card_edit_page.dart';
import 'package:who_i_am/bottom_bar.dart';

class EditScreen extends StatelessWidget {
  final MyCard myCard;
  final userInfo;

  const EditScreen({@required this.myCard, @required this.userInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyCardEditPage(
        myCard: myCard,
        userInfo: userInfo,
      ),
      bottomNavigationBar: BottomBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.save),
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
