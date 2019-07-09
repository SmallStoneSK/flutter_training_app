import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {

  final NewsViewModel data;

  const NewsCard({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  this.data.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF333333),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 3)),
                Row(
                  children: <Widget>[
                    Text(
                      '${this.data.source}  ${this.data.comments}评论',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF999999),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 16)),
          Image.network(
            this.data.coverImgUrl,
            width: 100,
            height: 60,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

class NewsViewModel {
  /// 新闻标题
  final String title;

  /// 来源
  final String source;

  /// 评论数量
  final int comments;

  /// 新闻配图
  final String coverImgUrl;

  const NewsViewModel({
    this.title,
    this.source,
    this.comments,
    this.coverImgUrl,
  });
}
