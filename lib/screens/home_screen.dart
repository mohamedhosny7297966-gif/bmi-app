import 'package:bmicalculator/screens/result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  bool isMale=false;
  int sliderValue=150;
  int weight=50;
  int age=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:InkWell( onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultScreen(
          height: sliderValue,weight: weight,
        )));
      },
        child: Container(
          height: 100,
          alignment: Alignment.center,
          color: Color(0xffE83D67),
          child:  Text(
            "Calculator",
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 20,
        centerTitle: true,
        title:  Text("BMI Calculator"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 26, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        if(!isMale){
                          setState(() {
                            isMale=true;
                          });
                        }
                      },
                      child: Container(
                        height: 155,
                        width: 140,
                        decoration: BoxDecoration(
                          color: isMale? Color(0xffE83D67): Color(0xff24263B),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:  Column(
                          children: [
                            Icon(Icons.male, color: Colors.white, size: 110),
                            Text(
                              "Male",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        if(isMale){
                          setState(() {
                            isMale=false;
                          });
                        }
                      },
                      child: Container(
                        height: 155,
                        width: 140,
                        decoration: BoxDecoration(
                          color: isMale? Color(0xff24263B) : Color(0xffE83D67),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:  Column(
                          children: [
                            Icon(Icons.female, color: Colors.white, size: 110),
                            Text(
                              "Female",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Container(
                height: 189,
                width: double.infinity,
                decoration: BoxDecoration(
                  color:  Color(0xff333244),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: sliderValue.toString(),
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: "cm",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Slider(
                      activeColor: Color(0xffE83D67),
                      min: 1, max: 250, value: sliderValue.toDouble(), onChanged: (value) {
                      if(sliderValue!=value.toInt()){
                        setState(() {
                          sliderValue=value.toInt();
                        });
                      }
                    },

                    ),
                  ],
                ),
              ),
              SizedBox(height: 29,),
              Row(
                children: [
                  Expanded(
                    child:
                    Container(
                      width: 155,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff333244),
                      ),
                      child: Column(
                        children: [
                          Text("Weight", style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),),
                          SizedBox(height: 5,),
                          Text(weight.toString(), style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton.small(
                                backgroundColor: Color(0xff8B8C9E),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                onPressed:(){
                                  if(weight>0){
                                    setState(() {
                                      weight--;
                                    });
                                  }
                                },child: Icon(Icons.remove, color: Colors.white,size: 30,),
                              ),
                              SizedBox(width: 12,),
                              FloatingActionButton.small(
                                backgroundColor: Color(0xff8B8C9E),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                onPressed:(){
                                  setState(() {
                                    weight++;
                                  });
                                },child: Icon(Icons.add, color: Colors.white,size: 30,),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 9,),
                  Expanded(child:
                  Container(
                    width: 155,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff333244),
                    ),
                    child: Column(
                      children: [
                        Text("ِAge", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),),
                        SizedBox(height: 5,),
                        Text(age.toString(), style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                        ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton.small(
                              backgroundColor: Color(0xff8B8C9E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              onPressed:(){
                                if(age>0){
                                  setState(() {
                                    age--;
                                  });
                                }
                              },child: Icon(Icons.remove, color: Colors.white,size: 30,),
                            ),
                            FloatingActionButton.small(
                              backgroundColor: Color(0xff8B8C9E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              onPressed:(){
                                setState(() {
                                  age++;
                                });
                              },child: Icon(Icons.add, color: Colors.white,size: 30,),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}