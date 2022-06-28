import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/start.dart';

import 'main.dart';
class Self_Study extends StatelessWidget {
  const Self_Study({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Study Time!!'),
        backgroundColor: Colors.cyan[900],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(title: const Text('Home Page'),
              tileColor: Colors.cyan[100],
              trailing: const Icon(Icons.home),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => MyApp(),
                ),);
              },
            ),
            ListTile(title: const Text('Take a test'),
                tileColor: Colors.cyan[100],
                trailing: const Icon(Icons.restart_alt),
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Start(),
                  ),);
                })
          ],
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.only(top:30.0),
        child: ListView(
          children: const <Widget>[

            ListTile(title: const Text("1. Grand Central Terminal, Park Avenue, New York is the world's"),),
            ListTile(title: Text("------largest railway station",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,),
            ),

            ListTile(title: const Text("2. Entomology is the science that studies"),),
            ListTile(title: Text("------Insects",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,),
            ),

            ListTile(title: const Text("2. Entomology is the science that studies"),),
            ListTile(title: Text("------Insects",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,),
            ),

            ListTile(title: const Text("3. Eritrea, which became the 182nd member of the UN in 1993, is in the continent of"),),
            ListTile(title: Text("------Africa",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,),
            ),

            ListTile(title: const Text("4. Garampani sanctuary is located at"),),
            ListTile(title: Text("------Diphu, Assam",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,),
            ),

            ListTile(title: const Text("5.Hitler party which came into power in 1933 is known as"),),
            ListTile(title: Text("------Nazi Party",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,),
            ),

            ListTile(title: const Text("6.Kiran Bedi received Magsaysay Award for government service in"),),
            ListTile(title: Text("------1994",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,),
            ),

            ListTile(title: const Text("7.Logarithm tables were invented by"),),
            ListTile(title: Text("------John Napier",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,),
            ),

            ListTile(title: const Text("8. With which sport is the Jules Rimet trophy associated?"),),
            ListTile(title: Text("------FootBall",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,),
            ),

            ListTile(title: const Text("9. Joule is the unit of"),),
            ListTile(title: Text("------Energy",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,),
            ),

            ListTile(title: const Text("10. Milkha Singh Stood ____ in 1960 Olympics, in Athletics."),),
            ListTile(title: Text("------fourth in 400m final",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,),
            ),

            ListTile(title: const Text("11. Kathakali, Mohiniatam and Ottamthullal are the famous dances of"),),
            ListTile(title: Text("------Kerala",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,),
            ),

            ListTile(title: const Text("12. Lala Lajpat Rai is also known as"),),
            ListTile(title: Text("------Sher-e-Punjab and Punjab Kesari",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,),
            ),

            ListTile(title: const Text("13. Lakshmibai National College of Physical Education is located at"),),
            ListTile(title: Text("------Gwalior",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,),
            ),

            ListTile(title: const Text("14. Ludhiana is situated on ____ river."),),
            ListTile(title: Text("------Satluj",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,),
            ),

            ListTile(title: const Text("15. Kiran Bedi is"),),
            ListTile(title: Text("------first woman IPS officer",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,),
            ),

          ],
        ),
      ),
    );
  }
}
