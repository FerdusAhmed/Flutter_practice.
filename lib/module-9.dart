import 'package:flutter/material.dart';

class ratio extends StatefulWidget {
  const ratio({super.key});

  @override
  State<ratio> createState() => _ratioState();
}

class _ratioState extends State<ratio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ratio'),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(



          children: [
            
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 5)
              ),
              height: 300,

              
              child: FractionallySizedBox(
                heightFactor: .1,
                child: Container(
                  color: Colors.yellow,
                  child: Center(child: Text('this is me')),
                ),
              ),
            ),
            
            FractionallySizedBox(
              widthFactor: 0.7,
              child: ElevatedButton(onPressed: (){}, child: Text('submit')),
            ),
            Row(
              children: [
                Expanded(
                    child: ElevatedButton(onPressed: (){}, child: Text('Button 1'))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text('Button 2'))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text('Button 3'))),
              ],
            ),
            Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(

                    height: 50,
                    color: Colors.pink,
                  
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 50,
                    color: Colors.yellow,
                  
                  ),
                )
              ],
            ),


            AspectRatio(aspectRatio: 16 / 9,
          child:   Container(
              color: Colors.green,
            ),
            ),
        AspectRatio(aspectRatio: 9 / 16,
        child: Container(
          color: Colors.redAccent,
        ),
        )
          ],
        ),
      ),
    );
  }
}
