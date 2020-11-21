





import 'package:flutter/material.dart';

void main()=>runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  TextEditingController getnumber1=TextEditingController();
  TextEditingController getnumber2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.amber,
      title: Text("Math App"),
),

      body: Container(
        padding: EdgeInsets.all(35.5),

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

            TextField(
              controller: getnumber1,

              decoration: InputDecoration(

                  hintText: " enter a number",

                  border: OutlineInputBorder()
 ),

),
SizedBox(height: 20.0),

         TextField(
           controller: getnumber2,
            decoration: InputDecoration(
              hintText: "enter another number",
              border: OutlineInputBorder()
            ),
         ),

SizedBox(height: 20.0),



RaisedButton(
  color: Colors.brown,
  onPressed: (){

    int getnum1=int.parse(getnumber1.text);
    int getnum2=int.parse(getnumber2.text);


    int result=getnum1+getnum2;
    print(result);
},

child: Text("SUM"),
),
            
            RaisedButton(
              
              color: Colors.greenAccent,
              onPressed: (){
                int getnum1=int.parse(getnumber1.text);
                int getnum2=int.parse(getnumber2.text);
                 
                int result=getnum1-getnum2;
                print(result);
                
              
            },
              
              child: Text("Difference"),
            ),

            RaisedButton(
              color: Colors.blue,
              onPressed: (){
                int getnum1=int.parse(getnumber1.text);
                int getnum2=int.parse(getnumber2.text);

                int result=getnum1*getnum2;
                print(result);
            },
            child: Text("Product"),
            ),

            RaisedButton(
              color: Colors.black12,
              onPressed: (){
                double getnum1=double.parse(getnumber1.text);
                double getnum2=double.parse(getnumber2.text);

              double result= getnum1/getnum2;

              print(result);
            },
              child: Text("DIVISION"),
            ),

],
),
),
    ),
    );
  }
}
