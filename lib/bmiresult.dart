import 'package:bmicalculator2/main.dart';
import 'package:flutter/material.dart';

class bmians extends StatefulWidget {
  double h;
  double w;
  int a;
  bmians(this.h,this.w,this.a);
  @override
  State<bmians> createState() => _bmiansState();
}

class _bmiansState extends State<bmians> {
  double calc=0;
  bmi()
  {
    double ans=(widget.w)/(widget.h*widget.h);
    setState(() {
      calc=ans;
    });
  }
  @override
  void initState() {
    super.initState();
    bmi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text('Result',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Expanded
            (
            child: Container(
              height: 200,
              // width: 200,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.black12),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(children: [
                      Text('BMI ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text('HEIGHT    ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text('WEIGHT  ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(children: [
                      Text('${calc.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text('${widget.h.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text('${widget.w}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ],),
                  )
                  ],)
                  ),
              ),
            ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Expanded(
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.red),
              height: 50,
              // width: 200,
              child: TextButton(onPressed: (){
                Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (BuildContext context)=>MyApp()
                ),
                  );
              }, child: Text('calculate again'),),
            ),
          ),
        ),
      ],),
    ));
  }
}
