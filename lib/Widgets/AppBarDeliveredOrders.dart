import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../ChatPage.dart';

class AppBarDeliveredOrders extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Доставленные заказы',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w700, fontSize: 19),
      ),
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/menu.svg',
          height: 25,
          width: 25,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/chat.svg',
            height: 25,
            width: 25,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChatPage()),
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
