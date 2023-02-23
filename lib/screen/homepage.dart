import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:second_provider_example/provider/homepageprovider.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact example"),
      ),
      body: SafeArea(child: Center(
        child: Consumer<contactModel>(builder: (context, contactModel, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(contactModel.eligibalMessage.toString(),
                  style: TextStyle(
                      color: (contactModel.isEligibel == true)
                          ? Colors.green
                          : Colors.red)),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter your age",
                ),
                onChanged: (value) {
                  contactModel.checkEligibality(int.parse(value));
                },
              )
            ],
          );
        }),
      )),
    );
  }
}
