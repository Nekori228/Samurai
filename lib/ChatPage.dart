import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Widgets/AppBarChat.dart';
import 'Widgets/DrawerWidget.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarChatWidget(),
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
                  ChatBox(),
                  SizedBox(height: 50),
                  Center(
                      child: SvgPicture.asset(
                    'assets/icons/buttomLogo.svg',
                    height: 70,
                  )),
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

class ChatBox extends StatelessWidget {
  const ChatBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: Color(0xFFF9F9F9),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              )),
        ],
      ),
    );
  }
}
