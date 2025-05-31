import 'package:flutter/material.dart';

class mediaquery extends StatefulWidget {
  const mediaquery({super.key});

  @override
  State<mediaquery> createState() => _mediaqueryState();
}

class _mediaqueryState extends State<mediaquery> {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    double fonts = screen.width > 600 ? 32 :18;
    double pixel = MediaQuery.of(context).devicePixelRatio;
    return Scaffold(
      body:

      Container(
        height: screen.height,
        width: screen.width,
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: screen.width*0.5,
                height: screen.height*0.5,
                color: Colors.red,
              ),
            ),
            Text('this is media querykjghuiergoie',style: TextStyle(
              fontSize: fonts,
            ),),
            Text('pixel $pixel'),

            Wrap(
              spacing: 4.0,
              runSpacing: 2.0,
              children:
                List.generate(10, (index)
            {
              //return Chip(label: Text('Item $index'));
              return Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,

              );
            }
            ),

            ),
            // Expanded(
            //   child: LayoutBuilder(builder: (context, constraints)
            //   {
            //     if(constraints.maxWidth > 600){
            //
            //       return GridView.count(crossAxisCount: 3);
            //     }
            //     else
            //     {
            //       return GridView.count(crossAxisCount: 2);
            //     }
            //   }
            //
            //   ),
            // ),
          ],

        ),

      ),
    );
  }
}
