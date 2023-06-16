import 'package:flutter/material.dart';
class Pini extends StatefulWidget {
  const Pini({super.key});

  @override
  State<Pini> createState() => _PiniState();
}

class _PiniState extends State<Pini> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 8, 62, 156),
         title: Text("MPESA PIN"),

      ),
      body: Center(
        child: Column(
          children: [
           Center(
             child: TextFormField(
              decoration: InputDecoration(
                hintText: "ENTER YOUR MPESA PIN"
              ),
             ),
           ),
           SizedBox(
            height: 20,
           ),
            Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 0.5,
                                  ),
                                ),
                               child: Center(child: Text("NEXT")),
                              ),
          ],
        ),
      ),
    );
  }
}