import 'dart:math';

import 'package:bmi_calculator/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BmiCalculatorScreen extends StatefulWidget {

  @override
  State<BmiCalculatorScreen> createState() => _BmiCalculatorScreenState();
}

class _BmiCalculatorScreenState extends State<BmiCalculatorScreen> {

  bool isMale = true;
  double  height = 120.0;
  double weight =50.0;
  double age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState((){
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(10.0),
                          color: isMale ? Colors.blueAccent[100] :Colors.grey[300],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image:
                            AssetImage('assests/images/male.png'),
                              width: 100.0,
                              height: 100.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState((){
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(10.0),
                            color: !isMale ? Colors.blueAccent[100] :Colors.grey[300],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image:
                            AssetImage('assests/images/female.png'),
                              width: 100.0,
                              height: 100.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(10.0),
                  color: Colors.grey[300],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '${height.round()}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w900
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Cm',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Slider(
                        value: height,
                        min: 80.0,
                        max: 200.0,
                        onChanged: (value)
                        {
                          setState((){
                            height = value;
                          });
                        }
                    ),
                  ]
                ),
              ),
            ),
          ),
          Expanded(
             child: Padding(
               padding: const EdgeInsets.all(20.0),
               child: Row(
                 children: [
                   Expanded(
                     child: Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadiusDirectional.circular(10.0),
                         color: Colors.grey[300],
                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text(
                             'WEIGHT',
                             style: TextStyle(
                               color: Colors.black,
                               fontSize: 25.0,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                           Text(
                             '${weight.round()}',
                             style: TextStyle(
                                 color: Colors.black,
                                 fontSize: 40.0,
                                 fontWeight: FontWeight.w900
                             ),
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               FloatingActionButton(
                                   onPressed: (){
                                     setState((){
                                       weight--;
                                     });
                                   },
                                 heroTag: 'weight-',

                                 mini: true,
                                 child: Icon(
                                   Icons.remove,
                                   color: Colors.white,
                                 ),
                               ),
                               SizedBox(
                                 width: 10.0,
                               ),
                               FloatingActionButton(
                                 onPressed: (){
                                   setState((){
                                     weight++;
                                   });
                                 },
                                 heroTag: 'weight+',
                                 mini: true,
                                 child: Icon(
                                   Icons.add,
                                   color: Colors.white,
                                 ),
                               ),

                             ],
                           ),
                         ],
                       ),
                     ),
                   ),
                   SizedBox(
                     width: 10.0
                   ),
                   Expanded(
                     child: Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadiusDirectional.circular(10.0),
                         color: Colors.grey[300],
                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text(
                             'AGE',
                             style: TextStyle(
                               color: Colors.black,
                               fontSize: 25.0,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                           Text(
                             '${age.round()}',
                             style: TextStyle(
                                 color: Colors.black,
                                 fontSize: 40.0,
                                 fontWeight: FontWeight.w900
                             ),
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               FloatingActionButton(
                                 onPressed: (){
                                   setState((){
                                     age--;
                                   });
                                 },
                                 heroTag: 'age-',
                                 mini: true,
                                 child: Icon(
                                   Icons.remove,
                                   color: Colors.white,
                                 ),
                               ),
                               SizedBox(
                                 width: 10.0,
                               ),
                               FloatingActionButton(
                                 onPressed: (){
                                   setState((){
                                     age++;
                                   });
                                 },
                                 heroTag: 'age+',
                                 mini: true,
                                 child: Icon(
                                   Icons.add,
                                   color: Colors.white,
                                 ),
                               ),

                             ],
                           ),
                         ],
                       ),
                     ),
                   ),
                 ],
               ),
             ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blueAccent[200],
            child: MaterialButton(
                onPressed: (){
                  var result = weight / pow(height/ 100 , 2);
                  Navigator.push(
                      context,
                     MaterialPageRoute(builder: (context)=> BmiResultScreen(
                       age: age,
                       result: result,
                       gender: isMale,
                     )
                     )
                  );
                },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15.0
                ),
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
