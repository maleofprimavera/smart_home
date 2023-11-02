import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

double _lightValue = 0.5;
double _floorLamp = 0.5;
bool _humidMode = true;
bool _puriMode = true;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(33, 29, 29, 1),
      body: Stack(
          children: [
        Image.asset('assets/image 7.png',fit: BoxFit.fill,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 60,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/back.png'),
                    const Text('Bedroom',
                        style: TextStyle(color: Colors.white)),
                    Image.asset('assets/bell.png'),
                  ],
                ),
              ),
              const SizedBox(
                height: 250,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromRGBO(40, 36, 36, 1)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('36%',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 32)),
                              Image.asset('assets/humidity.png',
                                  width: 35, height: 35),
                            ]),
                        const Text(
                          'Humidity',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        const Text('Air',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Mode 2',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            CupertinoSwitch(
                              value: _humidMode,
                              onChanged: (value) {
                                setState(() {
                                  _humidMode = value;
                                });
                              },
                              activeColor: Colors.orange,
                              thumbColor: Colors.black,
                              trackColor: Colors.white,
                            )
                          ],
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromRGBO(40, 36, 36, 1)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('72%',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 32)),
                              Image.asset('assets/clean.png',
                                  width: 35, height: 35),
                            ]),
                        const Text(
                          'Humidity',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        const Text('Air',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Mode 2',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            CupertinoSwitch(
                              value: _puriMode,
                              onChanged: (value) {
                                setState(() {
                                  _puriMode = value;
                                });
                              },
                              thumbColor: Colors.black,
                              activeColor: Colors.orange,
                              trackColor: Colors.white,
                            )
                          ],
                        )
                      ],
                    ),
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 160,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(40, 36, 36, 1),
                    borderRadius: BorderRadius.circular(15)),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Main light', style: TextStyle(color: Colors.white)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Slider(
                          label: 'Main',
                          value: _lightValue,
                          onChanged: (newValue) {
                            setState(() {
                              _lightValue = newValue;
                            });
                          },
                          activeColor: Colors.orange,
                              thumbColor: Colors.white,
                        )),
                        Image.asset('assets/Lamp.png'),
                      ],
                    ),
                    const Text(
                      'Floor lamp',
                      style: TextStyle(color: Colors.white),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Slider(
                          value: _floorLamp,
                          onChanged: (newValue) {
                            setState(() {
                              _floorLamp = newValue;
                            });
                          },
                          activeColor: Colors.orange,
                              thumbColor: Colors.white,
                        )),
                        Image.asset('assets/Tablelamp.png'),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: const Color.fromRGBO(33, 29, 29, 1),
          // // sets the active color of the `BottomNavigationBar` if `Brightness` is light
          // primaryColor: Colors.red,
          // textTheme: Theme
          //     .of(context)
          //     .textTheme
          //     .copyWith(caption: new TextStyle(color: Colors.yellow))
        ),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            // backgroundColor: Color.fromRGBO(33, 29, 29, 1),
            unselectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset('assets/home.png'), label: ""),
              const BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.grid_view,
                  ),
                  label: ""),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_rounded), label: "")
            ]),
      ),
    );
  }
}
