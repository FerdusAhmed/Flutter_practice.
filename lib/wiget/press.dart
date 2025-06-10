import 'package:flutter/material.dart';

class press extends StatelessWidget {
  int amo;
  IconData ? icon;
  final VoidCallback onclick;
  press({
    super.key, required this.onclick, this.icon, required this.amo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(

        width: double.infinity,
        height: 30,
        child: ElevatedButton.icon(

          icon: Icon(icon ?? Icons.water_drop),

          onPressed: ()=>onclick(), label: Text('add $amo LTR'),),
      ),
    );
  }
}