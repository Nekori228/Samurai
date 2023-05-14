import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Widgets/AppBarInstruction.dart';
import 'Widgets/DrawerWidget.dart';

class InstructionPage extends StatelessWidget {
  const InstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDeliveredOrders(),
      backgroundColor: Color(0xFFFFF3ED),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Инструкция для новичков',
                    style: TextStyle(
                        color: Color(0xFF3F3F3F),
                        fontWeight: FontWeight.w600,
                        fontSize: 23),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Смотри обучающие видео, чтобы разобраться что куда :)',
                    style: TextStyle(
                        color: Color(0xFF7F7F7F),
                        fontWeight: FontWeight.w600,
                        fontSize: 11),
                  ),
                  SizedBox(height: 30),
                  WhiteBox(),
                  SizedBox(height: 10),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      const TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                        text: '1. Начало ',
                      ),
                      const TextSpan(
                        style:
                            TextStyle(color: Color(0xFF7F7F7F), fontSize: 13),
                        text: '- получение персонального кода',
                      ),
                    ]),
                  ),
                  SizedBox(height: 30),
                  WhiteBox(),
                  SizedBox(height: 10),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      const TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                        text: '2. Регистрация ',
                      ),
                      const TextSpan(
                        style:
                            TextStyle(color: Color(0xFF7F7F7F), fontSize: 13),
                        text: '- создание логина и пароля',
                      ),
                    ]),
                  ),
                  SizedBox(height: 30),
                  WhiteBox(),
                  SizedBox(height: 10),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      const TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                        text: '3. Основные разделы ',
                      ),
                      const TextSpan(
                        style:
                            TextStyle(color: Color(0xFF7F7F7F), fontSize: 13),
                        text: '- подробнее о каждом',
                      ),
                    ]),
                  ),
                  SizedBox(height: 30),
                  WhiteBox(),
                  SizedBox(height: 10),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      const TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                        text: '4. Раздел маршруты ',
                      ),
                      const TextSpan(
                        style:
                            TextStyle(color: Color(0xFF7F7F7F), fontSize: 13),
                        text: '- подробнее о каждой кнопке',
                      ),
                    ]),
                  ),
                  SizedBox(height: 50),
                  Center(
                    child: SvgPicture.asset(
                      'assets/icons/buttomLogo.svg',
                      height: 70,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: DrawerWidget(),
    );
  }
}

class WhiteBox extends StatelessWidget {
  const WhiteBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Container(
        alignment: Alignment.topCenter,
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Color(0xFFE6371F).withOpacity(0.15),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 10),
            )
          ], color: Colors.white, borderRadius: BorderRadius.circular(100)
              //more than 50% of width makes circle
              ),
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/video.svg',
              height: 50,
              width: 50,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
