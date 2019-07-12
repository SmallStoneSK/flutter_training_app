import 'package:flutter/material.dart';

import '../common/demo_tabs.dart';
import 'color_grids.dart';
import 'service_categories.dart';
import 'guess_like_list.dart';

List<DemoTabViewModel> demos = [
  DemoTabViewModel(title: '彩色格子', widget: ColorGrids()),
  DemoTabViewModel(title: '美团 - 服务菜单', widget: ServiceCategories()),
  DemoTabViewModel(title: '喜马拉雅 - 相声列表', widget: GuessLikeList()),
];

class GridViewDemo extends StatefulWidget {
  @override
  _GridViewDemoState createState() => _GridViewDemoState();
}

class _GridViewDemoState extends State<GridViewDemo>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    this.tabController = new TabController(length: demos.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    this.tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DemoTabs(
      demos: demos,
      title: 'GridView组件',
      tabController: this.tabController,
    );
  }
}
