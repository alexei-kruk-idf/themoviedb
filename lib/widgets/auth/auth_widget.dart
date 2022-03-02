import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:themoviedb/theme/app_button_style.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    const colorLogo = Color(0xFF01b4e4);

    return Scaffold(
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
              'assets/images/auth_logo.svg',
              color: colorLogo,
              width: 55,
              height: 40,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const _HeaderWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 16,
      color: Colors.black,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25),
          const _FormWidget(),
          const SizedBox(height: 25),
          const Text(
            'In order to use the editing and rating capabilities of TMDb, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple.',
            style: textStyle,
          ),
          const SizedBox(height: 5),
          TextButton(
            style: AppButtonStyle.linkButton,
            onPressed: () {},
            child: const Text('Register'),
          ),
          const SizedBox(height: 25),
          const Text(
            'If you signed up but didn`t get your verification email.',
            style: textStyle,
          ),
          const SizedBox(height: 5),
          TextButton(
            style: AppButtonStyle.linkButton,
            onPressed: () {},
            child: const Text('Verify email'),
          ),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({Key? key}) : super(key: key);

  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? errorText;

  @override
  void initState() {
    super.initState();
    Future(() => {Navigator.of(context).pushReplacementNamed('/main')});
  }

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == 'admin' && password == 'admin') {
      errorText = null;
      Navigator.of(context).pushReplacementNamed('/main');
    } else {
      errorText = 'Не верный логин или пароль';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const textFieldDecoration = InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      isCollapsed: true,
    );
    const colorButton = Color(0xFF01B4E4);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        const Text('Имя пользователя'),
        TextField(
          controller: _loginTextController,
          decoration: textFieldDecoration,
        ),
        const SizedBox(
          height: 15,
        ),
        const Text('Пароль'),
        TextField(
          controller: _passwordTextController,
          obscureText: true,
          decoration: textFieldDecoration,
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            ElevatedButton(
                onPressed: _auth,
                child: const Text('Войти'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(colorButton),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ))),
            const SizedBox(width: 30),
            TextButton(
              onPressed: () {},
              style: AppButtonStyle.linkButton,
              child: const Text('Восстановить пароль'),
            ),
          ],
        )
      ],
    );
  }
}
