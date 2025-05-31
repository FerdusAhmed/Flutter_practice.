import 'package:flutter/material.dart';

class todo extends StatefulWidget {
  const todo({super.key});

  @override
  State<todo> createState() => _todoState();
}

class _todoState extends State<todo> {

  void delete(index)
  {
    setState(() {
      task.removeAt(index);
    });
  }
  void addtask(){
    if(taskcontrol.text.isNotEmpty)
      {
        setState(() {
          task.add(taskcontrol.text);
          taskcontrol.clear();
        });
      }
  }
  List<String> task = [];
  TextEditingController taskcontrol = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: Text('To do app', style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
          fontSize: 40,
        ),),
      ),

      body: Column(

        children: [
          SizedBox(height: 10,),

          Row(
            children: [

              Expanded(
                child: TextFormField(
                  controller: taskcontrol,

                  decoration: InputDecoration(
                    hintText: "enter title",
                    labelText: 'title',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                
                    )
                  ),
                ),
              ),
              SizedBox(width: 10,),
              ElevatedButton(onPressed: addtask, child: Text('Add',style: TextStyle(
                backgroundColor: Colors.yellow,

              ),)),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: task.length,
                itemBuilder: (context,index)
                {
                  return Card(
                    child: ListTile(
                      title: Text(task[index]),
                      trailing:
                        IconButton(onPressed: ()=> delete(index), icon: Icon(Icons.delete)),



                    ),
                  );
                }
            
            ),
          )
        ],
      ),

    );
  }
}
