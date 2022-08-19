import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'CardChildChild.dart';
import 'CardContent.dart';
import 'RadialGauge.dart';
import 'ReuseableCard.dart';
import 'wheelselector2.dart';
import 'wheelselector3.dart';

const activeCardColor = Color(0xFF42C3A7);
const inactiveCardColor = Colors.white;
const textColor = Color(0xFF182748);

class InputPage2 extends StatefulWidget {
  const InputPage2({Key? key}) : super(key: key);

  @override
  InputPageState createState() => InputPageState();
}

enum Gender { male, female }

class InputPageState extends State<InputPage2> {
  bool small = false;

  Gender selectedGender = Gender.male;
  final double calculateHeight = 70;
  int height = 180;
  int weight = 20;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final textScale = mediaQueryData.textScaleFactor.clamp(0.8, 1.05);

    return Scaffold(
        backgroundColor: const Color(0xFFF9FAFC),
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Text(
                  'BMI Calculator',
                  style: TextStyle(
                    fontSize: 30.0 * textScale,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: ReuseableCard(
                        colour: selectedGender == Gender.male
                            ? activeCardColor
                            : inactiveCardColor,
                        CardChild: childcardcontent(
                          gender: 'MALE',
                          genderSymbol: FontAwesomeIcons.mars,
                          iconcolor: selectedGender == Gender.male
                              ? Colors.white
                              : textColor,
                        ),
                      ),
                    )),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: ReuseableCard(
                          colour: selectedGender == Gender.female
                              ? activeCardColor
                              : inactiveCardColor,
                          CardChild: childcardcontent(
                            gender: 'FEMALE',
                            genderSymbol: FontAwesomeIcons.venus,
                            iconcolor: selectedGender == Gender.female
                                ? Colors.white
                                : textColor,
                          )),
                    ))
                  ],
                )),
                Expanded(
                  child: ReuseableCard(
                      colour: Colors.white,
                      CardChild: Container(
                        margin: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            SizedBox(
                              width: 40,
                            ),
                            Expanded(
                                child: Text(
                              'Age -',
                              style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                  color: textColor),
                            )),
                            Expanded(
                              child: wheelselector2(whichwheel: true),
                            ),
                            Expanded(
                                child: Text(
                              'Years',
                              style: TextStyle(fontSize: 25, color: textColor),
                            )),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      )),
                ),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                      child: ReuseableCard(
                          colour: inactiveCardColor,
                          CardChild: CardChildChild(
                            title: 'Height',
                          )),
                    ),
                    Expanded(
                        child: ReuseableCard(
                      colour: inactiveCardColor,
                      CardChild: Column(children: [
                        const SizedBox(
                          height: 25,
                        ),
                        const Expanded(
                            child: Text(
                          'Weight',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: textColor),
                        )),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(child: wheelselector3()),
                              const Expanded(
                                  child: Text(
                                'kg',
                                style:
                                    TextStyle(fontSize: 25, color: textColor),
                              )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                      ]),
                    ))
                  ],
                )),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        small = !small;
                        //CalculateBmi calc = CalculateBmi(height: height, weight: weight);
                      });
                    },
                    child: AnimatedContainer(
                      height: small ? 220 : calculateHeight,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: activeCardColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade500,
                              blurRadius: 15.0,
                              spreadRadius: 1.0,
                              offset: (const Offset(4.0, 4.0)),
                            ),
                            const BoxShadow(
                              color: Colors.white,
                              blurRadius: 15.0,
                              spreadRadius: 1.0,
                              offset: (Offset(-4.0, -4.0)),
                            )
                          ]),
                      curve: Curves.fastOutSlowIn,
                      duration: const Duration(milliseconds: 800),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            small ? 'Result' : 'Calculate',
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      AnimatedDefaultTextStyle(
                                          style: TextStyle(
                                              fontSize: small ? 15 : 0,
                                              fontWeight: FontWeight.w600,
                                              color: small
                                                  ? Colors.white
                                                  : activeCardColor),
                                          duration:
                                              const Duration(milliseconds: 500),
                                          child: const Text('Your BMI is')),
                                      SizedBox(
                                        height: small ? 10 : 0,
                                      ),
                                      AnimatedDefaultTextStyle(
                                          style: TextStyle(
                                              fontSize: small ? 50 : 0,
                                              fontWeight: small
                                                  ? FontWeight.bold
                                                  : FontWeight.w100,
                                              color: small
                                                  ? Colors.white
                                                  : activeCardColor),
                                          duration:
                                              const Duration(milliseconds: 500),
                                          child: const Text('20.3')),
                                      SizedBox(
                                        height: small ? 5 : 0,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RadialGauge(
                                        animate: small ? false : true,
                                        baseTextSize: small ? 25 : 0,
                                        yellow: small
                                            ? Colors.yellow
                                            : activeCardColor,
                                        green: small
                                            ? Colors.green
                                            : activeCardColor,
                                        orange: small
                                            ? Colors.orange
                                            : activeCardColor,
                                        red: small
                                            ? Colors.red
                                            : activeCardColor,
                                        axixline:
                                            small ? textColor : activeCardColor,
                                        needle1:
                                            small ? textColor : activeCardColor,
                                        needle2:
                                            small ? textColor : activeCardColor,
                                        baseTextColor: small
                                            ? Colors.white
                                            : activeCardColor,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
