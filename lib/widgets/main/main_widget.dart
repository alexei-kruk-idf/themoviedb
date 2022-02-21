import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainWidget extends StatefulWidget {
  MainWidget({Key? key}) : super(key: key);

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  int _indexNavigation = 0;
  final arrayText = [Text('Новости'), Text('Фильмы'), Text('Сериалы')];

  void _onTapBottomNavigation(int index) {
    if (_indexNavigation != index) {
      setState(() {
        _indexNavigation = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorLogo = Color(0xFF01b4e4);

    return Scaffold(
      body: Center(child: arrayText[_indexNavigation]),
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexNavigation,
        onTap: _onTapBottomNavigation,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.newspaper), label: 'Новости'),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Фильмы'),
          BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'Сериалы'),
        ],
      ),
    );
  }
}
