import 'package:flutter/material.dart';
import 'package:mypractice_project/wiget/press.dart';


class water extends StatefulWidget {
  const water({super.key});

  @override
  State<water> createState() => _waterState();
}

class _waterState extends State<water> {


int crvalue = 0;
final goal = 2000;

void addwat(int amo)
{
  setState(() {
    crvalue = (crvalue+amo).clamp(0, goal);
  });
}
void reset()
{
  setState(() {
    crvalue = 0;
  });
}

  @override
  Widget build(BuildContext context) {
  double pro = (crvalue/goal).clamp(0.0, 1.0);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('water'),
        centerTitle: true,

      ),
      body: Column(


        children: [
          SizedBox(height: 20,width: 20,),
          Container(

            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.yellow,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 2,
                  color: Colors.blueGrey,
                )
              ]
            ),
            child: Column(
              children: [
                Text('in tank',style: TextStyle(
                  color: Colors.cyan,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),),
                SizedBox(height: 20,),
                Text('$crvalue LTR',style: TextStyle(
                  color: Colors.cyan,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,),),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                child: CircularProgressIndicator(

                  value: pro,
                  color: Colors.green,
                  backgroundColor: Colors.red,
                  strokeWidth: 10,
                ),

              ),
              Text('${(pro*100).toInt()}%',style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 30,
              ),),
            ],
          ),
          SizedBox(height: 30,),
          Wrap(
            children: [
              press(onclick: ()=> addwat(200),
                icon: Icons.local_drink,
                amo: 200,),
              press(onclick: ()=>addwat(500),
                amo: 500,),
              press(onclick: ()=> addwat(1000),
               amo: 1000,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  
                  child: ElevatedButton(

                      style: ElevatedButton.styleFrom(
                        alignment: Alignment.center,

                        backgroundColor: Colors.red,
                      ),
                      onPressed: ()=>reset(), child: Text('Reset')),
                ),
              )
            ],
          )
        ],
      ),



    );
  }
}




