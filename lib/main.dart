import 'package:flutter/material.dart';

import 'basic_widgets/index.dart';
import 'list_view/index.dart';
import 'grid_view/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        'basic_widgets': (context) => BasicWidgetsDemo(),
        'list_view': (context) => ListViewDemo(),
        'grid_view': (context) => GridViewDemo(),
      },
    );
  }
}

/// 颜色
const List<Color> COLORS = [
  Color(0xFFFF4777),
  Color(0xFFCA6924),
  Color(0xFF00BC12),
  Color(0xFF725E82),
  Color(0xFFFFA400),
  Color(0xFFDD7160),
  Color(0xFF5D513C),
  Color(0xFFD180D2),
];

/// 例子
const DEMOS = [
  Demo(
    title: '基础组件',
    description: '容器、行、列、文字、图片、图标等最常用组件，是构成界面的基础',
    routeName: 'basic_widgets',
  ),
  Demo(
    title: 'ListView组件',
    description: '滚动型容器列表组件，支持下拉刷新，上拉加载等交互操作',
    routeName: 'list_view'
  ),
  Demo(
    title: 'GridView组件',
    description: '',
    routeName: 'grid_view'
  )
];

class Demo {
  /// 标题
  final String title;

  /// 描述
  final String description;

  /// 路由名
  final String routeName;

  const Demo({
    this.title,
    this.description,
    this.routeName,
  });
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Training'),
      ),
      body: GridView.builder(
        itemCount: DEMOS.length,
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1.0,
        ),
        itemBuilder: (context, index) {
          return FlatButton(
            onPressed: () => Navigator.pushNamed(context, DEMOS[index].routeName),
            color: COLORS[index % COLORS.length],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Text(
                      DEMOS[index].title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    DEMOS[index].description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
