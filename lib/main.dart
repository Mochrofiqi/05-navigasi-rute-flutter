import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/item_page.dart';
import 'models/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
        },
        onGenerateRoute: (page) {
          if (page.name == ItemPage.setName) {
            final args = page.arguments as Item;
            return MaterialPageRoute(builder: (context) {
              return ItemPage(
                name: args.name,
                merk: args.merk,
                price: args.price,
              );
            });
          }
          assert(false, 'Need to implement ${page.name}');
          return null;
        }
      );
  }
}
