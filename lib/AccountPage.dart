import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  final String name = 'Devashish Dhumal';
  const AccountPage({super.key});
  @override
  Widget build(BuildContext context) {
    var icon = [Icons.add,Icons.person_2_outlined,Icons.account_balance_wallet_outlined,Icons.location_on_outlined,Icons.language_outlined,Icons.edit_notifications_outlined];
    var accText = ['Flipkart Plus','Edit Profile','Saved Cards & Wallet','Saved Addresses','Select Language','Notification Settings'];
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Hey! $name',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          actions: [
            Row(
              children: [
                Icon(Icons.offline_bolt_rounded, color: Colors.yellow.shade600, size: 22),
                SizedBox(width: 4),
                Text('22', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 20),
              ],
            ),
          ],
        ),
        body:
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width:double.infinity,
                height: 140,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 2,
                      )
                    ]
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:10.0,right: 10.0,top:10.0,bottom: 5.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: SizedBox(
                              width: 185,
                              height: 50,
                              child: ElevatedButton(onPressed: (){
                                print('Orders');
                              },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      side: BorderSide(color: Colors.grey.shade300),
                                      shape:BeveledRectangleBorder(
                                        borderRadius: BorderRadius.circular(2),
                                      )
                                  ),
                                  child: Row(
                                      children:[
                                        Icon(Icons.shopping_cart_outlined,size: 26),
                                        Text(' Orders',style: TextStyle(fontSize: 18,color:Colors.black),)
                                      ]
                                  )
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: SizedBox(
                              width: 185,
                              height: 50,
                              child: ElevatedButton(onPressed: (){
                                print('Wishlist');
                              },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      side: BorderSide(color: Colors.grey.shade300),
                                      shape:BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(2)
                                      )
                                  ),
                                  child: Row(
                                      children:[
                                        Icon(Icons.favorite_border,size: 26),
                                        Text(' Wishlist',style: TextStyle(fontSize: 18,color:Colors.black),)
                                      ]
                                  )
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:10.0,right: 10.0,top:5.0,bottom: 10.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: SizedBox(
                              width: 185,
                              height: 50,
                              child: ElevatedButton(onPressed: (){
                                print('Coupons');
                              },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      side: BorderSide(color: Colors.grey.shade300),
                                      shape:BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(2)
                                      )
                                  ),
                                  child: Row(
                                      children:[
                                        Icon(Icons.card_giftcard_outlined,size: 26),
                                        Text(' Coupons',style: TextStyle(fontSize: 18,color:Colors.black),)
                                      ]
                                  )
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: SizedBox(
                              width: 185,
                              height: 50,
                              child: ElevatedButton(onPressed: (){
                                print('Help Center');
                              },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      side: BorderSide(color: Colors.grey.shade300),
                                      shape:BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(2)
                                      )
                                  ),
                                  child: Row(
                                      children:[
                                        Icon(Icons.headset_mic_outlined,size: 26),
                                        Text(' Help Center',style: TextStyle(fontSize: 18,color:Colors.black),)
                                      ]
                                  )
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),  // 4 buttons container
              Container(height:10,
                  color: Colors.grey.shade200),  // spacing with shadow
              Container(
                  width:double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                  child:ListView.separated(itemBuilder: (context,index){
                    return ListTile(
                      leading: Icon(Icons.mail),
                      title: Text('Add/Verify your Email*',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                      subtitle:Text('Get latest updates of your orders',style: TextStyle(fontSize: 14),),
                      trailing:SizedBox(
                        width: 95,
                        height: 35,
                        child: ElevatedButton(
                          onPressed: (){
                            print('Update Email');
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.shade900,
                              foregroundColor: Colors.white,
                              shape:BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(2)
                              )
                          ),
                          child: Text('Update',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold)),
                        ),
                      ),
                    );
                  },
                      itemCount:1,
                      separatorBuilder: (BuildContext context, int index){
                        return Divider(height:100,thickness:2);
                      }
                  )
              ),  // Email verify container
              Container(height:10,
                  color: Colors.grey.shade200),  // spacing with shadow
              Container(
                  width:double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text('Credit Options',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.calendar_today_outlined,size: 24,),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Flipkart Pay Later',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey.shade800)),
                              Text('Get ₹10,000* worth Times Prime benefits',style: TextStyle(fontSize: 14,color: Colors.grey.shade600),)
                            ],
                          )
                        ],
                      ),
                    ],
                  )
              ),  // Credit options container
              Container(height:10,
                  color: Colors.grey.shade200),  // spacing with shadow
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:5.0,left: 15,bottom:1),
                      child: Text('Account Settings',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 370,
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            height: 50, // reduce height per item
                            child: ListTile(
                              dense: true, // compact tile layout
                              leading: Icon(icon[index], size: 26),
                              title: Text(
                                accText[index],
                                style: TextStyle(fontSize: 18),
                              ),
                              trailing: Icon(Icons.arrow_forward_ios_outlined, size: 12),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => Divider(
                          height: 1,
                          thickness: 1,
                        ),
                      ),
                    )
                  ],
                ),
              )   // Account settings container
            ],
          ),
        )
    );
  }
}
