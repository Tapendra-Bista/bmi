import 'package:bmi_calculator/secondpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'centarpart.dart';
import 'colors.dart';
import 'containerpart.dart';
import 'functionpart.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backclr,
        appBarTheme: const AppBarTheme(
          color: appbarclr,
        )),
    home: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool clrm = false;
  bool clrf = false;
  int height = 0;
  int weight = 45;
  int age = 15;
  String gender = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(CupertinoIcons.line_horizontal_3),
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      clrm = true;
                      clrf = false;
                      gender = "MALE";
                    });
                  },
                  child: Containerbox(
                    clr: clrm ? activeclr : inactiveclr,
                    childcon: const Centerpart(
                      myicon: FontAwesomeIcons.mars,
                      mytext: Text(
                        'MALE',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      clrf = true;
                      clrm = false;
                      gender = "FEMALE";
                    });
                  },
                  child: Containerbox(
                    clr: clrf ? activeclr : inactiveclr,
                    childcon: const Centerpart(
                      myicon: FontAwesomeIcons.venus,
                      mytext: Text(
                        'FEMALE',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  child: Containerbox(
                      clr: contclr,
                      childcon: Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          const Text(
                            'HEIGHT\t\t\t',
                            style: TextStyle(fontSize: 28),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                height.toString(),
                                style: const TextStyle(fontSize: 70),
                              ),
                              const Text(
                                'cm',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          SliderTheme(
                            data: const SliderThemeData(
                              inactiveTickMarkColor: Color(0xFF8D8E98),
                              activeTickMarkColor: Colors.white,
                              thumbShape:
                                  RoundSliderThumbShape(enabledThumbRadius: 15),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 16),
                              thumbColor: Color(0xFFEB1555),
                              overlayColor: Color(0x29EB1555),
                            ),
                            child: Slider(
                              value: height.toDouble(),
                              onChanged: (double newvalue) {
                                setState(() {
                                  height = newvalue.round();
                                });
                              },
                              min: 0,
                              max: 213,
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Containerbox(
                  clr: contclr,
                  childcon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'WEIGHT',
                        style: TextStyle(fontSize: 28),
                      ),
                      Text(
                        weight.toString(),
                        style: const TextStyle(fontSize: 70),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RawMaterialButton(
                            shape: const CircleBorder(),
                            constraints: const BoxConstraints.tightFor(
                              width: 65,
                              height: 65,
                            ),
                            fillColor: const Color(0xFF4C4F5E),
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            child: const Icon(FontAwesomeIcons.minus),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          RawMaterialButton(
                            shape: const CircleBorder(),
                            constraints: const BoxConstraints.tightFor(
                              width: 65,
                              height: 65,
                            ),
                            fillColor: const Color(0xFF4C4F5E),
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            child: const Icon(FontAwesomeIcons.plus),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Containerbox(
                  clr: contclr,
                  childcon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'AGE',
                        style: TextStyle(fontSize: 28),
                      ),
                      Text(
                        age.toString(),
                        style: const TextStyle(fontSize: 70),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RawMaterialButton(
                            shape: const CircleBorder(),
                            constraints: const BoxConstraints.tightFor(
                              width: 65,
                              height: 65,
                            ),
                            fillColor: const Color(0xFF4C4F5E),
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            child: const Icon(FontAwesomeIcons.minus),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          RawMaterialButton(
                            shape: const CircleBorder(),
                            constraints: const BoxConstraints.tightFor(
                              width: 65,
                              height: 65,
                            ),
                            fillColor: const Color(0xFF4C4F5E),
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            child: const Icon(FontAwesomeIcons.plus),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: buttonclr,
                borderRadius: BorderRadius.circular(10),
              ),
              child: MaterialButton(
                minWidth: double.infinity,
                onPressed: () {
                  Funcal calc = Funcal(height: height, weight: weight);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Mysecondpage(
                      bmiresult: calc.calculatebmi(),
                      resulttext: calc.getresult(),
                      resultinter: calc.getinterpretation(),
                      age: age,
                      gender: gender,
                    ),
                  ));
                },
                child: const Text(
                  "CALCULATE YOUR BMI",
                  style: TextStyle(fontSize: 28),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
