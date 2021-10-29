import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_chati_bwa/theme.dart';
import 'package:flutter_chati_bwa/widgets/chat_message.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MessagePage'),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                      children: [
              Container(
                height: 115,
                decoration: BoxDecoration(
                  color: greyLight,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                ),
                padding: EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/group1.png',
                          height: 55,
                          width: 55,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jakarta Fair',
                              style: title,
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              '14.209',
                              style: subtitle,
                            )
                          ],
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/images/call_btn.png',
                          height: 55,
                          width: 55,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ChatMessage(
                imgUrl: 'assets/images/friend1.png',
                text: 'How Are You Guys ?',
                date: '2:30',
              ),
              SizedBox(
                height: 30,
              ),
              ChatMessage(
                  imgUrl: 'assets/images/friend3.png',
                  text: 'Find Here :p',
                  date: '3:11'),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 255,
                    height: 96,
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                    padding: EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Thinking about how to deal\nwith this client from hell...',
                              style: title,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '22:08',
                              style: subtitle,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Image.asset(
                    'assets/images/friend2.png',
                    width: 40,
                    height: 40,
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                    right: 30,
                  ))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ChatMessage(
                  imgUrl: 'assets/images/friend1.png',
                  text: 'Love U',
                  date: '23:11'),
                  SizedBox(height: 100,),
                  Container(
                    height: 54,
                    width: 315,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Text('Type Message...', style: subtitle,),
                        SizedBox(width: 150,),
                        Icon(Icons.send)
                      ],
                    ),
                  )
                      ],
                    ),
            )));
  }
}
