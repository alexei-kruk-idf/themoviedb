import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainWidget extends StatefulWidget {
  MainWidget({Key? key}) : super(key: key);

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  Widget build(BuildContext context) {
    final colorLogo = Color(0xFF01b4e4);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.person)),
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.search,
                color: colorLogo,
              ))
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/auth_logo.svg',
              color: colorLogo,
              width: 55,
              height: 40,
            )
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
