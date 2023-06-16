import 'package:flutter/material.dart';
import 'package:noida/mancity/mancity.dart';
import 'package:noida/pes.dart';
class Pes1 extends StatefulWidget {
  const Pes1({super.key});

  @override
  State<Pes1> createState() => _Pes1State();
}

class _Pes1State extends State<Pes1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/pes9.jpg"),
            fit: BoxFit.fill
            ),
        ),
        child: Align(
          alignment:Alignment.bottomRight,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Mancity(),
                  )
                );
            }, 
            child: Text("NEXT"),
            ),
           ),
      ),
    );
  }
}