import 'package:flutter/material.dart';
import 'package:message/recentchats.dart';
import 'CategorySelector.dart';
import 'favoritecontacts.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,


      appBar: AppBar(
        leading:IconButton(
            icon: Icon(Icons.menu),
          iconSize: 30.0,
            onPressed: (){},
        ),
        backgroundColor: Colors.redAccent,
        title: Text('Chats',
          style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions:<Widget>[
          IconButton(onPressed: (){},
              icon: Icon(Icons.search),
              iconSize: 38.0),

        ],
        elevation: 0.0,

      ),
   body: Column(
     children: [
     CategorySelector(),
       Expanded(
         child: Container(

           height: 100,

           decoration: BoxDecoration(
               color: Colors.yellow[50],
             borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))

           ),
             child: Column(
               children: [
                  contacts(),
               RecentChats(),
               ],


             )

         ),
       ),

     ],
   ),
    );
  }
}
