import 'package:flutter/material.dart';
import 'package:my_store/constans.dart';
import 'package:my_store/model/product.dart';
import 'package:my_store/widgets/homeScreen_widget/home_screen_drawer.dart';
import 'package:my_store/widgets/homeScreen_widget/product_card.dart';

import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: const Text(
          'Store Demo',
          style: TextStyle(fontFamily: 'Signatra', fontSize: 40),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      drawer: BuildDrawer(),
      body: Stack(
        children: [
          Container(
            //margin: EdgeInsets.only(top: size.height * 0.1),
            decoration: const BoxDecoration(
              color: kBackgroundColor2,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
          ),
          ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ProductCard(
                product: products[index],
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(
                              product: products[index],
                            )),
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}
