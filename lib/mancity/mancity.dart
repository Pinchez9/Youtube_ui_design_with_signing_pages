import 'package:flutter/material.dart';

import 'goalkeepers.dart';
class Mancity extends StatefulWidget {
  const Mancity({super.key});

  @override
  State<Mancity> createState() => _MancityState();
}

class _MancityState extends State<Mancity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        // leading: image,
        title: Text("MANCITY",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 40),),
        titleSpacing: 30,
        
        centerTitle: true,
      

      ),
      
      body: Container(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Search",
                suffixIcon: Icon(Icons.search),
             
              ),
            ),
            Text("MANAGER:PEP GURDIOLA",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            CircleAvatar(
              maxRadius:50,
              backgroundImage: AssetImage("assets/pep.webp"),
            ),
            Text("GOALKEEPERS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
            Expanded(
             child: ListView.builder(
              itemCount: keepers.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 250,
                    width: 95,
                    // decoration: BoxDecoration(
                    //   border: Border.all(
                    //     width: 0.5
                    //   ),
                    // ),
                    child: Column(
                      children: [
                         Image(image: AssetImage(keepers[index]["image"]),fit: BoxFit.fill,),
                         Text(keepers[index]["name"],style: TextStyle(overflow: TextOverflow.ellipsis),),
                      ],
                    ),
                    
                  ),
                );
              }
              ),
           ),
           
        
        
          Text("DEFENDERS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
           Expanded(
             child: ListView.builder(
              itemCount: defenders.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 95,
                    // decoration: BoxDecoration(
                    //   border: Border.all(
                    //     width: 0.5
                    //   ),
                    // ),
                    child: Column(
                      children: [
                         Image(image: AssetImage(defenders[index]["image"]),fit: BoxFit.fill,),
                         Text(defenders[index]["name"],style: TextStyle(overflow: TextOverflow.ellipsis),),
                      ],
                    ),
                  
                  ),
                );
              }
              ),
           ),
        
           Text("MIDFIELDERS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
            Expanded(
             child: ListView.builder(
              itemCount: midfielders.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 95,
                    // decoration: BoxDecoration(
                    //   border: Border.all(
                    //     width: 0.5
                    //   ),
                    // ),
                    child:Column(
                      children: [
                        Image(image: AssetImage(midfielders[index]["image"]),fit: BoxFit.fill,),
                         Text(midfielders[index]["name"],style: TextStyle(overflow: TextOverflow.ellipsis),),
                      ],
                    )
                  ),
                );
              }
              ),
           ),
            
            Text("FORWARD",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
            Expanded(
             child: ListView.builder(
              itemCount: forwards.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 95,
                    // decoration: BoxDecoration(
                    //   border: Border.all(
                    //     width: 0.5
                    //   ),
                    // ),
                    child:Column(
                      children: [
                        Image(image: AssetImage(forwards[index]["image"]),fit: BoxFit.fill,),
                         Text(forwards[index]["name"],style: TextStyle(overflow: TextOverflow.ellipsis),),
                      ],
                    )
                  ),
                );
              }
              ),
           ),
          
          ],
        ),
      ),
    );
  }
}