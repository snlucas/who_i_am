import 'package:flutter/material.dart';
import 'package:who_i_am/my_card.dart';
import 'package:who_i_am/my_card_template.dart';

import 'package:who_i_am/bottom_bar.dart';

import 'data_controller.dart';

class EditScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DataController dc = DataController(MyCard());
    return Scaffold(
      body: MyCardTemplate(dc),
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
