import 'package:flutter/material.dart';
class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: Colors.yellow,
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>
        [
         BottomNavigationBarItem(
          icon:Icon(Icons.wallet),
          label: "Wallet",
          ),
           BottomNavigationBarItem(
          icon:Icon(Icons.cabin),
          label: "Crypto",
          ),
           BottomNavigationBarItem(
          icon:Icon(Icons.send),
          label: "Pay",
          ),
        ]

        ),
        body:Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.25,
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text("Hi, Pinchez"),
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.man_3),
                    ),
                  ),
                   ListTile(
                    title: Text("Your combined total"),
                    ),
                     ListTile(
                    title: Text("KES 276.9",style:TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                ],
                
              ),
            ),
            Container(
              
              height: MediaQuery.of(context).size.height*0.63,
              decoration: BoxDecoration(
                
                color: const Color.fromARGB(255, 226, 225, 225),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60)
                )
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        maxRadius: 30,
                        child: Icon(Icons.add),
                      ),
                       CircleAvatar(
                        backgroundColor: Colors.blue,
                        maxRadius: 30,
                        child: Icon(Icons.remove),
                      ),
                       CircleAvatar(
                        backgroundColor: Colors.blue,
                        maxRadius: 30,
                        child: Icon(Icons.arrow_downward_sharp),
                      ),
                       CircleAvatar(
                        backgroundColor: Colors.blue,
                        maxRadius: 30,
                        child: Icon(Icons.arrow_forward_sharp),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Buy"),
                       Text("Sell"),
                        Text("Deposit"),
                         Text("Withdraw")
                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("MY WALLETS",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*0.1,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 10,
                      ),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Icon(Icons.one_k_rounded),
                      ),
                      title: Text("Kenya Shilling"),
                      trailing: Text("KES 0"),
                    ),
                  ),
                  SizedBox(height: 30,),
                                    Container(
                    height: MediaQuery.of(context).size.height*0.1,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 10,
                      ),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.yellow,
                        child: Icon(Icons.currency_bitcoin),
                      ),
                      title: Text("BTC"),
                      subtitle: Text("0.00 BTC"),
                      trailing: Text("KES 0"),
                    ),
                  ),
                  SizedBox(height: 30,),
                                    Container(
                    height: MediaQuery.of(context).size.height*0.1,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 10,
                      ),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Icon(Icons.text_fields_outlined),
                      ),
                      title: Text("USDT"),
                      subtitle: Text("2 USDT"),
                      trailing: Text("KES 276.9"),
                      
                    ),
                  ),
                  SizedBox(height: 30,),
                                    Container(
                    height: MediaQuery.of(context).size.height*0.1,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 10,
                      ),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Icon(Icons.one_k_rounded),
                      ),
                      title: Text("Kenya Shilling"),
                      trailing: Text("KES 0"),
                    ),
                  ),
                  SizedBox(height: 30,),
                  
                ],
              ),
              

            )
          ],
        ) 
          
        

        
    );
  }
}