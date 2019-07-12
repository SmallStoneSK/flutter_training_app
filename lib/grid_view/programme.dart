import 'package:flutter/material.dart';

class Programme extends StatelessWidget {
  final ProgrammeViewModel data;

  const Programme({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double coverSize = 110;
    return Column(
      children: <Widget>[
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              fit: StackFit.passthrough,
              children: <Widget>[
                Image.network(
                  this.data.coverImgUrl,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  height: coverSize / 2,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Color.fromARGB(100, 0, 0, 0)
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 13,
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          Helper.numFormat(this.data.playsCount),
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                !this.data.needVip ? null : Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5, 2, 10, 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        bottomRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(
                          colors: [Color(0xFFA17551), Color(0xFFCCBEB5)]),
                    ),
                    child: Text(
                      'VIP',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ].where((item) => item != null).toList(),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 5)),
        SizedBox(
          height: 40,
          child: Text(
            this.data.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Color(0xFF333333),
            ),
          ),
        ),
      ],
    );
  }
}

class Helper {
  static String numFormat(int num) {
    if (num / 10000 < 1) {
      return 'num';
    } else if (num / 100000000 < 1) {
      return '${num ~/ 10000}万';
    } else {
      return '${num ~/ 100000000}亿';
    }
  }
}

class ProgrammeViewModel {
  /// 节目名称
  final String title;

  /// 播放量
  final int playsCount;

  /// 封面图地址
  final String coverImgUrl;

  /// 是否需要vip才能观看
  final bool needVip;

  const ProgrammeViewModel({
    this.title,
    this.playsCount,
    this.coverImgUrl,
    this.needVip,
  });
}
