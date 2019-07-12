import 'package:flutter/material.dart';

import 'service_item.dart';
import 'mock_data.dart';

class ServiceCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      padding: EdgeInsets.symmetric(vertical: 0),
      children: serviceList.map((item) => ServiceItem(data: item)).toList(),
    );
  }
}
