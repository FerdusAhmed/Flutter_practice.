import 'package:flutter/material.dart';
import 'loginpage.dart';

class Thisishome extends StatelessWidget {
  final String name;
  const Thisishome({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.cyan.withOpacity(0.7),
      

      appBar: AppBar(


        title: Text('Home page'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),



      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(

        child: Column(
          children: [

            Text(name,style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),),

           ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text('back')),
           Text('this is body',style:
           TextStyle(color: Colors.yellowAccent,
             fontWeight: FontWeight.bold,
             fontSize: 50,

           )
           ),

            InkWell(
              onLongPress: ()
                {
                  print('double');
                },
                child: Icon(Icons.add,color: Colors.black,)),

          IconButton(onPressed: (){
            
          },icon: Icon(Icons.search,color: Colors.white,),),
          OutlinedButton(onPressed: (){

          }, child: Text('button',style: TextStyle(color: Colors.red, fontSize: 20,fontWeight: FontWeight.bold),)),

            SizedBox(
              height: 50,
            ),
            TextButton(onPressed: (){}, child: Text('ferdus')),

             SizedBox(
               width: double.infinity,
               child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.red,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10),
                     ),
                   ),

                   onPressed: (){

                   },

                   child: Text('this button',)),
             ),

            Text(
             // softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              'fsahgrfawuirfsdhfuaghjdvasvasfvjasdjahdfancbhasgfuyadfghcvxdaGDVHDFHAFVUYWFGDUYASGVCASVCGHAFDUGDFHSAVCGHCASNVYAFDFGASVCGHSVDYQTWFDASGHCVASDFYASGVDAGHSCVASGCFGHASVDASHDGUYHASGVDFYASVCASGHCVASGHDFUYAS'
            ),
SizedBox(
  height: 6,
),
Container(
  alignment: Alignment.center,
  margin: EdgeInsets.only(left: 6),
padding: EdgeInsets.all(5),
  height: 200,
    width: 300,
  decoration: BoxDecoration(
    color: Colors.green,
    borderRadius: BorderRadius.circular(60.80),
    
    boxShadow: [
      BoxShadow(
        color: Colors.yellowAccent,
        offset: Offset(6, 7),
        blurRadius: 15,
      )
    ],

  ),

  
  child: Center(
    child: Column(
      children: [
        Text('hello conteiner',style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),)
      ],
    ),
  ),


),
            SizedBox(
              height: 50,
            ),

            TextField(
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'enter it',
                labelText: 'hi',
                prefix: Icon(Icons.delete,color: Colors.red,),
                labelStyle: TextStyle(
                  color: Colors.orange,
                  fontSize: 57,
                ),
                
                border: OutlineInputBorder(
                  
                )
              ),
            )
          ],
        ),
        ),

      ),

floatingActionButton: FloatingActionButton(onPressed: (){},
child: Icon(Icons.add),
  backgroundColor: Colors.grey,
),




    );


  }
}
