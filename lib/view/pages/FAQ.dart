import 'package:flutter/material.dart';
import 'package:toggle_list/toggle_list.dart';
class FAQ extends StatelessWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Toggle List Example'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepOrange,
      ),
      body:
          ToggleList(
            children: [
              ToggleListItem(
                title: const Text('Q1:How many contries Orange \n Digital center is in?'),
                content: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('16 Contry'),
                ),
              ),
            ],
          ),

    );
  }
}
