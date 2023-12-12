import 'package:flutter/material.dart';
import 'package:shopping_ui/detail_page.dart';
import 'package:shopping_ui/shopping_model.dart';

// ignore: must_be_immutable
class Handbag extends StatelessWidget {
  Handbag({super.key});
  var model = CustomHttp.product;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: List.generate(model.length, (index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => DetailPage(customHttp: model[index])));
          },
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "${model[index].image}",
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      }),
    );
  }
}
