import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProfileShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).primaryColor,
      highlightColor: Colors.grey[100],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 30,
                        height: 8,
                        color: Colors.white,
                      ),
                      Container(
                        width: 30,
                        height: 8,
                        color: Colors.white,
                      ),
                      Container(
                        width: 30,
                        height: 8,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 100,
              height: 10,
              color: Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 150,
              height: 10,
              color: Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 150,
              height: 10,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
