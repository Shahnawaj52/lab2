import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: "To Do App",
      debugShowCheckedModeBanner: false,
      home: ToDoApp(),
      //theme: ThemeData.dark(),
    );
  }
}

class ToDoApp extends StatelessWidget{
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 5, 82, 145),
        title: Text("To Do App"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                duration: Duration(milliseconds: 40),
                content: Text("Search was pressed")));
              },
             icon: Icon(Icons.search_outlined),
             )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
               color: Colors.blueAccent 
              ),
              child: Text(
                "Menu",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),))
          ],
        ),
      ),
    );
  }
}
