import 'package:flutter/material.dart';

import 'mock_data.dart';
import 'friend_card.dart';

class FriendList extends StatelessWidget {
  const FriendList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: friendList.length,
      itemBuilder: (context, index) {
        return FriendCard(data: friendList[index]);
      },
      separatorBuilder: (context, index) {
        return Divider(
          height: .5,
          indent: 75,
          color: Color(0xFFDDDDDD),
        );
      },
    );
  }
}
