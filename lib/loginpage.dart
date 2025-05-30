import 'package:flutter/material.dart';
import 'package:mypractice_project/home.dart';
class loging extends StatelessWidget {

  const loging({super.key});

  @override
  Widget build(BuildContext context) {
    final keyform = GlobalKey<FormState>();
    TextEditingController phone = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Text('Login page'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,


        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Image.network('https://image.cnbcfm.com/api/v1/image/20836891-facebook_logo_new.jpg?v=1354732729&w=1920&h=1080',
              width: 200,
              height: 200,
             ),

//Image.asset('img.png'),
              SizedBox(
                height: 10,
              ),

              Text('Login by entering your password',style: TextStyle(
                color: Colors.yellowAccent,
                fontWeight: FontWeight.bold,

              ),),
              SizedBox(
                height: 10,
              ),

              Form(
                key: keyform,

                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        controller: phone,
                        decoration: InputDecoration(
                          hintText: 'enter phone number',
                          labelText: 'num',
                          labelStyle: TextStyle(color: Colors.red),
                          prefix: Icon(Icons.phone),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          )

                        ),
                        validator: (value){
                          if(value == null || value.isEmpty)
                          {
                            return 'enter your number';
                          }
                          else{
                            return null;
                          }
                        },
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        obscureText: true,
                        controller: password,
                        decoration: InputDecoration(
                          hintText: ' enter password',
                          labelText: 'pass',
                          labelStyle: TextStyle(color: Colors.red),
                          prefix: Icon(Icons.password),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          )

                        ),
                        validator: (value){
                          if(value == null || value.isEmpty)
                          {
                            return 'enter your password';
                          }
                          else{
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),


                      ElevatedButton(onPressed: (){
                        if(keyform.currentState!.validate())
                          {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('login succesful')));
                          }
                        Navigator.push

                          (context,
                            MaterialPageRoute(builder: (context)=> Thisishome(name: phone.text,)));
                      },

                          child: Text('login',style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      )

                      ),


                    ],
                  )



              ),

            ],
          ),
        ),
      ),
    );
  }
}
