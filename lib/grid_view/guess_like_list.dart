import 'package:flutter/material.dart';

import 'mock_data.dart';
import 'programme.dart';

class GuessLikeList extends StatelessWidget {
  Widget renderHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '猜你喜欢',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF333333),
            ),
          ),
          Row(
            children: <Widget>[
              Text(
                '更多',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF666666),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                size: 20,
                color: Color(0xFF999999),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget renderBody() {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: programmeList.length,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        return Programme(data: programmeList[index]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          this.renderHeader(),
          this.renderBody(),
        ],
      ),
    );
  }
}
