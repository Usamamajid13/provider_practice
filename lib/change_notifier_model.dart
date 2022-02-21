import 'package:flutter/material.dart';

class MyModel with ChangeNotifier {
  String someValue = 'Hello';
  Color col = Colors.red;
  var height = 50.0;
  var width = 100.0;
  var itemCount = 10;
  var newImage = "https://cdn.pixabay.com/photo/2017/08/30/01/05/milky-way-2695569_960_720.jpg";
  void doSomething() {
    someValue = someValue == 'Hello' ? "EHEH" : "Hello";
    col = col == Colors.red ? Colors.blue : Colors.red;
    newImage = newImage == "https://cdn.pixabay.com/photo/2017/08/30/01/05/milky-way-2695569_960_720.jpg" ? "https://www.xtrafondos.com/wallpapers/estrellas-de-la-via-lactea-4047.jpg":"https://cdn.pixabay.com/photo/2017/08/30/01/05/milky-way-2695569_960_720.jpg";
    print("Dummy Image "+ newImage.toString());
    height = height == 50 ? 40 : 50;
    width = width == 100 ? 120 : 100;
    itemCount = itemCount == 10 ? 5 : 10;
    notifyListeners();
  }
}