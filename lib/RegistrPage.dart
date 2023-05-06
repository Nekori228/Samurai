import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'AuthorizationPage.dart';

class RegistrPage extends StatelessWidget {
  const RegistrPage({Key? key}) : super(key: key);

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
                SvgPicture.asset("assets/icons/logo.svg", height: 128, width: 117),
                const Text(
                  'Регистрация',
                  style: TextStyle(
                      color: Color(0xFF3F3F3F),
                      fontSize: 23,
                      fontWeight: FontWeight.w500),
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
                            Icons.send_to_mobile_sharp,
                            size: 23,
                            color: Color(0xFFD19D9A),
                          ),
                          hintText: 'Номер телефона',
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
                          hintText: 'Код сотрудника',
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
                                builder: (context) =>
                                const AuthorizationPage()),
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
                              "Зарегистрироваться",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Отправим смс с логином и паролем',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
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
