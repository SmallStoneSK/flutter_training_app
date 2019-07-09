import 'package:flutter/material.dart';

import 'mock_data.dart';
import 'news_card.dart';

class PullUpLoadMoreList extends StatefulWidget {
  const PullUpLoadMoreList({Key key}) : super(key: key);

  @override
  _PullUpLoadMoreListState createState() => _PullUpLoadMoreListState();
}

class _PullUpLoadMoreListState extends State<PullUpLoadMoreList> {
  bool isLoading = false;
  ScrollController scrollController = ScrollController();
  List<NewsViewModel> list = List.from(newsList);

  @override
  void initState() {
    super.initState();
    this.scrollController.addListener(() {
      if (
        !this.isLoading &&
        this.scrollController.position.pixels >= this.scrollController.position.maxScrollExtent
      ) {
        setState(() {
          this.isLoading = true;
          this.loadMoreData();
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    this.scrollController.dispose();
  }

  Future loadMoreData() {
    return Future.delayed(Duration(seconds: 1), () {
      setState(() {
        this.isLoading = false;
        this.list.addAll(newsList);
      });
    });
  }

  Widget renderBottom() {
    if(this.isLoading) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '努力加载中...',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF333333),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 10)),
            SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 3),
            ),
          ],
        ),
      );
    } else {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        child: Text(
          '上拉加载更多',
          style: TextStyle(
            fontSize: 15,
            color: Color(0xFF333333),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: this.scrollController,
      itemCount: this.list.length + 1,
      separatorBuilder: (context, index) {
        return Divider(height: .5, color: Color(0xFFDDDDDD));
      },
      itemBuilder: (context, index) {
        if (index < this.list.length) {
          return NewsCard(data: this.list[index]);
        } else {
          return this.renderBottom();
        }
      },
    );
  }
}
