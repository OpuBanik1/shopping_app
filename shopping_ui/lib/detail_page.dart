import 'package:flutter/material.dart';
import 'package:shopping_ui/shopping_model.dart';

// ignore: must_be_immutable
class DetailPage extends StatefulWidget {
  CustomHttp customHttp;

  DetailPage({super.key, required this.customHttp});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var price = 1;

  Color selectedColor = Colors.amber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
                child: Container(
                    color: Colors.cyan,
                    height: 400,
                    width: double.maxFinite,
                    child: Container(
                      margin: EdgeInsets.only(left: 20, top: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.customHttp.text.toString(),
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                          Text("Office Code",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white))
                        ],
                      ),
                    ))),
            Positioned(
              left: 10,
              right: 10,
              top: 10,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(child: Container()),
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.shopping_cart_checkout_outlined,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Positioned(
                top: 300,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    Text(
                      "${widget.customHttp.price}",
                      style: TextStyle(fontSize: 25, color: Colors.black54),
                    )
                  ],
                )),
            Positioned(
                top: 380,
                child: Container(
                  height: 600,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(22),
                          topRight: Radius.circular(22))),
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 50,
                      left: 20,
                      right: 20,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Wrap(
                              children: List.generate(
                                  3,
                                  (index) => Padding(
                                        padding:
                                            const EdgeInsets.only(right: 15),
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              selectedColor = index == 0
                                                  ? Colors.amber
                                                  : index == 1
                                                      ? Colors.blue
                                                      : Colors.grey;
                                            });
                                          },
                                          child: Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: index == 0
                                                    ? Colors.amber
                                                    : index == 1
                                                        ? Colors.blue
                                                        : Colors.grey),
                                          ),
                                        ),
                                      )),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "Size",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "\n12 cm",
                              style: TextStyle(fontSize: 23),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                            "To help you learn shopping vocabulary this page has an ESL shopping reading exercise. You will need to understand shopping vocabulary to answer the questions in the exercise that goes with the passage"),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: selectedColor,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (price > 0) {
                                            price--;
                                          }
                                        });
                                      },
                                      icon: Icon(
                                        Icons.remove,
                                        color: Colors.black,
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    price.toString(),
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: selectedColor,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          price++;
                                        });
                                      },
                                      icon: Icon(Icons.add)),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: selectedColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(Icons.add_shopping_cart),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: selectedColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Center(
                                    child: Text("Buy now",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
