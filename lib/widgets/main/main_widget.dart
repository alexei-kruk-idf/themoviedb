import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:themoviedb/resources/resources.dart';
import 'package:themoviedb/widgets/movie_list/movie_list_widget.dart';
import 'package:themoviedb/widgets/news/news_widget.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  int _indexNavigation = 0;
  final arrayText = [
    const NewsWidget(),
    const MovieList(),
    const Text('Сериалы')
  ];

  void _onTapBottomNavigation(int index) {
    if (_indexNavigation != index) {
      setState(() {
        _indexNavigation = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    const colorLogo = Color(0xFF01b4e4);

    return Scaffold(
      body: IndexedStack(
        index: _indexNavigation,
        children: [
          const NewsWidget(),
          const MovieList(),
          const Text(
            'Сериалы',
          ),
        ],
      ),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () => {}, icon: const Icon(Icons.person)),
          IconButton(
              onPressed: () => {},
              icon: const Icon(
                Icons.search,
                color: colorLogo,
              ))
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppImages.authLogo,
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
          const BottomNavigationBarItem(
              icon: Icon(Icons.newspaper), label: 'Новости'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.movie), label: 'Фильмы'),
          const BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'Сериалы'),
        ],
      ),
    );
  }
}
