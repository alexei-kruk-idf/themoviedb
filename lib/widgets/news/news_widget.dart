import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/custom_widget/percent_bar_widget.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final percent = 0.00;

    return Center(
      child: Container(
        width: 100,
        height: 100,
        child: PercentBarWidget(
            percent: percent,
            fillColor: Colors.black,
            lineColor: Colors.red,
            freeColor: Colors.grey,
            lineWidth: 5,
            child: Text(
              (percent * 100).round().toString(),
              style: TextStyle(color: Colors.white),
            )),
        decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      ),
    );
  }
}
