import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            FutureBuilder(
                future: Hive.openBox("Jay"),
                builder: (context, snapshot) {

              return Text(snapshot.data!.get("name").toString());
            })
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            var box = await Hive.openBox("Jay");
            box.put("name", "Jay Gaudani");
            box.put("age", 21);
            print(box.get("name"));
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
