import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_course/router/router.gr.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> contents = [
    "Get Holiday List",
    "API Pagination",
    "Social Share",
    "API POST Example",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: ListView.builder(
        itemCount: contents.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contents[index]),
            onTap: () {
              switch (index) {
                case 0:
                  break;
                case 1:
                  break;
                case 2:
                  AutoRouter.of(context).push(SocialShareRoute());
                  break;
                case 3:
                  break;
                default:
              }
            },
          );
        },
      )),
    );
  }
}
