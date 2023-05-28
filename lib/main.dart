import 'package:amazon_clone/constants/global.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommers Clone',
      theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          )),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Hello'),
          ),
          body: Container(
            child: Column(
              children: [
                CatItems(),
                Body(),
                SubTitle(),
                bottom(),
              ],
            ),
          )),
    );
  }
}

class bottom extends StatelessWidget {
  const bottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 200,
        color: Colors.purple,
        child: GridView.count(crossAxisCount: 4,
        children: [
          Padding(padding: 
          const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Colors.blue
            ),
          ),
          ),
          Padding(padding: 
          const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Colors.blue
            ),
          ),
          ),
          Padding(padding: 
          const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Colors.blue
            ),
          ),
          ),
          Padding(padding: 
          const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Colors.blue
            ),
          ),
          ),
        ],
        ),
      ),
    );
  }
}

class SubTitle extends StatelessWidget {
  const SubTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 200,
        color: Colors.green,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
         child: Container(
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            color: Colors.pink
          ),
         ),
          ),
          itemCount: 10, scrollDirection: Axis.horizontal,
        
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
              ),
              title: Text("hello"),
              subtitle: Text("Mob No"),
              trailing: Icon(Icons.delete),
            ),
          ),
        ),
      ),
    );
  }
}

class CatItems extends StatelessWidget {
  const CatItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.red,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(11.0),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.green,
              ),
            ),
          ),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
        ),
      ),
    );
  }
}
