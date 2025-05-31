import 'package:flutter/material.dart';

class citycard extends StatelessWidget {
  final String image,city;
  const citycard({
    super.key, required this.image, required this.city,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(

            children: [Image.network(image),
              Positioned(
                  right: 10,
                  bottom: 10,
                  child: Container(

                child: Text(city,style: TextStyle(
                  backgroundColor: Colors.red,
                ),),
              ))
            
            
            ],),
          SizedBox(height: 5,),
          Text(city),
        ],
      ),

    );
  }
}