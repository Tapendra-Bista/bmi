import 'package:bmi_calculator/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

class Mysecondpage extends StatelessWidget {
  final String bmiresult;
  final String resulttext;
  final String resultinter;
  final int age;
  final String gender;
  const Mysecondpage(
      {super.key,
      required this.bmiresult,
      required this.resulttext,
      required this.resultinter,
      required this.age,
      required this.gender});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backclr,
          appBarTheme: const AppBarTheme(
            color: appbarclr,
          )),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: const Icon(CupertinoIcons.line_horizontal_3),
          title: const Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '\tYour Result',
                  style: TextStyle(fontSize: 42),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 553,
                      width: 300,
                      decoration: BoxDecoration(
                        color: contclr,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 55,
                          ),
                          Text(
                            resulttext,
                            style: const TextStyle(
                                fontSize: 20, color: Color(0xFF24D876)),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          Text(
                            bmiresult,
                            style: const TextStyle(
                              fontSize: 100,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 109,
                              ),
                              Text(
                                'GENDER: $gender',
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 109,
                              ),
                              Text(
                                "AGE: ${age.toString()}",
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              resultinter,
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: buttonclr,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const MyApp())),
                  child: const Text(
                    "RE-CALCULATE YOUR BMI",
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
