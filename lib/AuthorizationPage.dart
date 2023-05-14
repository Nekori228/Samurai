import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'InstructionPage.dart';
import 'RecoverPasswordPage.dart';
import 'RegistrPage.dart';
import 'RoutesPage.dart';

class AuthorizationPage extends StatelessWidget {
  const AuthorizationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF3ED),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.10),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 30),
                SvgPicture.asset("assets/icons/logo.svg", height: 128, width: 117),
                const Text(
                  'Авторизация',
                  style: TextStyle(
                      color: Color(0xFF3F3F3F),
                      fontSize: 23,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    const TextSpan(
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
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.02),
                  child: Column(
                    children: [
                      const TextField(
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.grey),
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
                      const SizedBox(
                        height: 15,
                      ),
                      const TextField(
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.grey),
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
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RoutesPage(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return Color(0xFFFF2309);
                              return null;
                            },
                          ),
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
                        child: const SizedBox(
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RecoverPasswordPage()),
                          );
                        },
                        child: const Text(
                          'Забыли пароль?',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegistrPage()),
                          );
                        },
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return Color(0xFFE6371F);
                              return null;
                            },
                          ),
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
                              MaterialStateProperty.all(Color(0xFFFFF3ED)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Color(0xFFE6371F), width: 2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        child: const SizedBox(
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
                      // OutlinedButton(
                      //   onPressed: () {},
                      //   style: OutlinedButton.styleFrom(
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(15),
                      //     ),
                      //     side: BorderSide(color: Color(0xFFE6371F), width: 2),
                      //   ),
                      //   child: const SizedBox(
                      //     height: 60,
                      //     child: Center(
                      //       child: Text(
                      //         'Зарегистрироваться',
                      //         style: TextStyle(
                      //             fontSize: 18, color: Color(0xFFE6371F)),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const InstructionPage()),
                          );
                        },
                        child: const Text(
                          'Инструкция для новичков',
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
