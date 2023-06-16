import 'package:flutter/material.dart';
import 'package:noida/wallet/send.dart';
class Walllet extends StatefulWidget {
  const Walllet({super.key});

  @override
  State<Walllet> createState() => _WallletState();
}

class _WallletState extends State<Walllet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>
        [
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            label: "Home"
            ),
             BottomNavigationBarItem(
            icon:Icon(Icons.card_membership_sharp),
            label: "Card"
            ),
        ]
        ),
      backgroundColor: Color.fromARGB(255, 8, 62, 156),
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 8, 62, 156),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ListTile(
                  title: Text("KSH 25,000,000.90",
                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ) ,
                  ),
                  subtitle: Text("Available balance",
                  style: TextStyle(
                    color: Colors.white
                  ),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.notification_add),
              ),
             
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Image(
                  image: AssetImage("assets/mangos.png")
                  ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => Sendi()
                        )
                      );
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(20),
                      color:Color.fromARGB(255, 255, 255, 255),
                      
                    ),
                    child: Icon(Icons.card_giftcard_sharp),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color.fromARGB(255, 255, 255, 255),
                  
                ),
                child: Icon(Icons.web_asset_sharp),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color.fromARGB(255, 255, 255, 255),
                  
                ),
                child: Icon(Icons.monetization_on_sharp),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color.fromARGB(255, 255, 255, 255),
                  
                ),
                child: Icon(Icons.subdirectory_arrow_right_sharp),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Send",style: TextStyle(color: Colors.white),),
               Text("Request",style: TextStyle(color: Colors.white),),
                Text("Loan",style: TextStyle(color: Colors.white),),
                 Text("Topup",style: TextStyle(color: Colors.white),),
               
            ],
          ),
            SizedBox(
                height: 80,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*0.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)
                        )
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Recent Transactions",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                              Text("See all",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                           mainAxisSize: MainAxisSize.max,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                child: Text("All"),
                                
                              ),
                              Container(
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 0.5,
                                  ),
                                ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      maxRadius: 5,
                                      backgroundColor: Colors.green,
                                    ),
                                    
                                    Text("Income"),
                                  ],
                                ),
                              ),
                               Container(
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 0.5,
                                  ),
                                ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      maxRadius: 5,
                                      backgroundColor: const Color.fromARGB(255, 238, 214, 3),
                                    ),
                                    
                                    Text("Expenses"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text("Today,11/05/2023"),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.circular(30),
                              border: Border.all(
                                color: Colors.black,
                                width: 0.5
                              )
                            ),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(Icons.card_membership),
                              ),
                              title: Text("Grocery",style: TextStyle(fontWeight: FontWeight.bold),),
                              subtitle: Text("Payment from user"),
                              trailing: Text("-KSH 5000"),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.circular(30),
                              border: Border.all(
                                color: Colors.black,
                                width: 0.5
                              )
                            ),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(Icons.card_membership),
                              ),
                              title: Text("Fried Beef",style: TextStyle(fontWeight: FontWeight.bold),),
                              subtitle: Text("Payment from user"),
                              trailing: Text("-KSH 10000"),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(30),
                        border: Border.all(
                          color: Colors.black,
                          width: 0.5
                        )
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.card_membership),
                        ),
                        title: Text("5 Burgers",style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Text("Payment from user"),
                        trailing: Text("-KSH 5000"),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text("Yesterday,10/5/2023"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(30),
                        border: Border.all(
                          color: Colors.black,
                          width: 0.5
                        )
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.card_membership),
                        ),
                        title: Text("Petrol",style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Text("Payment from user"),
                        trailing: Text("-KSH 14000"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(30),
                        border: Border.all(
                          color: Colors.black,
                          width: 0.5
                        )
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.card_membership),
                        ),
                        title: Text("Chips and Kuku",style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Text("Payment from user"),
                        trailing: Text("-KSH 4000"),
                      ),
                    ),
                    
                        ],
                      ),
                      
                      
                    ),
                  ],
                ),
              )
        ],
      ),
    );
  }
}