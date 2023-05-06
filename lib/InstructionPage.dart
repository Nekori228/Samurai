import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InstructionPage extends StatelessWidget {
  const InstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Инструкция',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/menu.svg',
            height: 35,
            width: 35,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/chat.svg',
              height: 35,
              width: 35,
            ),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Color(0xFFFFF3ED),
      body: SafeArea(
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
                WhiteBox()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WhiteBox extends StatelessWidget {
  const WhiteBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
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
