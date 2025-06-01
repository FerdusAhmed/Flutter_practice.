import 'package:flutter/material.dart';


class class3 extends StatefulWidget {
  const class3({super.key});

  @override
  State<class3> createState() => _class3State();
}

class _class3State extends State<class3> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('new widget'),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'home',

            ),
            Tab(
              icon: Icon(Icons.settings),
              text: 'Setting',

            ),

          ]

          ),
        ),

        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Column(
                children: [
                  CircleAvatar(
                    radius: 42,
                    backgroundImage: NetworkImage('https://tse4.mm.bing.net/th?id=OIP.rSo2vdp_6BPEW7xpCuSQSAHaEo&pid=Api&P=0&h=220'),
                  ),
                  SizedBox(height: 10,),
                  Text('Dhaka'),
                ],
              )),

              ListTile(
                title: Text('home'),
                onTap: (){},
              ),
              Divider(
                thickness: 10,
                color: Colors.red,
              ),
              ListTile(
                title: Text('item'),
                onTap: (){},
              ),
              Divider(
                thickness: 10,
                color: Colors.red,
              ),
              ListTile(
                title: Text('2'),
                onTap: (){},
              ),
              Divider(),

            ],
          ),

        ),
        body: TabBarView(
          children: [
            Icon(Icons.home,size: 100,),
            Icon(Icons.settings,size: 100,),
          ],
        )
      ),
    );
  }
}
