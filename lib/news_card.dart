import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_feed/news.dart';
import 'package:home_feed/constant.dart';

class PrimaryCard extends StatelessWidget {
  final News news;
  PrimaryCard({this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(left: 15.0, right: 15.0, top: 30.0, bottom: 20.0),
      decoration: BoxDecoration(
          color: newsBackground,
          borderRadius: BorderRadius.circular(35.0),
          border: Border.all(color: blk, width: 1.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            news.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: titleCardhead,
          ),
          SizedBox(height: 20.0),
          Text(
            news.subtitle,
            overflow: TextOverflow.ellipsis,
            maxLines: 5,
            style: headlineSmall,
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.black,
                size: 24.0,
              ),

              SizedBox(width: 15.0),

              Icon(Icons.send, color: Colors.black, size: 24.0),

              SizedBox(width: 8.0),

              Icon(Icons.more_vert, color: Colors.black, size: 24.0),
              // Text(
              //   news.time,
              //   style: detailContent,
              // ),
              // SizedBox(width: 10.0),
              // CircleAvatar(
              //   radius: 5.0,
              //   backgroundColor: gry,
              // ),
              // SizedBox(width: 10.0),
              // Text("${news.estimate} min read", style: detailContent)
            ],
          )
        ],
      ),
    );
  }
}
