import 'package:flutter/material.dart';
import 'package:flutter_chati_bwa/theme.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage(
      {Key? key, required this.imgUrl, required this.text, required this.date})
      : super(key: key);

  final String imgUrl;
  final String text;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30),
      height: 72,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            imgUrl,
            height: 40,
            width: 40,
          ),
          SizedBox(
            width: 8,
          ),
          Container(
              // width: 182,
              height: 72,
              decoration: BoxDecoration(
                  color: greyLight,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
                      padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                            top: 11.0, left: 20.0, right: 20.0)),
                    Text(text, style: title),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      date,
                      style: subtitle,
                    )
                  ],
                ),
              )
        ],
      ),
    );
  }
}
