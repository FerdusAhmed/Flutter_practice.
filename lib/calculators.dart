import 'package:flutter/material.dart';
import 'package:mypractice_project/wiget/mybuilder.dart';

class calculators extends StatefulWidget {
  const calculators({super.key});

  @override
  State<calculators> createState() => _calculatorsState();
}

class _calculatorsState extends State<calculators> {
  String outp = '0';
  String inpu = '0';
  String ope = '';
  double num1 = 0;
  double num2 = 0;

  void calling (String value)
  {
    setState(() {


        if(value == 'C')
        {
          outp = '0';
          inpu = '0';
          ope = '';
          num1 = 0;
          num2 = 0;
        }
        else if(value == '=')
        {
          num2 = double.parse(inpu);
          if(ope == '+')
          {
            outp = (num2+num1).toString();
          }
          else if(ope == '-')
          {
            outp = (num2+num1).toString();
          }
          else if(ope == 'x')
          {
            outp = (num2*num1).toString();
          }
          else if(ope == '/')
          {
            outp = (num2 != 0) ? (num2+num1).toString() : 'error';
          }
          inpu = outp;

        }
        else if(['+','-','x','/'].contains(value))
          {
            num1 = double.parse(inpu);
            ope = value;
            inpu = '';
          }
        else{
          if(inpu == '0')
            {
              inpu = value;
            }
          else
            {
              if(inpu == '0'){
              inpu = value;
            }
          else{
            inpu += value;
              }

      }
          outp = inpu;
        }

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: Text('calculator'),
      ),
      body: Expanded(
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(24),
                margin: EdgeInsets.all(25),
                alignment: Alignment.bottomRight,
                child: Text(outp,style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,
                ),),

              ),
            ),
            Row(
              children: [
                builder(onclick:()=> calling('7'), text: '7',),
                builder(onclick:()=>calling('8'), text: '8',),
                builder(onclick:()=>calling('9'), text: '9',),
                builder(onclick:()=>calling('/'), text: '/',colors: Colors.orange,),

              ],
            ),
            Row(
              children: [

              ],
            ),
            Row(
              children: [
                builder(onclick:()=> calling('4'), text: '4',),
                builder(onclick:()=>calling('5'), text: '5',),
                builder(onclick:()=>calling('6'), text: '6',),
                builder(onclick:()=>calling('x'), text: 'x',colors: Colors.orange,),
              ],
            ),
            Row(
              children: [
                builder(onclick:()=> calling('1'), text: '1',),
                builder(onclick:()=>calling('2'), text: '2',),
                builder(onclick:()=>calling('3'), text: '3',),
                builder(onclick:()=>calling('+'), text: '+',colors: Colors.orange,),
              ],
            ),
            Row(
              children: [
                builder(onclick:()=> calling('C'), text: 'C',colors: Colors.red,),
                builder(onclick:()=>calling('0'), text: '0',),
                builder(onclick:()=>calling('='), text: '=',colors: Colors.green,),
                builder(onclick:()=>calling('-'), text: '-',colors: Colors.orange,),
              ],
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}

