import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Drawer(
        backgroundColor: Color(0xFFFFF3ED),
        child: Flexible(
          child: SafeArea(
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.10),
              child: Column(
                children: [
                  Spacer(),
                  Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 5),
                      Text(
                        'Иванов Иван Иванович',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
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
                          "Встать в очередь",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const AboutPage()));
                    },
                    leading: const Icon(
                      Icons.info_outlined,
                      color: Colors.black,
                    ),
                    title: const Text(
                      "Маршрут",
                      style: TextStyle(
                        color: Color(0xFF7F7F7F),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const AboutMe()));
                    },
                    leading: const Icon(
                      Icons.engineering,
                      color: Colors.black,
                    ),
                    title: const Text(
                      "Уведомления",
                      style: TextStyle(
                        color: Color(0xFF7F7F7F),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const AboutMe()));
                    },
                    leading: const Icon(
                      Icons.engineering,
                      color: Colors.black,
                    ),
                    title: const Text(
                      "Доставленные заказы",
                      style: TextStyle(
                        color: Color(0xFF7F7F7F),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const AboutMe()));
                    },
                    leading: const Icon(
                      Icons.engineering,
                      color: Colors.black,
                    ),
                    title: const Text(
                      "Статистика",
                      style: TextStyle(
                        color: Color(0xFF7F7F7F),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const AboutMe()));
                    },
                    leading: const Icon(
                      Icons.engineering,
                      color: Colors.black,
                    ),
                    title: const Text(
                      "Отчёт за смену",
                      style: TextStyle(
                        color: Color(0xFF7F7F7F),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const AboutMe()));
                    },
                    leading: const Icon(
                      Icons.engineering,
                      color: Colors.black,
                    ),
                    title: const Text(
                      "Оценка работы",
                      style: TextStyle(
                        color: Color(0xFF7F7F7F),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const AboutMe()));
                    },
                    leading: const Icon(
                      Icons.engineering,
                      color: Colors.black,
                    ),
                    title: const Text(
                      "График работы",
                      style: TextStyle(
                        color: Color(0xFF7F7F7F),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const AboutMe()));
                    },
                    leading: const Icon(
                      Icons.engineering,
                      color: Colors.black,
                    ),
                    title: const Text(
                      "Новости",
                      style: TextStyle(
                        color: Color(0xFF7F7F7F),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const AboutMe()));
                    },
                    leading: const Icon(
                      Icons.engineering,
                      color: Colors.black,
                    ),
                    title: const Text(
                      "Сменить пароль",
                      style: TextStyle(
                        color: Color(0xFF7F7F7F),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const AboutMe()));
                    },
                    leading: const Icon(
                      Icons.engineering,
                      color: Colors.black,
                    ),
                    title: const Text(
                      "Выход",
                      style: TextStyle(
                        color: Color(0xFF7F7F7F),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => const RegistrPage()),
                          // );
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
                              "Помощь",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xFFE6371F)),
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => const RegistrPage()),
                          // );
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
                              "Инструкции",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xFFE6371F)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
