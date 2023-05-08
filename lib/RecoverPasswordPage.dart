import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'AuthorizationPage.dart';
import 'SmsRecoverPasswordPage.dart';

class RecoverPasswordPage extends StatelessWidget {
  const RecoverPasswordPage({Key? key}) : super(key: key);

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
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Восстановить пароль',
                  style: TextStyle(
                      color: Color(0xFF3F3F3F),
                      fontSize: 23,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 40,
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
                            Icons.phonelink_lock_rounded,
                            size: 23,
                            color: Color(0xFFD19D9A),
                          ),
                          hintText: 'Ваш номер телефона',
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
                                    const SmsRecoverPasswordPage()),
                          );
                        },
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
                        child: const SizedBox(
                          height: 60,
                          child: Center(
                            child: Text(
                              'Восстановить',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Отправим смс-код для восстановления',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
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
