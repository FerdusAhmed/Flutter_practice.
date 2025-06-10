import 'package:flutter/material.dart';

class builder extends StatelessWidget {
  String text;
  Color ? colors;
  final VoidCallback onclick;
  builder({
    super.key, required this.onclick,
    required this.text,
    this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: Padding(

        padding: const EdgeInsets.all(8.0),

        child: ElevatedButton(


            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(24),



                backgroundColor: colors ?? Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
            ),
            onPressed: (){
              onclick();
            }, child: Text(text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),)),
      ),
    );
  }
}
