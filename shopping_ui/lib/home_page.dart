import 'package:flutter/material.dart';
import 'package:shopping_ui/handbag.dart';
import 'package:shopping_ui/shopping_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final model = CustomHttp.product;
  @override
  Widget build(BuildContext context) {
    // TabController tabController = TabController(length: 4, vsync: this);
    TabController tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Women",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                    controller: tabController,
                    labelPadding: EdgeInsets.only(left: 20, right: 20),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      Tab(
                        text: "HandBag",
                      ),
                      Tab(
                        text: "Footwear",
                      ),
                      Tab(
                        text: "Jwellary",
                      ),
                      Tab(
                        text: "Dresses",
                      )
                    ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              height: 700,
              width: double.maxFinite,
              child: TabBarView(controller: tabController, children: [
                Handbag(),
                Text("Footwear"),
                Text("Jwellery"),
                Text("Dresses")
              ]),
            )
          ],
        ),
      ),
    );
  }
}
