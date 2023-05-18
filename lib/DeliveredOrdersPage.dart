import 'dart:math';
import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Widgets/AppBarDeliveredOrders.dart';
import 'Widgets/DrawerWidget.dart';

class DeliveredOrdersPage extends StatelessWidget {
  DeliveredOrdersPage({Key? key}) : super(key: key);

  var listQuestion = [
    {'title': '(1) Заказ №0644 - Выдан', 'description': ''},
    {'title': '(1) Заказ №0644 - Выдан', 'description': ''},
    {'title': '(1) Заказ №0644 - Выдан', 'description': ''},
    {'title': '(1) Заказ №0644 - Выдан', 'description': ''},
    {'title': '(1) Заказ №0644 - Выдан', 'description': ''},
    {'title': '(1) Заказ №0644 - Выдан', 'description': ''},
  ];

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
                horizontal: MediaQuery.of(context).size.width * 0.02),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.02),
                          child: ExpansionWidget(
                            initiallyExpanded: false,
                            titleBuilder: (double animationValue, _,
                                bool isExpaned, toogleFunction) {
                              return Material(
                                color: const Color(0xFFE8E8E8),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(12),
                                  bottomRight:
                                      Radius.circular(isExpaned ? 0 : 12),
                                  topLeft: Radius.circular(12),
                                  bottomLeft:
                                      Radius.circular(isExpaned ? 0 : 12),
                                ),
                                child: InkWell(
                                  onTap: () => {
                                    toogleFunction(
                                      animated: true,
                                    ),
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.all(20),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            listQuestion[index]['title']!,
                                            style: TextStyle(
                                              color: const Color(0xFFA3A8AC),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              // fontFamily: 'Overpass-SemiBold'
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            content: Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(0),
                                  bottomRight: Radius.circular(12),
                                  topLeft: Radius.circular(0),
                                  bottomLeft: Radius.circular(12),
                                ),
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(20),
                                          child: SvgPicture.asset(
                                            'assets/icons/map.svg',
                                            height: 30,
                                            width: 30,
                                            color: Color(0xFFBCC1C4),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'ул. Чехова, д. 14',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xFF3F3F3F),
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            SizedBox(height: 3),
                                            Text(
                                              'Подъезд 1, квартира 22',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color(0xFFA3A8AC),
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(20),
                                          child: SvgPicture.asset(
                                            'assets/icons/user3.svg',
                                            height: 30,
                                            width: 30,
                                            color: Color(0xFFBCC1C4),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Иван',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xFF3F3F3F),
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            SizedBox(height: 3),
                                            Text(
                                              '+7 (900) 232-21-21',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color(0xFFA3A8AC),
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        ElevatedButton(
                                          onPressed: () {
                                            // Navigator.push(
                                            //   context,
                                            //   MaterialPageRoute(
                                            //       builder: (context) => const InstructionPage()),
                                            // );
                                          },
                                          style: ButtonStyle(
                                            overlayColor: MaterialStateProperty
                                                .resolveWith<Color?>(
                                              (Set<MaterialState> states) {
                                                if (states.contains(
                                                    MaterialState.pressed))
                                                  return Color(0xFFE6371F);
                                                return null;
                                              },
                                            ),
                                            elevation: MaterialStateProperty
                                                .resolveWith<double>(
                                              (Set<MaterialState> states) {
                                                if (states.contains(
                                                    MaterialState.pressed)) {
                                                  return 8; // тень при нажатии
                                                } else {
                                                  return 2; // базовая тень
                                                }
                                              },
                                            ),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                              Color(0xFFFFFFFF),
                                            ),
                                            shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                side: BorderSide(
                                                    color: Color(0xFFE6371F),
                                                    width: 2),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),
                                          child: const SizedBox(
                                            height: 50,
                                            width: 80,
                                            child: Center(
                                              child: Text(
                                                "Позвонить",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xFFE6371F)),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(20),
                                          child: SvgPicture.asset(
                                            'assets/icons/primechanie.svg',
                                            height: 30,
                                            width: 30,
                                            color: Color(0xFFBCC1C4),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Примечание',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xFF3F3F3F),
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            SizedBox(height: 3),
                                            Text(
                                              'Позвонить в домофон',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color(0xFFA3A8AC),
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(20),
                                          child: SvgPicture.asset(
                                            'assets/icons/pack.svg',
                                            height: 30,
                                            width: 30,
                                            color: Color(0xFFBCC1C4),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Состав заказа',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xFF3F3F3F),
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            SizedBox(height: 3),
                                            Text(
                                              'Пакеты: 1    Пицца: 022',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color(0xFFA3A8AC),
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        ElevatedButton(
                                          onPressed: () {
                                            // Navigator.push(
                                            //   context,
                                            //   MaterialPageRoute(
                                            //       builder: (context) => const InstructionPage()),
                                            // );
                                          },
                                          style: ButtonStyle(
                                            overlayColor: MaterialStateProperty
                                                .resolveWith<Color?>(
                                              (Set<MaterialState> states) {
                                                if (states.contains(
                                                    MaterialState.pressed))
                                                  return Color(0xFFE6371F);
                                                return null;
                                              },
                                            ),
                                            elevation: MaterialStateProperty
                                                .resolveWith<double>(
                                              (Set<MaterialState> states) {
                                                if (states.contains(
                                                    MaterialState.pressed)) {
                                                  return 8; // тень при нажатии
                                                } else {
                                                  return 2; // базовая тень
                                                }
                                              },
                                            ),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                              Color(0xFFFFFFFF),
                                            ),
                                            shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                side: BorderSide(
                                                    color: Color(0xFFE6371F),
                                                    width: 2),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),
                                          child: const SizedBox(
                                            height: 50,
                                            width: 80,
                                            child: Center(
                                              child: Text(
                                                "Открыть",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xFFE6371F)),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05),
                                      child: Column(
                                        children: [
                                          Divider(color: Color(0xFFA3A8AC)),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 20, 0, 20),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Оплачено картой:',
                                                  style: TextStyle(
                                                      color: Color(0xFF7F7F7F),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                Text(
                                                  '2548 ₽',
                                                  style: TextStyle(
                                                      color: Color(0xFF7F7F7F),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  // Navigator.push(
                                                  //   context,
                                                  //   MaterialPageRoute(
                                                  //     builder: (context) => const RoutesPage(),
                                                  //   ),
                                                  // );
                                                },
                                                style: ButtonStyle(
                                                  overlayColor:
                                                      MaterialStateProperty
                                                          .resolveWith<Color?>(
                                                    (Set<MaterialState>
                                                        states) {
                                                      if (states.contains(
                                                          MaterialState
                                                              .pressed))
                                                        return Color(
                                                            0xFFE6371F);
                                                      return null;
                                                    },
                                                  ),
                                                  elevation:
                                                      MaterialStateProperty
                                                          .resolveWith<double>(
                                                    (Set<MaterialState>
                                                        states) {
                                                      if (states.contains(
                                                          MaterialState
                                                              .pressed)) {
                                                        return 8; // тень при нажатии
                                                      } else {
                                                        return 2; // базовая тень
                                                      }
                                                    },
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    Color(0xFFFFFFFF),
                                                  ),
                                                  shape:
                                                      MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color:
                                                              Color(0xFFE6371F),
                                                          width: 2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                  ),
                                                ),
                                                child: Expanded(
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
                                                        'По карте',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 19),
                                                      ),
                                                      SizedBox(height: 5),
                                                      Text(
                                                        'к оплате',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFF7F7F7F),
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 13),
                                                      ),
                                                      SizedBox(height: 5),
                                                      Text(
                                                        '2548 ₽',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFFE6371F),
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 12),
                                                      ),
                                                      SizedBox(height: 10),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              ElevatedButton(
                                                onPressed: () {
                                                  // Navigator.push(
                                                  //   context,
                                                  //   MaterialPageRoute(
                                                  //     builder: (context) => const RoutesPage(),
                                                  //   ),
                                                  // );
                                                },
                                                style: ButtonStyle(
                                                  overlayColor:
                                                      MaterialStateProperty
                                                          .resolveWith<Color?>(
                                                    (Set<MaterialState>
                                                        states) {
                                                      if (states.contains(
                                                          MaterialState
                                                              .pressed))
                                                        return Color(
                                                            0xFFE6371F);
                                                      return null;
                                                    },
                                                  ),
                                                  elevation:
                                                      MaterialStateProperty
                                                          .resolveWith<double>(
                                                    (Set<MaterialState>
                                                        states) {
                                                      if (states.contains(
                                                          MaterialState
                                                              .pressed)) {
                                                        return 8; // тень при нажатии
                                                      } else {
                                                        return 2; // базовая тень
                                                      }
                                                    },
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    Color(0xFFFFFFFF),
                                                  ),
                                                  shape:
                                                      MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color:
                                                              Color(0xFFE6371F),
                                                          width: 2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                  ),
                                                ),
                                                child: Expanded(
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
                                                        'Наличка',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 19),
                                                      ),
                                                      SizedBox(height: 5),
                                                      Text(
                                                        'сдача',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFF7F7F7F),
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 13),
                                                      ),
                                                      SizedBox(height: 5),
                                                      Text(
                                                        '452 ₽',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFFE6371F),
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 12),
                                                      ),
                                                      SizedBox(height: 10),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              ElevatedButton(
                                                onPressed: () {
                                                  // Navigator.push(
                                                  //   context,
                                                  //   MaterialPageRoute(
                                                  //     builder: (context) => const RoutesPage(),
                                                  //   ),
                                                  // );
                                                },
                                                style: ButtonStyle(
                                                  overlayColor:
                                                      MaterialStateProperty
                                                          .resolveWith<Color?>(
                                                    (Set<MaterialState>
                                                        states) {
                                                      if (states.contains(
                                                          MaterialState
                                                              .pressed))
                                                        return Color(
                                                            0xFFE6371F);
                                                      return null;
                                                    },
                                                  ),
                                                  elevation:
                                                      MaterialStateProperty
                                                          .resolveWith<double>(
                                                    (Set<MaterialState>
                                                        states) {
                                                      if (states.contains(
                                                          MaterialState
                                                              .pressed)) {
                                                        return 8; // тень при нажатии
                                                      } else {
                                                        return 2; // базовая тень
                                                      }
                                                    },
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    Color(0xFFFFFFFF),
                                                  ),
                                                  shape:
                                                      MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color:
                                                              Color(0xFFE6371F),
                                                          width: 2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                  ),
                                                ),
                                                child: Expanded(
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
                                                        'QR-код',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 19),
                                                      ),
                                                      SizedBox(height: 5),
                                                      Text(
                                                        'получить',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFF7F7F7F),
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 13),
                                                      ),
                                                      SizedBox(height: 5),
                                                      Text(
                                                        'qr-код',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFF7F7F7F),
                                                            fontWeight:
                                                            FontWeight.w400,
                                                            fontSize: 13),
                                                      ),
                                                      SizedBox(height: 10),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 20),
                                          Row(
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  // Navigator.push(
                                                  //   context,
                                                  //   MaterialPageRoute(
                                                  //     builder: (context) => const RoutesPage(),
                                                  //   ),
                                                  // );
                                                },
                                                style: ButtonStyle(
                                                  overlayColor:
                                                      MaterialStateProperty
                                                          .resolveWith<Color?>(
                                                    (Set<MaterialState>
                                                        states) {
                                                      if (states.contains(
                                                          MaterialState
                                                              .pressed))
                                                        return Color(
                                                            0xFFFF2309);
                                                      return null;
                                                    },
                                                  ),
                                                  elevation:
                                                      MaterialStateProperty
                                                          .resolveWith<double>(
                                                    (Set<MaterialState>
                                                        states) {
                                                      if (states.contains(
                                                          MaterialState
                                                              .pressed)) {
                                                        return 8; // тень при нажатии
                                                      } else {
                                                        return 2; // базовая тень
                                                      }
                                                    },
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          Color(0xFF484860)),
                                                  shape:
                                                      MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                  ),
                                                ),
                                                child: const SizedBox(
                                                  height: 60,
                                                  child: Center(
                                                    child: Text(
                                                      "Заказ выдан",
                                                      style: TextStyle(
                                                          fontSize: 18),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              ElevatedButton(
                                                onPressed: () {
                                                  // Navigator.push(
                                                  //   context,
                                                  //   MaterialPageRoute(
                                                  //     builder: (context) => const RoutesPage(),
                                                  //   ),
                                                  // );
                                                },
                                                style: ButtonStyle(
                                                  overlayColor:
                                                      MaterialStateProperty
                                                          .resolveWith<Color?>(
                                                    (Set<MaterialState>
                                                        states) {
                                                      if (states.contains(
                                                          MaterialState
                                                              .pressed))
                                                        return Color(
                                                            0xFFFF2309);
                                                      return null;
                                                    },
                                                  ),
                                                  elevation:
                                                      MaterialStateProperty
                                                          .resolveWith<double>(
                                                    (Set<MaterialState>
                                                        states) {
                                                      if (states.contains(
                                                          MaterialState
                                                              .pressed)) {
                                                        return 8; // тень при нажатии
                                                      } else {
                                                        return 2; // базовая тень
                                                      }
                                                    },
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          Color(0xFFF2F2F2)),
                                                  shape:
                                                      MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                  ),
                                                ),
                                                child: const SizedBox(
                                                  height: 60,
                                                  child: Center(
                                                    child: Text(
                                                      "Помощь",
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        color: Color(
                                                          (0xFFA3A8AC),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 30),
                                  ],
                                ),
                              ),
                              // child: Container(
                              //   margin: const EdgeInsets.all(15),
                              //   child: Row(
                              //     children: [
                              //       Expanded(
                              //         child: Text(
                              //           listQuestion[index]['description']!,
                              //           style: TextStyle(
                              //               color: const Color(0xFFFFFFFF)
                              //                   .withOpacity(0.47),
                              //               fontSize: 16,
                              //               fontWeight: FontWeight.w500),
                              //         ),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 10);
                      },
                      shrinkWrap: true,
                      itemCount: listQuestion.length),
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
