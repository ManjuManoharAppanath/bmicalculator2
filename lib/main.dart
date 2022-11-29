import 'package:flutter/material.dart';
import 'package:bmicalculator2/bmiresult.dart';
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: const MyApp(),));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double height=0;
  double weight=30;
  int age=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
            appBar: AppBar(backgroundColor: Colors.black,
              centerTitle: true,
              title: Text('BMI CALCULATOR',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
            ),),
      body:
      Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          color: Colors.blueGrey
                      ), height: 200,
                        width: 200,
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male,size: 70,color: Colors.white,),
                            Text('MALE',style: TextStyle(fontSize: 18,color: Colors.white38),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          color: Colors.blueGrey
                      ),
                        height: 200,
                        width: 200,
                        child: Center(
                          child: Column(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.female,size: 70,color: Colors.white,),
                              Text('FEMALE',style: TextStyle(fontSize: 18,color: Colors.white38),)

                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(children: [
                  Expanded(
                    child: Container(decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueGrey
                    ),
                      height: 200,
                      width: 200,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text('HEIGHT',style: TextStyle(fontSize: 18,color: Colors.white54),),
                        SizedBox(height: 10,),
                        Text('${height.toStringAsFixed(2)}cm',style: TextStyle(fontSize: 40,color: Colors.white38)),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Slider(value:height,
                              min: 0,
                              max: 20,
                              activeColor: Colors.white,
                              inactiveColor: Colors.white60,
                              thumbColor: Colors.red,
                              onChanged: (value)
                              {
                                setState(() {
                                  height=value;
                                });
                              }
                          ),
                        ),
                    ],),),
                  )
                ],),
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey
                ), height: 200,
                  width: 200,
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WEIGHT',style: TextStyle(fontSize: 18,color: Colors.white38),),
                      SizedBox(height: 10,),
                      Text('${weight}',style: TextStyle(fontSize: 40,color: Colors.white38)),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                        FloatingActionButton(
                          onPressed: (){
                            setState(() {
                              weight--;
                            });
                          },child: Text('-',style: TextStyle(fontSize: 20),),
                        backgroundColor: Colors.white10,
                        ),
                          FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                weight++;
                              });
                            },child: Text('+',style: TextStyle(fontSize: 20),),
                            backgroundColor: Colors.white10,
                          ),
                        ],),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey
                ), height: 200,
                  width: 200,
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('AGE',style: TextStyle(fontSize: 18,color: Colors.white38),),
                      SizedBox(height: 10,),
                      Text('${age}',style: TextStyle(fontSize: 40,color: Colors.white38),),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },child: Text('-',style: TextStyle(fontSize: 20),),
                              backgroundColor: Colors.white10,
                            ),
                            FloatingActionButton(
                              onPressed: (){
                               setState(() {
                                 age++;
                               });
                              },child: Text('+',style: TextStyle(fontSize: 20),),
                              backgroundColor: Colors.white10,
                            ),
                          ],),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(height: 50,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                          color: Colors.red
                        ),
                          child:
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> bmians(height,weight,age)));
                          },
                            child: Text('CALCULATE',style: TextStyle(fontSize: 20,color: Colors.white),),
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
          ],
      ),
      ),
      ),),
    );
  }
}
