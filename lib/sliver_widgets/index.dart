import 'package:flutter/material.dart';

import 'basic_usage.dart';
import 'float_usage.dart';
import 'pinned_usage.dart';
import 'snap_usage.dart';
import 'sticky_usage.dart';
import 'custom_sliver_header_usage.dart';

final List<DemoViewModal> demos = [
  DemoViewModal(
    title: 'Sliver - Grid和List混合使用',
    demo: BasicDemo(title: 'Sliver - Grid和List混合使用'),
  ),
  DemoViewModal(
    title: 'Sliver - float效果',
    demo: FloatDemo(title: 'Sliver - float效果'),
  ),
  DemoViewModal(
    title: 'Sliver - snap效果',
    demo: SnapDemo(title: 'Sliver - snap效果'),
  ),
  DemoViewModal(
    title: 'Sliver - pinned效果',
    demo: PinnedDemo(title: 'Sliver - pinned效果'),
  ),
  DemoViewModal(
    title: 'Sliver - sticky效果',
    demo: StickyDemo(title: 'Sliver - sticky效果'),
  ),
  DemoViewModal(
    title: 'Sliver - 自定义效果',
    demo: CustomSliverHeaderDemo(),
  ),
];

class DemoViewModal {
  final String title;
  final Widget demo;

  DemoViewModal({this.title, this.demo});
}

class SliverWidgetsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliver系列组件'),
      ),
      body: ListView.builder(
        itemCount: demos.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 13),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => demos[index].demo,
                  ),
                );
              },
              child: Text(demos[index].title),
            ),
          );
        },
      ),
    );
  }
}
