import 'package:flutter/material.dart';

class mystateful extends StatefulWidget {
  const mystateful({super.key});

  @override
  State<mystateful> createState() => _mystatefulState();
}

class _mystatefulState extends State<mystateful> {
  int c = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Stateful page'),
      ),

      body: Center(
        child: Column(

          children: [
            ElevatedButton(onPressed: (

                ){
              setState(() {
                c++;
              });
            }, child: Text('increment',style: TextStyle(fontWeight: FontWeight.bold),)),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(onPressed: (

                ){
             setState(() {
               c--;
             });
            }, child: Text('decrement',style: TextStyle(fontWeight: FontWeight.bold),)),
            Text(c.toString()),
          ],
        ),
      ),
    );
  }
}
