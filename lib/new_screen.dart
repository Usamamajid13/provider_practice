import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/change_notifier_model.dart';
import 'package:provider_practice/main.dart';

class NewClass extends StatefulWidget {
  const NewClass({Key? key}) : super(key: key);

  @override
  _NewClassState createState() => _NewClassState();
}

class _NewClassState extends State<NewClass> {
  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Provider.of<MyModel>(newKey.currentContext!,listen: false).doSomething();
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Provider Practice"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Consumer<MyModel>(builder: (context,mymodel,child){
            return Container(
              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.1),
              alignment: Alignment.center,
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(mymodel.newImage),fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15),
              ),
            );
          },
          )

        ],
      ),
    );
  }
}
