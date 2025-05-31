import 'package:flutter/material.dart';

class citycard extends StatelessWidget {
  const citycard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network('https://tse3.mm.bing.net/th?id=OIP.216g-WQs1oH6fyKe00KdZgHaEK&pid=Api&P=0&h=220'),
          SizedBox(height: 5,),
          Text('city',style: TextStyle(
            color: Colors.blue,
          ),),
        ],
      ),

    );
  }
}