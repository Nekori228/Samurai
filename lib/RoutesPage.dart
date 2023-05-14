import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Widgets/AppBarRoutes.dart';
import 'Widgets/DrawerWidget.dart';

class RoutesPage extends StatelessWidget {
  const RoutesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarRoutesWidget(),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed))
                                  return Color(0xFFFF2309);
                                return null;
                              },
                            ),
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
                            height: 45,
                            child: Center(
                              child: Text(
                                "Карта",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const InstructionPage()),
                            // );
                          },
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed))
                                  return Color(0xFFE6371F);
                                return null;
                              },
                            ),
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
                                MaterialStateProperty.all(Color(0xFFFFF3ED)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Color(0xFFE6371F), width: 2),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          child: const SizedBox(
                            height: 45,
                            child: Center(
                              child: Text(
                                "Список",
                                style: TextStyle(
                                    fontSize: 18, color: Color(0xFFE6371F)),
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
          ),
        ),
      ),
      drawer: DrawerWidget(),
    );
  }
}
