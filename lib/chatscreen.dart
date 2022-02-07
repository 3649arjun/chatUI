import 'package:flutter/material.dart';
import 'package:message/messenger%20model.dart';
import 'package:message/usermodel.dart';


class chatscreen extends StatefulWidget {
  const chatscreen({Key? key,required this.user}) : super(key: key);
  final User user;

  @override
  _chatscreenState createState() => _chatscreenState();
}

class _chatscreenState extends State<chatscreen> {
  _buildchat(Message message,bool isMe)
  {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 15.0),
      margin: isMe ? EdgeInsets.only(top: 8.0,bottom: 8.0,left: 80.0):EdgeInsets.only(top: 8.0,bottom: 8.0,right: 80.0),

      decoration: isMe ? BoxDecoration(
          color:  Colors.yellow[50],

          borderRadius: BorderRadius.only(

        topLeft: Radius.circular(20.0),
        bottomLeft: Radius.circular(20.0))):

          BoxDecoration(
            color: Color(0xFFFFEFEE),
            borderRadius: BorderRadius.only(

          topRight: Radius.circular(20.0),
        bottomRight: Radius.circular(20.0),
      ),),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(message.time,style: TextStyle(
            color: Colors.blueGrey,
            fontSize:10.0,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 5.0,),
          Text(message.text,style: TextStyle(
              color: Colors.blueGrey,
              fontSize:15.0,
              fontWeight: FontWeight.w600),),
        ],
      ),

    );

  }
  _buildmssgcomposer(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      color: Colors.white,
      child: Row(
        children: [

               IconButton(onPressed: (){}, icon:Icon(Icons.photo)),



                 Expanded(
                    child: TextField(
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration.collapsed(hintText: 'Type your message ...... '),
                    ),
                  ),

                IconButton(onPressed: (){}, icon:Icon(Icons.send)),




        ],
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(widget.user.name),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.more_horiz))

        ],
        elevation: 0.0,
      ),
     body: GestureDetector(
       onTap: FocusScope.of(context).unfocus,
       child: Column(
         children: [
       Expanded(
         child: Container(
           height: 300.0,
         decoration: BoxDecoration(
         color: Colors.white,
           borderRadius: BorderRadius.only(
             topLeft: Radius.circular(30.0),
             topRight: Radius.circular(30.0),
           ),
         ),

           child: ClipRRect(
             borderRadius: BorderRadius.only(
               topLeft: Radius.circular(30.0),
               topRight: Radius.circular(30.0),
             ),
             child: ListView.builder(
               reverse: true,
               padding: EdgeInsets.only(top: 15.0),
               itemCount: messages.length,

                 itemBuilder: (BuildContext context, int Index){
                 final Message message = messages[Index];
                 bool isMe = message.sender.id == currentUser.id ;
                 return _buildchat(message,isMe);
                 }),
           )
       ),),
           _buildmssgcomposer(),
         ],


       ),
     ),

    );
  }
}
