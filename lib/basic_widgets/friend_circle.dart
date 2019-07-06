import 'package:flutter/material.dart';

class FriendCircle extends StatelessWidget {
  final FriendCircleViewModel data;

  const FriendCircle({
    Key key,
    this.data,
  }) : super(key: key);

  Widget renderComments() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(10),
      color: Color(0xFFF3F3F5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: this.data.comments.map((comment) {
          return Text.rich(
            TextSpan(
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF333333),
              ),
              children: [
                TextSpan(
                  text: comment.fromUser,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF636F80),
                  ),
                ),
                TextSpan(text: '：${comment.content}'),
              ]..insertAll(1, comment.source ? [TextSpan()] : [
                  TextSpan(text: ' 回复 '),
                  TextSpan(
                    text: comment.toUser,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF636F80),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              this.data.userImgUrl,
              width: 50,
              height: 50,
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 12)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  this.data.userName,
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF636F80),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 6)),
                Text(
                  this.data.saying,
                  style: TextStyle(
                    fontSize: 15,
                    height: 0.8,
                    color: Color(0xFF333333),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Image.network(
                    this.data.pic,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      this.data.publishTime,
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF999999),
                      ),
                    ),
                    Icon(
                      Icons.comment,
                      size: 16,
                      color: Color(0xFF999999),
                    ),
                  ],
                ),
                this.renderComments(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FriendCircleViewModel {
  /// 用户名
  final String userName;

  /// 用户头像地址
  final String userImgUrl;

  /// 说说
  final String saying;

  /// 图片
  final String pic;

  ///发布时间
  final String publishTime;

  /// 评论内容
  final List<Comment> comments;

  const FriendCircleViewModel({
    this.userName,
    this.userImgUrl,
    this.saying,
    this.pic,
    this.publishTime,
    this.comments,
  });
}

class Comment {
  /// 是否发起人
  final bool source;

  /// 评论者
  final String fromUser;

  /// 被评论者
  final String toUser;

  // 评论内容
  final String content;

  const Comment({
    this.source,
    this.fromUser,
    this.toUser,
    this.content,
  });
}
