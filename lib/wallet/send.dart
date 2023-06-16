import 'package:flutter/material.dart';
import 'package:noida/wallet/amount.dart';
class Sendi extends StatefulWidget {
  const Sendi({super.key});

  @override
  State<Sendi> createState() => _SendiState();
}

class _SendiState extends State<Sendi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 8, 62, 156),
         title: Text("SEND FROM MPESA"),

      ),
      body: Center(
        child: Column(
          children: [
           TextFormField(
            decoration: InputDecoration(
              hintText: "ENTER THE MOBILE NUMBER"
            ),
           ),
           SizedBox(
            height: 20,
           ),
            GestureDetector(
              onTap: () {
                 Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Amount()
                                      )
                                     );
              },
              child: Container(
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
            ),
          ],
        ),
      ),
    );
  }
}