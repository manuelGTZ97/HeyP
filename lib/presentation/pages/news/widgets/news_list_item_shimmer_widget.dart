import 'package:flutter/material.dart';

class NewsListItemShimmerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 13.5,
        horizontal: 15,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 100,
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 14,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 5),
                  height: 12,
                  color: Colors.white,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 5, right: 30),
                  height: 12,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
