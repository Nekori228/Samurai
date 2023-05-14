import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Widgets/AppBarShiftReportPage.dart';
import 'Widgets/DrawerWidget.dart';

class ShiftReportPage extends StatelessWidget {
  const ShiftReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarShiftReportPage(),
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
                  SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.04),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 25),
                          Container(
                            child: RichText(
                              textDirection: TextDirection.ltr,
                              text: TextSpan(
                                text: "Сегодня",
                                style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' / ',
                                    style: TextStyle(
                                        color: Color(0xFF7F7F7F), fontSize: 19),
                                  ),
                                  TextSpan(
                                    text: ' 21.10.2022 ',
                                    style: TextStyle(
                                        color: Color(0xFF7F7F7F), fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TerminalContainer(),
                              SizedBox(width: 10),
                              NalContainer(),
                              SizedBox(width: 10),
                              QrcodeContainer()
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TimeUpContainer(),
                              SizedBox(width: 10),
                              RouteContainer()
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ZarplataContainer(),
                              SizedBox(width: 10),
                              KassaContainer()
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
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

class TerminalContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: Colors.red),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            SvgPicture.asset(
              'assets/icons/terminal.svg',
              height: 40,
              width: 40,
            ),
            SizedBox(height: 5),
            Text(
              '30',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 19),
            ),
            SizedBox(height: 5),
            Text(
              'по карте',
              style: TextStyle(
                  color: Color(0xFF7F7F7F),
                  fontWeight: FontWeight.w400,
                  fontSize: 13),
            ),
            SizedBox(height: 5),
            Text(
              '12432 ₽',
              style: TextStyle(
                  color: Color(0xFFE6371F),
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class NalContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: Colors.red),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            SvgPicture.asset(
              'assets/icons/nal.svg',
              height: 40,
              width: 40,
            ),
            SizedBox(height: 5),
            Text(
              '4',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 19),
            ),
            SizedBox(height: 5),
            Text(
              'наличными',
              style: TextStyle(
                  color: Color(0xFF7F7F7F),
                  fontWeight: FontWeight.w400,
                  fontSize: 13),
            ),
            SizedBox(height: 5),
            Text(
              '3205 ₽',
              style: TextStyle(
                  color: Color(0xFFE6371F),
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class QrcodeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: Colors.red),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            SvgPicture.asset(
              'assets/icons/qrcode.svg',
              height: 40,
              width: 40,
            ),
            SizedBox(height: 5),
            Text(
              '8',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 19),
            ),
            SizedBox(height: 5),
            Text(
              'по qr-коду',
              style: TextStyle(
                  color: Color(0xFF7F7F7F),
                  fontWeight: FontWeight.w400,
                  fontSize: 13),
            ),
            SizedBox(height: 5),
            Text(
              '2950 ₽',
              style: TextStyle(
                  color: Color(0xFFE6371F),
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class TimeUpContainer extends StatelessWidget {
  // Главный виджет приложения
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: Colors.red),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 5, 10),
              child: SvgPicture.asset(
                'assets/icons/timeup.svg',
                height: 40,
                width: 40,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5, 10, 0, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '4.5 часа',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 19),
                  ),
                  Text(
                    'смена',
                    style: TextStyle(color: Color(0xFF7F7F7F), fontSize: 10),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RouteContainer extends StatelessWidget {
  // Главный виджет приложения
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: Colors.red),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 5, 10),
              child: SvgPicture.asset(
                'assets/icons/routes.svg',
                height: 40,
                width: 40,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5, 10, 0, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '24 км',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 19),
                  ),
                  Text(
                    'расстояние',
                    style: TextStyle(color: Color(0xFF7F7F7F), fontSize: 10),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ZarplataContainer extends StatelessWidget {
  // Главный виджет приложения
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF4EB752),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 5, 10),
              child: SvgPicture.asset(
                'assets/icons/zarplata.svg',
                height: 40,
                width: 40,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5, 10, 0, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Зарплата',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 19),
                  ),
                  Text(
                    '5980 ₽',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class KassaContainer extends StatelessWidget {
  // Главный виджет приложения
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF484860),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 5, 10),
              child: SvgPicture.asset(
                'assets/icons/kassa.svg',
                height: 40,
                width: 40,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5, 10, 0, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'В кассу',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 19),
                  ),
                  Text(
                    '13544 ₽',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
