import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.10),
          child: Center(
            child: Column(
              children: [
                Image.asset("assets/icons/logo.png", height: 128, width: 117),
                Text(
                  'Авторизация',
                  style: TextStyle(color: Color(0xFF3F3F3F), fontSize: 23),
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                      style: TextStyle(color: Color(0xFF7F7F7F), fontSize: 15),
                      text:
                          'Для получения доступа необходимо быть сотрудником компании ',
                    ),
                    TextSpan(
                      text: 'Сытый Самурай',
                      style: const TextStyle(
                        color: Color(0xFF7F7F7F),
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () =>
                            launchUrlString('https://ssamurai.ru/plug.php'),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.02),
                  child: Column(
                    children: [
                      TextField(
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_2_outlined,
                            size: 23,
                            color: Color(0xFFD19D9A),
                          ),
                          hintText: 'Ваш логин',
                          hintStyle:
                              TextStyle(color: Color(0xFFD19D9A), fontSize: 15),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            size: 23,
                            color: Color(0xFFD19D9A),
                          ),
                          hintText: 'Пароль',
                          hintStyle:
                              TextStyle(color: Color(0xFFD19D9A), fontSize: 15),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.resolveWith<double>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return 8; // тень при нажатии
                              } else {
                                return 2; // базовая тень
                              }
                            },
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFFE6371F)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        child: SizedBox(
                          height: 60,
                          child: Center(
                            child: Text(
                              "Войти",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Забыли пароль?',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          side: BorderSide(color: Color(0xFFE6371F), width: 2),
                        ),
                        child: SizedBox(
                          height: 60,
                          child: Center(
                            child: Text(
                              "Зарегистрироваться",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xFFE6371F)),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Инструкция для новичков?',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
