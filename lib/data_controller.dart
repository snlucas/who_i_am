import 'package:who_i_am/my_card.dart';

class DataController {
  MyCard _myCard;

  DataController(MyCard myCard) {
    this._myCard = myCard;
  }

  MyCard getMyCard() {
    return this._myCard;
  }
}
