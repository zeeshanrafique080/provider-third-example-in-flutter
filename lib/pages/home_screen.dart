import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:third_provider/provider/homepage_provider.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      body: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  provider.incriment();
                },
                child: Icon(Icons.add),
              ),
              Consumer<CountProvider>(builder: (context, value, child) {
                return Text(value.count.toString());
              }),
              //
              FloatingActionButton(
                onPressed: () {
                  provider.decrement();
                },
                child: Icon(Icons.subdirectory_arrow_left),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
