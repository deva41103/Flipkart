import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {

  var titl=['Your Coins are Expiring!','Atta, Rice, Oil..Up to 50% Off!','Up to 60% Off | Headphones & Earphones'];
  var subtitl=['Use Them to Grab All Your Favourite Products & Avail Extra Discount on Sale Prices','No min order value Avail Free Shipping on order value of Min ₹600! Shop Now >','Wireless ,wired in ears, on ears, noise cancellation - we got them all. Pick yours now at an amazing price!'];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text('Notification (${titl.length})'),
  ),
  body:Column(
  children: [
  Padding(
  padding: const EdgeInsets.all(4.0),
  child: Row(
  children: [
  ElevatedButton(onPressed:(){},
  style:ElevatedButton.styleFrom(
  backgroundColor: Colors.white,
  foregroundColor: Colors.black,
  side: BorderSide(color: Colors.grey.shade300),
  ),
  child: Text('All',style: TextStyle(fontSize: 16))
  ),
  SizedBox(width: 10),
  ElevatedButton(onPressed:(){},
  style:ElevatedButton.styleFrom(
  backgroundColor: Colors.white,
  foregroundColor: Colors.black,
  side: BorderSide(color: Colors.grey.shade300),
  ),
  child: Row(
  children: [
  Icon(Icons.percent_sharp),
  SizedBox(width: 5),
  Text('Offers',style: TextStyle(fontSize: 16)),
  ],
  )
  ),
  ]
  ),
  ),
  Container(
  width:double.infinity,
  height: 420,
  margin: EdgeInsets.all(10),
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(1),
  border: Border.all(color: Colors.grey.shade300),
  ),
  child: ListView.separated(itemBuilder: (context,index){
  return ListTile(
  leading: Icon(Icons.local_offer_sharp),
  title: Text('${titl[index]}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
  subtitle: Text('${subtitl[index]}',style: TextStyle(fontSize: 14,color:Colors.grey.shade800),),
  trailing: Image.asset('assets/images/logo.png'),
  );
  },
  itemCount: titl.length,
  separatorBuilder:(BuildContext context, int index){
  return Divider(height:30,thickness:2);
  }
  ),
  ),
  ],
  )
  );
  }
  }