import 'package:flutter/material.dart';

import 'normal_usage.dart';
import 'builder_usage.dart';
import 'separated_usage.dart';
import 'pull_down_refresh_usage.dart';
import 'pull_up_load_more_usage.dart';

const List<TabViewModel> tabs = [
  TabViewModel(
    title: '普通用法',
    widget: NormalList(),
  ),
  TabViewModel(
    title: 'builder用法',
    widget: SubscribeAccountList(),
  ),
  TabViewModel(
    title: 'separated用法',
    widget: FriendList(),
  ),
  TabViewModel(
    title: '下拉刷新用法',
    widget: PullDownRefreshList(),
  ),
  TabViewModel(
    title: '上拉加载用法',
    widget: PullUpLoadMoreList(),
  ),
];

class TabViewModel {
  final String title;
  final Widget widget;

  const TabViewModel({
    this.title,
    this.widget,
  });
}

class ListViewDemo extends StatefulWidget {
  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    this.tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    this.tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView组件'),
        bottom: TabBar(
          isScrollable: true,
          controller: this.tabController,
          tabs: tabs.map((item) {
            return Tab(text: item.title);
          }).toList(),
        ),
      ),
      body: TabBarView(
        controller: this.tabController,
        children: tabs.map((item) {
          return item.widget;
        }).toList(),
      ),
    );
  }
}
