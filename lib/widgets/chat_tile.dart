import 'package:flutter/material.dart';
import 'package:flutter_chati_bwa/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.text,
      required this.date, this.unred})
      : super(key: key);

  final String imageUrl;
  final String name;
  final String text;
  final String date;
  final unred;

  // ChatTile({this.imageUrl, this.name, this.text, this.date});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
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
                name,
                style: title,
              ),
              Text(
                text,
                style: unred ? subtitle.copyWith(color: blackColor) : subtitle
              )
            ],
          ),
          Spacer(),
          Text(
            date,
            style: subtitle,
          )
        ],
      ),
    );
  }
}
