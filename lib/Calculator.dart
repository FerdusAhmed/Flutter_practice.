// import 'package:flutter/material.dart';
// import 'package:mypractice_project/wiget/button.dart';
//
// class calculator extends StatefulWidget {
//   const calculator({super.key});
//
//   @override
//   State<calculator> createState() => _calculatorState();
// }
//
// class _calculatorState extends State<calculator> {
//   String output = '0';
//   String input = '0';
//   String ope = '0';
//   double num1 = 0;
//   double num2 = 0;
//  String expe = '';
//
//   void buttoner(String value)
//   {
//     setState(() {
//   print(value);
//   if(value == 'C')
//   {
//   ope = ' ';
//   output = '0';
//   input = '0';
//   num1 = 0;
//   num2 = 0;
//   expe = '';
//   }
//   else if(value == 'D')
//     {
//       if(input.isNotEmpty)
//         {
//           input.rem
//         }
//     }
//
//   else if(value == '=')
//   {
//   num2 = double.parse(input);
//   if(ope == '+')
//   {
//   output = (num1+num2).toString();
//   }
//   else if(ope == '-')
//   {
//   output = (num1-num2).toString();
//   }
//   else if(ope == '*')
//   {
//   output = (num1*num2).toString();
//   }
//   else if(ope == '/')
//   {
//   output = (num2 != 0) ? (num1/num2).toString() : 'syntax error';
//   }
//
//   input = output;
//   expe = input;
//   }
//   else if(['+','-','*','/'].contains(value))
//   {
//     num1 = double.parse(input);
//     ope = value;
//     expe = input + value;
//     input = '';
//   }
//   else if(value == '.')
//     {
//       if(!input.contains('.'))
//         {
//           input += '.';
//         }
//       expe = '.';
//     }
//   else
//   {
//     if(input == '0')
//       {
//         input = value;
//       }
//     else
//       {
//         input += value;
//       }
//     expe += value;
//
//     output = input;
//   }
//
//   });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Colors.orange,
//         title: Text('Calculator'),
//       ),
//       backgroundColor: Colors.black,
//       body: Column(
//
//         children: [
//           Expanded(
//             child: Container(
//               alignment: Alignment.bottomRight,
//               margin: EdgeInsets.all(24),
//               padding: EdgeInsets.all(20),
//               child: Text(output,style: TextStyle(
//                 fontSize: 50,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//
//
//               ),),
//             ),
//           ),
//           Row(
//             children: [
//               button(onClick: ()=>buttoner('7'), text: '7',),
//               button(onClick: ()=>buttoner('8'), text: '8',),
//               button(onClick: ()=>buttoner('9'), text: '9',),
//               button(onClick: ()=>buttoner('/'), text: '/',color: Colors.orange,),
//
//
//             ],
//           ),
//           Row(
//             children: [
//               button(onClick:()=>buttoner('4'), text: '4',),
//               button(onClick:()=>buttoner('5'), text: '5',),
//               button(onClick: ()=>buttoner('6'), text: '6',),
//               button(onClick: ()=>buttoner('*'), text: '*',color: Colors.orange,),
//
//
//             ],
//           ),
//           Row(
//             children: [
//               button(onClick: ()=>buttoner('1'), text: '1',),
//               button(onClick:()=>buttoner('2'), text: '2',),
//               button(onClick:()=>buttoner('3'), text: '3',),
//               button(onClick: ()=>buttoner('D'), text: 'D',color: Colors.yellowAccent,),
//               button(onClick: ()=>buttoner('-'), text: '-',color: Colors.orange,),
//
//
//             ],
//           ),
//           Row(
//             children: [
//               button(onClick:()=>buttoner('C'), text: 'C',color: Colors.red,),
//               button(onClick:()=>buttoner('0'), text: '0',),
//               button(onClick:()=>buttoner('.'), text: '.',color: Colors.cyan,),
//               button(onClick: ()=>buttoner('='), text: '=',color: Colors.green,),
//               button(onClick:()=>buttoner('+'), text: '+',color: Colors.orange,),
//
//
//
//             ],
//           ),
//
//         ],
//
//
//       ),
//     );
//   }
// }
//
//
