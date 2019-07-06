import 'package:flutter/material.dart';

import 'pet_card.dart';
import 'credit_card.dart';

const PetCardViewModel petCardData = PetCardViewModel(
  coverUrl: 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1425538345,901220022&fm=26&gp=0.jpg',
  userImgUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1699287406,228622974&fm=26&gp=0.jpg',
  userName: '大米要煮小米粥',
  description: '小米 | 我家的小仓鼠',
  publishTime: '12:59',
  topic: '萌宠小屋',
  publishContent: '今天带着小VIVI去了爪子生活体验馆，好多好玩的小东西都想带回家！',
  replies: 356,
  likes: 258,
  shares: 126,
);

const CreditCardViewModel creditCardData = CreditCardViewModel(
  bankName: '招商银行',
  bankLogoUrl: 'assets/pics/bank_zs.png',
  cardType: '储蓄卡',
  cardNumber: '6210  ****  ****  1426',
  cardColors: [Color(0xFFF17B68), Color(0xFFE95F66)],
  validDate: '10/27',
);

class BasicWidgetsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('基础组件'),
      ),
      body: ListView(
        children: <Widget>[
          PetCard(data: petCardData),
          CreditCard(data: creditCardData),
        ],
      ),
    );
  }
}
