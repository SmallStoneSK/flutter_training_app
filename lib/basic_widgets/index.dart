import 'package:flutter/material.dart';

import 'mock_data.dart';
import 'pet_card.dart';
import 'credit_card.dart';
import 'friend_circle.dart';
import '../common/demo_tabs.dart';

List<DemoTabViewModel> demos = [
  DemoTabViewModel(title: '宠物卡片', widget: PetCard(data: petCardData)),
  DemoTabViewModel(title: '银行卡', widget: CreditCard(data: creditCardData)),
  DemoTabViewModel(title: '微信朋友圈', widget: FriendCircle(data: friendCircleData)),
].map((item) => DemoTabViewModel(
  title: item.title,
  widget: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[item.widget],
  ),
)).toList();

class BasicWidgetsDemo extends StatefulWidget {
  @override
  _BasicWidgetsDemoState createState() => _BasicWidgetsDemoState();
}

class _BasicWidgetsDemoState extends State<BasicWidgetsDemo>
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
      title: '基础组件',
      demos: demos,
      tabScrollable: false,
      tabController: this.tabController,
    );
  }
}
