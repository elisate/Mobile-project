import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "online buy app",
      home: Firstpage(),
    );
  }
}

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: const Icon(Icons.shopify),
        title: Text("Online Buy App"),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
      ]),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Secondpage(data: 'Buying platform'),
                  ),
                );
              },
              child: Text('Go TO PLATFORM'),
            )
          ],
        ),
      ),
    );
  }
}

class Secondpage extends StatelessWidget {
  final String data;
  Secondpage({
    Key? key,
    required this.data,
  }) : super(key: key ?? const ValueKey('default_key'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: "shopping",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "cart",
          )
        ],
        selectedIconTheme: IconThemeData(color: Colors.black),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("WELCOME TO E-SHOP"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('WELCOM TO E-SHOP', style: TextStyle(fontSize: 20)),
            Text(
              'here we are ready to diserve your desire',
              style: TextStyle(color: Colors.green),
            ),
            Text(
              data,
              style: TextStyle(fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
