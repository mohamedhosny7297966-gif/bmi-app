


import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final weight;
  final height;
  const ResultScreen({super.key, required this.weight, required this.height});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    double finalHeight = widget.height / 100;
    double bmiValue = widget.weight / (finalHeight * finalHeight);




    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI Calculator"),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Your Result", style: TextStyle(fontSize: 40, color: Colors.white,
              fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 100),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff333244),
              ),
              child: Column(
                children: [
                  Text( bmiText(bmiValue).text,
                    style: TextStyle(color: bmiText(bmiValue).color, fontSize: 20,),
                  ),
                  SizedBox(height: 30),
                  Text(
                    bmiValue.toStringAsFixed(2),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(bmiText(bmiValue).dsecription, style: TextStyle(color: Colors.white,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  BmiResult bmiText(double value){
    if(value<=18.4){
      return BmiResult(text: "UnderWeight", dsecription: "You are under the normal body weight. It’s recommended to eat more nutritious and balanced meals to reach a healthier weight.", color: Colors.yellow) ;
    }else if(value>=18.4&&value<=24.9){
      return BmiResult(text: "Normal", dsecription: "You have a normal body weight. Good job, keep maintaining a balanced lifestyle.", color: Colors.green);
    }else if (value>=24.9&&value<=39){
      return BmiResult(text: "overWeight", dsecription: "You are above the normal body weight. Consider regular exercise and a healthy diet to get back to the normal range." , color: Colors.orange);
    }else {

      return BmiResult(text: "Obese", dsecription: "You are in the obese range. It’s important to adopt healthier eating habits and physical activity to reduce health risks.", color: Colors.red);
    }
  }
}
class BmiResult{
  String text;
  String dsecription;
  Color color;

  BmiResult({required this.text,required this.dsecription,required this.color});


}