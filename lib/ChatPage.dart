import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Чат',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
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
