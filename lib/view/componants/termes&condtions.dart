import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import '../../constant/const.dart';
import 'app_bar.dart';
import 'package:html2md/html2md.dart' as html2md;

class Terms extends StatelessWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var html = htmlData;
    var markdown = html2md.convert(htmlData);
    return MaterialApp(
        home: Scaffold(
            appBar: AppBarrText(
              lead: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
              text: 'Terms & Conditions',
            ),
            body: Container(child: Center(child: Markdown(data: markdown)))));
  }
}
