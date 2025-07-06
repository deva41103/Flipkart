import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Cart",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Tab bar
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.blue,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              labelStyle:
              const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              tabs: const [
                Tab(text: "Flipkart (1)"),
                Tab(text: "Grocery"),
              ],
            ),
            const Divider(height: 1),

            // TabBarView (Scrollable)
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Flipkart Tab
                  ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      // Address Section
                      Container(
                        width: double.infinity,
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Row(
                                children: [
                                  const Expanded(
                                    child: Text(
                                      "Delivery to: Tharun...... ,638656",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 120),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 4),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey.shade400),
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.grey.shade200,
                                      ),
                                      child: const Text(
                                        "HOME",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                const Expanded(
                                  child: Text(
                                    "54B, New Gandhi puram Fifth cross.......",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      minimumSize:  Size(75, 35),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      side: const BorderSide(color: Colors.blue),
                                    ),
                                    child: const Text(
                                      "Change",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),//
                      ), //address selection

                      const Divider(),

                      // Product Card Section
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.only(left: 12,top: 12,right: 12,bottom: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Bestseller label
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Text(
                                "BESTSELLER",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 8),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Product image

                                Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/Cart1.png',
                                      width: 80,
                                      height: 100,
                                      errorBuilder: (context, error, stackTrace) =>
                                      const Icon(Icons.image_not_supported,
                                          size: 60, color: Colors.grey),
                                    ),
                                    const SizedBox(width: 10),
                                    const SizedBox(width: 10),
                                    DropdownButton<int>(
                                      value: 1,
                                      items: List.generate(5, (index) {
                                        return DropdownMenuItem(
                                          value: index + 1,
                                          child: Text('Qty: ${index + 1}'),
                                        );
                                      }),
                                      onChanged: (value) {},
                                    ),
                                  ]
                                ),
                                // Product details
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Mi Basic Wired headset with Mic",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        const SizedBox(height: 4),
                                        const Text(
                                          "Black, In the Ear",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 13),
                                        ),
                                        const SizedBox(height: 4),
                                        Row(
                                          children: const [
                                            Icon(Icons.star,
                                                size: 14, color: Colors.green),
                                            Icon(Icons.star,
                                                size: 14, color: Colors.green),
                                            Icon(Icons.star,
                                                size: 14, color: Colors.green),
                                            Icon(Icons.star,
                                                size: 14, color: Colors.green),
                                            Icon(Icons.star_half,
                                                size: 14, color: Colors.green),
                                            SizedBox(width: 5),
                                            Text("(7,47,049)",
                                                style: TextStyle(fontSize: 12)),
                                            SizedBox(width: 5),
                                            Icon(Icons.verified,
                                                size: 16, color: Colors.amber),
                                            Text("PLUS",
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10)),
                                          ],
                                        ),
                                        const SizedBox(height: 6),
                                        Row(
                                          children: const [
                                            Text(
                                              "16% off",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(width: 6),
                                            Text("₹599",
                                                style: TextStyle(
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    color: Colors.grey)),
                                            SizedBox(width: 6),
                                            Text("₹499",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold)),
                                          ],
                                        ),
                                        const SizedBox(height: 4),
                                        const Text(
                                          "4 offers applied • 1 offer available",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.green),
                                        ),
                                        const SizedBox(height: 4),
                                        const Text.rich(
                                          TextSpan(
                                            text: "Delivery by Tomorrow, Wed | ",
                                            style: TextStyle(fontSize: 12),
                                            children: [
                                              TextSpan(
                                                text: "FREE Delivery ",
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: "₹40",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    decoration: TextDecoration
                                                        .lineThrough),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            )
                          ],
                        ),
                      ), // Product Card Section

                      // Action Buttons (Fixed UI)

                      Container(
                        width: double.infinity,
                        height: 80,
                        color: Colors.white,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildActionColumn(Icons.delete_outline, "Remove"),
                            _buildActionColumn(
                                Icons.favorite_border, "Save for later"),
                            _buildActionColumn(Icons.shopping_cart_checkout,
                                "Buy this now"),
                          ],
                        ),
                      ),// three button code

                      // Warranty section
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Divider(),
                            Row(
                              children: [
                                Icon(Icons.add_box_outlined,size: 40,color: Colors.grey.shade500,),
                                const Text(
                                  "Extended Warranty Plan by...",
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                                ),
                              ],
                            ),//extended warenty
                            const SizedBox(height: 8),
                            Container(
                              width: double.infinity,
                              height: 300,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/Cart2.png',
                                        width: 150,
                                        height: 100,
                                        errorBuilder:
                                            (context, error, stackTrace) =>
                                        const Icon(Icons.security_outlined,
                                            size: 40, color: Colors.grey),
                                      ),
                                      const SizedBox(width: 20),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "Extended Warranty for Headph...",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,fontSize: 20),
                                            ),
                                            const SizedBox(height: 4),
                                            Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Row(
                                                children: [
                                                  const Text(
                                                    "51% ",
                                                    style: TextStyle(
                                                        color: Colors.green,
                                                        fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                                  ),
                                                  const Text(
                                                    "₹39",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 20),
                                                  ),
                                                  const Text(
                                                    "₹19",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 20),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 10),

                                          ],
                                        ),

                                      )
                                    ],
                                  ),
                                  Text(
                                    "Get Full Warranty Coverage and protection against damages. Add Extended Warranty to make your purchase worry-free.",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey.shade700),
                                  ),
                                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("₹499",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.amber.shade800,
                                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: const Text(
                                          "Place order",
                                          style: TextStyle(
                                              fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Place Order Button

                    ],
                  ),

                  // Grocery Tab Content
                  const Center(child: Text("No items in Grocery tab.")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildActionColumn(IconData icon, String label) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade500),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Icon(icon, color: Colors.black),
            ),
            const SizedBox(width: 2),
            Text(
              label,
              style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
