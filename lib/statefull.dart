import 'package:flutter/material.dart';
import 'package:mypractice_project/wiget/citycard.dart';


class mystatefull extends StatefulWidget {
  const mystatefull({super.key});

  @override
  State<mystatefull> createState() => _mystatefullState();
}

class _mystatefullState extends State<mystatefull> {
  int c = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: Text('staetfull',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,



    child:   Center(



          child:

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(c.toString()),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      setState(() {
                        c++;
                      });
                    }, child: Text('+',style: TextStyle(
                        color: Colors.yellow,fontWeight: FontWeight.bold),)),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        c--;
                      });
                    }, child: Text('-',style: TextStyle(
                        color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  ],

                ),
              ),
SizedBox(height: 10,),
SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(

    children: [
      Center(

        child: citycard(image: 'https://tse1.mm.bing.net/th?id=OIP.mIc85Z7OdHvpttd-IABQBQHaE7&pid=Api&P=0&h=220', city: 'maldives',),
      ),
      SizedBox(
        width: 10,
      ),
      Center(

        child: citycard(image: 'https://tse4.mm.bing.net/th?id=OIP.C9P3D_qs75jib3Vh0IfrUAHaE8&pid=Api&P=0&h=220',city: '2nd maldives',),
      ),
      SizedBox(
        width: 10,
      ),
      Center(

        child: citycard(image: 'https://tse1.mm.bing.net/th?id=OIP.mIc85Z7OdHvpttd-IABQBQHaE7&pid=Api&P=0&h=220', city: 'maldives3rd'),
      ),
      SizedBox(
        width: 10,
      ),



    ],

  ),
),



            ],
            
            

          )

      ),
    ),

    );
  }
}


