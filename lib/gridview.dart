import 'package:flutter/material.dart';
class Viw extends StatefulWidget {
  const Viw({super.key});

  @override
  State<Viw> createState() => _ViwState();
}

class _ViwState extends State<Viw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
    
      ),
      drawer: DrawerButton(),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: 18,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3
                ), 
                itemBuilder:(context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.black,
                          
                        )
                      ),
                      child: Icon(
                        Icons.logo_dev
                      ),
                    ),
                  );
                },
                ),
          ),
        ],
      ),
    );
  }
}