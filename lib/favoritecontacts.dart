 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:message/chatscreen.dart';
import 'messenger model.dart';

class contacts extends StatefulWidget {
  const contacts({Key? key}) : super(key: key);

  @override
  _contactsState createState() => _contactsState();
}

class _contactsState extends State<contacts> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text('Favorite Contacts ',
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),),
                    IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz_outlined),iconSize: 30.0,),


                  ],
                ),
              ),
              Container(
                height: 120.0,
                color: Colors.yellow[50],
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: favorites.length,
                  itemBuilder: (BuildContext context, int Index)
                  {
                    return  GestureDetector(
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (_)=>chatscreen(user: favorites[Index])));},
                      child: Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: AssetImage(favorites[Index].imageUrl),
                            ),
                            SizedBox(height: 10.0,),
                            Text(favorites[Index].name,
                            style: TextStyle(
                              fontSize: 10.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0
                            ),),
                          ],
                        ),
                      ),);

                  },
                ),
              )
            ],
          )
      ),
    );
  }
}





