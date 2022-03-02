import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:themoviedb/resources/resources.dart';
import 'package:themoviedb/theme/app_colors.dart';
import 'package:themoviedb/widgets/custom_widget/percent_bar_widget.dart';

class MovieDetailsWidget extends StatefulWidget {
  final int movieId;
  const MovieDetailsWidget({Key? key, required this.movieId}) : super(key: key);

  @override
  State<MovieDetailsWidget> createState() => _MovieDetailsWidgetState();
}

class _MovieDetailsWidgetState extends State<MovieDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    const percent = 0.83;

    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () => {}, icon: const Icon(Icons.person)),
            IconButton(
                onPressed: () => {},
                icon: const Icon(
                  Icons.search,
                  color: AppColors.colorLogo,
                ))
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppImages.authLogo,
                color: AppColors.colorLogo,
                width: 55,
                height: 40,
              )
            ],
          ),
        ),
        body: ColoredBox(
          color: AppColors.backgroundColorMovieDetails,
          child: ListView(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const _PorterWidget(),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: _MovieTitleWidget(),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: _MovieScoreWidget(percent: percent),
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: _MovieReleaseWidget()),
              const _MovieGenresWidget(),
              const Padding(
                  padding:
                      EdgeInsets.only(top: 25, left: 10, right: 10, bottom: 10),
                  child: _MovieTaglineWidget()),
              const Padding(
                  padding:
                      EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
                  child: _MovieReview()),
              const Padding(
                  padding: EdgeInsets.all(10), child: _MovieTextReview()),
              const Padding(
                  padding:
                      EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
                  child: _MovieStuff())
            ]),
          ]),
        ));
  }
}

class _MovieStuff extends StatelessWidget {
  const _MovieStuff({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const stylePerson = TextStyle(
        color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700);
    const styleJob = TextStyle(color: Colors.white, fontSize: 16);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Steve Ditko',
                  style: stylePerson,
                ),
                const Text(
                  'Characters',
                  style: styleJob,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Steve Ditko',
                  style: stylePerson,
                ),
                const Text(
                  'Characters',
                  style: styleJob,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Steve Ditko',
                  style: stylePerson,
                ),
                const Text(
                  'Characters',
                  style: styleJob,
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Steve Ditko',
                  style: stylePerson,
                ),
                const Text(
                  'Characters',
                  style: styleJob,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Steve Ditko',
                  style: stylePerson,
                ),
                const Text(
                  'Characters',
                  style: styleJob,
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}

class _MovieTextReview extends StatelessWidget {
  const _MovieTextReview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
        'Действие фильма «Человек-паук: Нет пути домой» начинает своё развитие в тот момент, когда Мистерио удаётся выяснить истинную личность Человека-паука. С этого момента жизнь Питера Паркера становится невыносимой. Если ранее он мог успешно переключаться между своими амплуа, то сейчас это сделать невозможно. Переворачивается с ног на голову не только жизнь Человека-пауку, но и репутация. Понимая, что так жить невозможно, главный герой фильма «Человек-паук: Нет пути домой» принимает решение обратиться за помощью к своему давнему знакомому Стивену Стрэнджу. Питер Паркер надеется, что с помощью магии он сможет восстановить его анонимность. Стрэндж соглашается помочь.',
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ));
  }
}

class _MovieReview extends StatelessWidget {
  const _MovieReview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Обзор',
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700));
  }
}

class _MovieTaglineWidget extends StatelessWidget {
  const _MovieTaglineWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'The Multiverse unleashed.',
      style: TextStyle(color: AppColors.colorTextCertification, fontSize: 18),
    );
  }
}

class _MovieGenresWidget extends StatelessWidget {
  const _MovieGenresWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: Text(
        'боевик, приключения, фантастика',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class _MovieReleaseWidget extends StatelessWidget {
  const _MovieReleaseWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: const Text(
            'PG-13',
            style: TextStyle(color: AppColors.colorTextCertification),
          ),
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.colorTextCertification)),
        ),
        const SizedBox(
          width: 7,
        ),
        const Text(
          '17/12/2021 (US)  *  2h 28m',
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}

class _MovieScoreWidget extends StatelessWidget {
  const _MovieScoreWidget({
    Key? key,
    required this.percent,
  }) : super(key: key);

  final double percent;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      TextButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.all(0))),
          onPressed: () {},
          child: Row(children: [
            PercentBarWidget(
                percent: percent,
                child: Text(
                  '${(percent * 100).toInt().toString()} %',
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                )),
            const SizedBox(
              width: 10,
            ),
            const Text('Пользовательский \nсчет',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w700)),
          ])),
      const SizedBox(
        width: 5,
      ),
      Container(
        width: 1,
        height: 30,
        color: const Color.fromRGBO(73, 58, 59, 1),
      ),
      const SizedBox(
        width: 5,
      ),
      Flexible(
        child: TextButton.icon(
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
            onPressed: () => {},
            label: const Text(
              'Воспроизвести трейлер',
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: TextStyle(color: Colors.white),
            )),
      )
    ]);
  }
}

class _MovieTitleWidget extends StatelessWidget {
  const _MovieTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
              text: 'Человек-паук: Нет пути домой ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
          TextSpan(
              text: '(2021)',
              style: TextStyle(color: Colors.white70, fontSize: 16))
        ],
      ),
    );
  }
}

class _PorterWidget extends StatelessWidget {
  const _PorterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppImages.porterMovie),
        Positioned(
            left: 20,
            top: 20,
            bottom: 20,
            child: Image.asset(AppImages.porterLogoMovie))
      ],
    );
  }
}
