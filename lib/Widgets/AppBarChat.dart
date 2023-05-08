import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../ChatPage.dart';

class AppBarChatWidget extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}