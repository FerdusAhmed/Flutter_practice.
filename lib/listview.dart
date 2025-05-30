import 'package:flutter/material.dart';

class listview extends StatelessWidget {
  const listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,

      appBar: AppBar(
        title: Text('list page'),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),

      body: ListView.builder(
          itemCount: 50,
          itemBuilder:(context, index){
            return Card(
              child: ListTile(
                leading: Icon(Icons.phone),
                trailing: Icon(Icons.delete),
                title: Text('ferdus'),
                
                subtitle: Text('0176584585656 $index'),
              ),
            );
          }


      ),

 );
  }
}
