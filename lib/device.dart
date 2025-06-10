import 'package:flutter/material.dart';

class device extends StatefulWidget {
  const device({super.key});

  @override
  State<device> createState() => _deviceState();
}

class _deviceState extends State<device> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: Text('preview'),
          bottom: TabBar(tabs:
              [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'home',
                ),
            Tab(
              icon: Icon(Icons.delete),
              text: 'delete',
                )
              ]

          )


        ),
        body: TabBarView(children: [
          Icon(Icons.home),
          Icon(Icons.delete)
        ]),
        drawer: Drawer(
          child: Column(
            children: [

              DrawerHeader(


                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,

                        backgroundImage: NetworkImage('https://tse3.mm.bing.net/th?id=OIP.haV-7CUBgU__fE6wFBr3EQHaHa&pid=Api&P=0&h=220'),
                      ),
                      Text('facebook'),
                    ],
                  )
              ),
              ListTile(
                title: Text('home'),
              ),
              Divider(

                thickness: 6,
                height: 4,
                color: Colors.red,
              ),
              ListTile(

                leading: Icon(Icons.fork_right),
                title: Text('ok'),
                onTap: ()=> Icons.navigation,
              ),
            ],

          ),

        ),
      ),
    );
  }
}
