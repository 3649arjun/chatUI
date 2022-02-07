import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({Key? key}) : super(key: key);

  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectindex = 0;
  final List<String>categories =['Messages','Online','Groups','Requests'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Colors.redAccent,

        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
        itemBuilder: (BuildContext context,int Index)
        {

            return GestureDetector(
              onTap: (){
               setState(() {
                 selectindex=Index;
               });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 30.0),
                child: Text(categories[Index],
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Index == selectindex ? Colors.white: Colors.white30,
                  letterSpacing: 1.0),),
              ),
            );


        },


        ),



    );

}}
