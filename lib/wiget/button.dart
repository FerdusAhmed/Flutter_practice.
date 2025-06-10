// import 'package:flutter/material.dart';
//
// class button extends StatelessWidget {
//   String text;
//   Color ? color;
//   final VoidCallback onClick;
//  button({
//     super.key, required this.onClick,
//     this.color,
//     required this.text,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: color ?? Colors.cyan,
//               padding: EdgeInsets.all(24),
//               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//
//             ),
//
//             onPressed: (){
//               onClick();
//             }, child: Text(text,style: TextStyle(
//           fontSize: 25,
//           color: Colors.white,
//         ),)),
//       ),
//     );
//   }
// }