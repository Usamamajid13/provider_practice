import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/change_notifier_model.dart';

import 'new_screen.dart';

void main() => runApp(MyApp());
GlobalKey<NavigatorState> newKey = GlobalKey<NavigatorState>();
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyModel(),
      child: MaterialApp(
        navigatorKey: newKey,
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              centerTitle: true,
              title: const Text("Provider Practice"),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Consumer<MyModel>(
                  builder: (context, myModel, child) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const NewClass()),
                        );                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: const Text("Changing Value"),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.red,
                        ),
                      ),
                    );
                  },
                ),
              ],
            )),
      ),
    );
  }
}

final nextScreenRoute = "/newScreenRoute";