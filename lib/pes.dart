import 'package:flutter/material.dart';
import 'package:noida/pes1.dart';
class Pes extends StatefulWidget {
  const Pes({super.key});

  @override
  State<Pes> createState() => _PesState();
}

class _PesState extends State<Pes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/pes10.gif"),
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
                  builder: (context) => Pes1(),
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