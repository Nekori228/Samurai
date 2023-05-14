import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:latlong2/latlong.dart' as latLng;


import 'Widgets/AppBarRoutes.dart';
import 'Widgets/DrawerWidget.dart';

class RoutesPage extends StatelessWidget {
  const RoutesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarRoutesWidget(),
      backgroundColor: Color(0xFFFFF3ED),
      body: SafeArea(
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
                          elevation:
                              MaterialStateProperty.resolveWith<double>(
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
                          elevation:
                              MaterialStateProperty.resolveWith<double>(
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
              SizedBox(height: 20),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                  child: FlutterMap(
                    options: MapOptions(
                      center: latLng.LatLng(61.25, 73.41),
                      zoom: 11.2,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                        userAgentPackageName: 'com.example.app',
                      ),
                    ],
                  ),
              ),
                SizedBox(height: 20),
                Text(
                  'Построить маршрут',
                  style: TextStyle(
                      color: Color(0xFF3F3F3F),
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF90DC20)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        child: const SizedBox(
                          height: 60,
                          child: Center(
                            child: Text(
                              "2ГИС",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFFFFCC00)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        child: const SizedBox(
                          height: 60,
                          child: Center(
                            child: Text(
                              "ЯНДЕКС",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Center(
                  child: SvgPicture.asset(
                    'assets/icons/buttomLogo.svg',
                    height: 70,
                  ),
                ),
                SizedBox(height: 10)
              ],
            ),
          ),
        ),
      ),
      drawer: DrawerWidget(),
    );
  }
}
