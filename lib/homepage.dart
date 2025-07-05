import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// ✅ Your image helper class
class UiHelper {
  static CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }
}

class _HomePageState extends State<HomePage> {
  bool isSwitch = false;

  final List<Map<String, String>> servicestatus = [
    {"img": "logo4.png", "text": "EMI"},
    {"img": "logo5.png", "text": "Group By"},
    {"img": "logo6.png", "text": "FireDrop"},
    {"img": "logo7.png", "text": "Camera"},
    {"img": "logo8.png", "text": "Seller"},
  ];

  final List<Map<String, String>> data =[
    {"img": "Comp1.png",},{"img": "Comp2.png"},{"img": "Comp3.png"},{"img": "comp4.png"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔹 Top Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildTopButton("Flipkart", Colors.blue, "logo1.png"),
                  _buildTopButton("Grocery", Colors.greenAccent, "logo2.png"),
                ],
              ),
              const SizedBox(height: 20),

              // 🔸 Brand Mall + Search
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Brand Mall",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Transform.scale(
                        scale: 0.7,
                        child: Switch(
                          value: isSwitch,
                          onChanged: (value) {
                            setState(() => isSwitch = value);
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search for products",
                        prefixIcon:
                        const Icon(Icons.search, color: Colors.blue),
                        border: const OutlineInputBorder(),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // 🖼️ Banner Image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: UiHelper.CustomImage(
                  img: "logo3.png",
                ),
              ),
              const SizedBox(height: 20),

              // 🔹 Horizontal Service List
              SizedBox(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: servicestatus.length,
                  itemBuilder: (context, index) {
                    final item = servicestatus[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.lightBlueAccent.shade100,
                            ),
                            child: ClipOval(
                              child: UiHelper.CustomImage(
                                img: item["img"]!,
                              ),
                            ),
                          ),
                          const SizedBox(height: 6),
                          SizedBox(
                            width: 70,
                            child: Text(
                              item["text"] ?? "",
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 15),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),

              // 🔸 3 Box Banner Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container( // 🔸 1 Box Banner Row
                    height: 140,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      border: Border.all(color: Colors.blueGrey, width: 1),

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10), // Adjust radius as needed
                          child: SizedBox(
                            width: 125, // Adjust width
                            height: 90, // Adjust height
                            child: UiHelper.CustomImage(img: "logo10.png"),
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text("Grab₹1Deal",
                            style: TextStyle(
                                fontSize: 14, color: Colors.black)),
                        const Text("Extra ₹75 Off*",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                  Container( // 🔸  Box Banner Row
                    height: 140,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      border: Border.all(color: Colors.blueGrey, width: 1),

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10), // Adjust radius as needed
                          child: SizedBox(
                            width: 125, // Adjust width
                            height: 90, // Adjust height
                            child: UiHelper.CustomImage(img: "logo11.png"),
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text("Metronaut",
                            style: TextStyle(
                                fontSize: 14, color: Colors.black)),
                        const Text("60-80% OFF",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                  Container( // 🔸 3 Box Banner Row
                    height: 140,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      border: Border.all(color: Colors.blueGrey, width: 1),

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10), // Adjust radius as needed
                          child: SizedBox(
                            width: 125, // Adjust width
                            height: 90, // Adjust height
                            child: UiHelper.CustomImage(img: "logo12.png"),
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text("48 Quad Mic",
                            style: TextStyle(
                                fontSize: 14, color: Colors.black)),
                        const Text("Just ₹999",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                ],
              ),

            SizedBox(height: 10),
        Text(
          "Recent Viewed Store",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),

// 🔧 FIX: Give fixed height using SizedBox, not Expanded
        SizedBox(
          height: 120, // Adjust height as needed
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  height: 80,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                  ),
                  child: UiHelper.CustomImage(img: data[index]["img"].toString()),
                ),
              );
            },
          ),
        ),

        ],
          ),
        ),
      ),
    );
  }

  // 🔁 Top Button Widget with UiHelper
  Widget _buildTopButton(String label, Color color, String img) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      ),
      child: Row(
        children: [
          SizedBox(width: 28, height: 28, child: UiHelper.CustomImage(img: img)),
          const SizedBox(width: 5),
          Text(label,
              style:
              const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
