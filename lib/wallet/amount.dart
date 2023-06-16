import 'package:flutter/material.dart';
import 'package:noida/wallet/pin.dart';
class Amount extends StatefulWidget {
  const Amount({super.key});

  @override
  State<Amount> createState() => _AmountState();
}

class _AmountState extends State<Amount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 8, 62, 156),
         title: Text("AMOUNT"),

      ),
      body: Center(
        child: Column(
          children: [
           Center(
             child: TextFormField(
              decoration: InputDecoration(
                hintText: "ENTER THE AMOUNT"
              ),
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
                    builder: (context) => Pini()
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