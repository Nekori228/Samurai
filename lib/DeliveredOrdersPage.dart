import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/AppBarDeliveredOrders.dart';
import 'Widgets/DrawerWidget.dart';

class DeliveredOrdersPage extends StatelessWidget {
  const DeliveredOrdersPage({Key? key}) : super(key: key);

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