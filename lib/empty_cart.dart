import 'package:flipkart/cartpage.dart';
import 'package:flutter/material.dart';

class EmptyCart extends StatefulWidget {
  const EmptyCart({super.key});

  @override
  State<EmptyCart> createState() => _EmptyCartState();
}

class _EmptyCartState extends State<EmptyCart> with TickerProviderStateMixin {
  late TabController _tabController; //  Declare TabController properly

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // Use 'this' with TickerProviderStateMixin
  }

  @override
  void dispose() {
    _tabController.dispose(); //  Dispose the controller to avoid memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column( //  No need for SingleChildScrollView with TabBar
            children: [

              TabBar(
                controller: _tabController,
                indicatorColor: Colors.blue,
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.black,
                labelStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                tabs: const [
                  Tab(text: "Flipkart"),
                  Tab(text: "Grocery"),
                ],
              ),
                  Padding(
                    padding: const EdgeInsets.only(top:40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 350,
                          color: Colors.grey.shade200,
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.shopping_cart_outlined,size: 200,color: Colors.grey.shade400),
                              Text('Your Cart is Empty!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              ElevatedButton(onPressed:(){},
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(150, 40),
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.blue.shade800,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                                  child: Text('Shop Now')),
                            ],
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Suggested for You',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                              Text('Based on Your Activity',style: TextStyle(fontSize: 19,color: Colors.grey),)
                            ]
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 260,
                                      width: 150,
                                      child: Image.asset('assets/images/earphones.png'),
                                    ),
                                    OutlinedButton(onPressed:(){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));
                                    }, child: Text('Add to Cart'),)
                                  ],
                                ),
                                Column(
                                  children: [
                                  Container(
                                        height: 260,
                                      width: 150,
                                      child: Image.asset('assets/images/camera.png'),
                                    ),
                                    OutlinedButton(onPressed:(){}, child: Text('Add to Cart'),)
                                  ],
                                ),
                                Column(
                                  children:[
                                    Container(
                                      height: 260,
                                      width: 150,
                                      child: Image.asset('assets/images/keyboard.png'),
                                    ),
                                    OutlinedButton(onPressed:(){}, child: Text('Add to Cart'),)
                                  ]
                                ),
                              ]
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
        ),
      ),
    );
  }
}