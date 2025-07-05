import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CategoryPage extends StatelessWidget {
  List<Map<String, dynamic>> categories = [
  {'name': 'Offer Zone','image': 'assets/images/Offer Zone.png'},
  {'name': 'Appliances','image': 'assets/images/Appliances.png'},
  {'name': 'Bikes and Cars','image': 'assets/images/Bikes and Cars.png'},
  {'name': 'Electronics','image': 'assets/images/Electronics.png'},
  {'name': 'Fashion','image': 'assets/images/Fashion.png'},
  {'name': 'Flights & Hotels','image': 'assets/images/Flights & Hotels.png'},
  {'name': 'Furniture','image': 'assets/images/Furniture.png'},
  {'name': 'Grocery','image': 'assets/images/Grocery.png'},
  {'name': 'Gift Cards','image': 'assets/images/Gift Cards.png'},
  {'name': 'Home','image': 'assets/images/Home.png'},
  {'name': 'Home Services','image': 'assets/images/Home Services.png'},
  {'name': 'Insurance','image': 'assets/images/Insurance.png'},
  {'name': 'Medicines','image': 'assets/images/Medicines.png'},
  {'name': 'Mobiles','image': 'assets/images/Mobiles.png'},
  {'name': 'Nutrition','image': 'assets/images/Nutrition.png'},
  {'name': 'Personal Care','image': 'assets/images/Personal Care.png'},
  {'name': 'Phonecash','image': 'assets/images/Phonecash.png'},
  {'name': 'Sports','image': 'assets/images/Sports.png'},
  {'name': 'Toys and Baby','image': 'assets/images/Toys and Baby.png'},
  ];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  backgroundColor: Colors.blue.shade700,
  elevation: 0,
  title: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  Text('All Categories',style: TextStyle(fontSize: 20,color: Colors.white),),
  Row(
  children: [
  Icon(Icons.search,color: Colors.white,),
  SizedBox(width: 10,),
  Icon(Icons.mic,color: Colors.white,)
  ],
  ),

  ],
  ),
  ),
  body: SingleChildScrollView(
  scrollDirection: Axis.vertical,
  child: Column(
  children: [
  Padding(
  padding: const EdgeInsets.only(left:0,top: 15.0,right:0,bottom:6.0),
  child: Wrap(
  alignment: WrapAlignment.start,
  spacing: 28,
  runSpacing: 10,
  children: categories.map((item) {
  return Column(
  mainAxisSize: MainAxisSize.min,
  children: [
  CircleAvatar(
  radius: 36,
  backgroundImage: AssetImage(item['image']!),
  ),
  SizedBox(height: 4),
  SizedBox(
  width: 70,
  child: Text(
  item['name']!,
  textAlign: TextAlign.center,
  style: TextStyle(fontSize: 13),
  ),
  )
  ],
  );
  }).toList(),
  ),
  ),
  Padding(
  padding: const EdgeInsets.only(left:1.0,right:1.0,top:8,bottom:10),
  child: SizedBox(
  child:Text('More on Flipkart -----------------------------',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
  ),
  ),
  Padding(
  padding: const EdgeInsets.all(3.0),
  child: Wrap(
  spacing: 1,
  runSpacing: 8,
  children: [
  Image.asset('assets/images/Group 4.png', width: 100, height: 115),
  Image.asset('assets/images/Group 5.png', width: 100, height: 115),
  Image.asset('assets/images/Group 6.png', width: 100, height: 115),
  Image.asset('assets/images/Group 7.png', width: 100, height: 115),
  Image.asset('assets/images/Group 8.png', width: 100, height: 115),
  Image.asset('assets/images/Group 9.png', width: 100, height: 115),
  Image.asset('assets/images/Group 10.png', width: 100, height: 115),
  Image.asset('assets/images/Group 11.png', width: 100, height: 115),
  Image.asset('assets/images/Group 14.png', width: 100, height: 115),
  Image.asset('assets/images/Group 15.png', width: 100, height: 115),
  ],
  ),
  ),
  ],
  ),
  ),
  );
  }
  }



