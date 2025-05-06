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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo, T2308A'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _onTapSelected(int index){
    print(index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("My Class",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children:  [
            SizedBox(
              height: 96,
              child: DrawerHeader(
                  decoration: BoxDecoration(color: Colors.black12),
                  child: Text("Drawer Header")),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),),
              onTap: () => _onTapSelected(0)
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings", style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.normal),),
              onTap: () => _onTapSelected(1),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("About Us", style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.normal),),
              onTap: ()=>_onTapSelected(2),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
