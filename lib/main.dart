import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/practice.dart';
import 'package:flutter_quiz_app/self_study.dart';
import 'start.dart';
void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {


  final GlobalKey<ScaffoldState> skey = GlobalKey<ScaffoldState>();

  void method() {
    skey.currentState?.showSnackBar(
        const SnackBar(content: Text('No Bookmarks Found!!!')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: skey,
      appBar: AppBar(title: const Text('QuizMania',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.cyan[900],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                accountName: Text('QUIZ MANIA', style: TextStyle(fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54)),
                accountEmail: Text('quizgame@gmail.com',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                decoration: BoxDecoration(color: Colors.teal)),
            const ListTile(title: Text('Settings'), trailing: Icon(Icons.settings),
                onTap: null),
            ListTile(title: const Text('Bookmarks'), trailing: const Icon(Icons.bookmark),
                onTap: () {
                  method();
                  Navigator.pop(context);
                })
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                child: Container(
                  child: Image.asset('assets/images/3.png', width: 150, height: 180),
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(20.0),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const Self_Study(),
                  ),);
                },
              ),
              InkWell(
                child: Container(
                  child: Image.asset('assets/images/2.png', width: 150, height: 180),
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 20.0,bottom: 20.0,right: 20.0),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Practice(),
                  ),);
                },
              ),
            ],
          ),
          InkWell(
            child: Container(
              child: Image.asset('assets/images/1.png', width: 180, height: 180),
              alignment: Alignment.center,
              margin: const EdgeInsets.only(bottom: 20.0),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => Start(),
              ),);
            },
          ),
            ],
          ),
    );
  }
}
