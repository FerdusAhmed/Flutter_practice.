import 'package:flutter/material.dart';

class Gridv extends StatelessWidget {
  const Gridv({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(

        backgroundColor: Colors.cyan,
        title: Text('Gridview page'),
        centerTitle: true,

      ),
body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,

    crossAxisSpacing: 4,
  mainAxisSpacing: 5,


),
    itemCount: 10,
    itemBuilder: (context,index)
    {
      return Container(
       // color: Colors.teal,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          color: Colors.teal,
        ),
        child: Column(

          children: [
            const Icon(Icons.add),
            SizedBox(
              height: 10,
            ),
            Text('ferdus')
          ],
        ),
      );
    },

),
    );
  }
}

