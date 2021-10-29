import 'package:flutter/material.dart';
import 'package:flutter_chati_bwa/pages/message.dart';
import 'package:flutter_chati_bwa/theme.dart';
import 'package:flutter_chati_bwa/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blueColor,
        appBar: AppBar(
          title: Text("Chaty Home Page"),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => MessagePage()));
        },
        backgroundColor: greenColor,
        child: Icon(Icons.add, size: 28,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/profile.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Riska Hayu Pangastuti',
                  style: TextStyle(fontSize: 20, color: whiteColor),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Travel Freelancer',
                  style:
                      TextStyle(color: whiteColor, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Friend",
                        style: title,
                      ),
                     
                     // ignore: prefer_const_constructors
                     ChatTile(
                       imageUrl: 'assets/images/friend1.png',
                       name: 'Khibar',
                       text: 'Sorry, you’re not my ty...',
                       date: 'Now',
                       unred: true
                     ),
                     ChatTile(
                       imageUrl: 'assets/images/friend2.png',
                       name: 'Diah',
                       text: 'I saw it clearly and mig...',
                       date: '2:30',
                       unred: false,
                     ),
                     SizedBox(height: 30,),
                     Text('Groups', style: title),
                     ChatTile(
                       imageUrl:'assets/images/group1.png' ,
                       name: 'Jakarta Fair',
                       text: 'Why does everyone ca...',
                       date: '11:11',
                       unred: false,
                     ),
                     ChatTile(
                       imageUrl:'assets/images/group2.png' ,
                       name: 'IBI',
                       text: 'Here We Can Go...',
                       date: '7:11',
                       unred: true,
                     ),
                     ChatTile(
                       imageUrl:'assets/images/group3.png' ,
                       name: 'Nurse',
                       text: 'How Are You Today',
                       date: '12:11',
                       unred: true,
                     ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
