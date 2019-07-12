import 'package:flutter/material.dart';

class DemoTabViewModel {
  final String title;
  final Widget widget;

  const DemoTabViewModel({
    this.title,
    this.widget,
  });
}

class DemoTabs extends StatelessWidget {
  final String title;
  final List<DemoTabViewModel> demos;
  final bool tabScrollable;
  final TabController tabController;

  DemoTabs({
    this.title,
    this.demos,
    this.tabScrollable = true,
    this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
        bottom: TabBar(
          controller: this.tabController,
          isScrollable: this.tabScrollable,
          tabs: this.demos.map((item) => Tab(text: item.title)).toList(),
        ),
      ),
      body: TabBarView(
        controller: this.tabController,
        children: this.demos.map((item) => item.widget).toList(),
      ),
    );
  }
}