import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 400,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Image.asset("lib/assets/fiori.jpg",width:400,),
              ),
            )
          ]),
          )
        ],
      ),
    );
  }
}