import 'dart:ui';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:my_store/constans.dart';
import 'package:my_store/model/product.dart';
import 'package:my_store/widgets/detailScreen_widget/cart_botton.dart';
import 'package:my_store/widgets/detailScreen_widget/costum_divider.dart';
import 'package:my_store/widgets/detailScreen_widget/custom_slider.dart';
import 'package:my_store/widgets/detailScreen_widget/review_card.dart';
import 'package:my_store/widgets/detailScreen_widget/selected_point_color.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int selectedColorIndex = 0;
  int selectedQuantity = 1;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: kPrimaryColor,
          ),
        ),
        title: Text(
          widget.product.name,
          style: TextStyle(color: kPrimaryColor),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Stack(
                    children: [
                      CustomSliderWidget(
                        items: widget.product.gallery,
                      ),
                      DelayedDisplay(
                        delay: const Duration(milliseconds: 100),
                        fadingDuration: const Duration(milliseconds: 300),
                        slidingBeginOffset: const Offset(0, 1),
                        child: Container(
                          margin: EdgeInsets.only(top: size.height * 0.29),
                          decoration: const BoxDecoration(
                              color: kBackgroundColor2,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32),
                                topRight: Radius.circular(32),
                              )),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 20, bottom: 2, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      widget.product.name,
                                      style: const TextStyle(
                                          color: kPrimaryColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite_border,
                                        color: kPrimaryColor,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 18, bottom: 20),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent.shade200,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '4.5 (2.7k)',
                                      style: TextStyle(color: Colors.black45),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, bottom: 20, right: 20),
                                child: Text(
                                  widget.product.description,
                                  style: const TextStyle(
                                      color: Colors.black45, height: 1.3),
                                ),
                              ),
                              const CostomDivider(),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    const Text(
                                      'Colors',
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    ...List.generate(
                                      widget.product.colors.length,
                                      (index) => SelectedPoint(
                                        color: choiceColor(
                                            widget.product.colors[index]),
                                        myIndex: index,
                                        selectedItemIndex: selectedColorIndex,
                                        press: () {
                                          setState(() {
                                            selectedColorIndex = index;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const CostomDivider(),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    const Text(
                                      'Quantity',
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (selectedQuantity > 1)
                                            selectedQuantity--;
                                        });
                                      },
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 12),
                                        color: kPrimaryColor,
                                        child: const Text(
                                          '-',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      selectedQuantity.toString(),
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 23),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectedQuantity++;
                                        });
                                      },
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 12),
                                        color: kPrimaryColor,
                                        child: const Text(
                                          '+',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const CostomDivider(),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Text(
                                  '${widget.product.reviews.length} reviews',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              ...List.generate(
                                widget.product.reviews.length,
                                (index) => ReviewCard(
                                  review: widget.product.reviews[index],
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
            ),
            //price and add cart button
            DelayedDisplay(
              delay: const Duration(milliseconds: 350),
              fadingDuration: const Duration(milliseconds: 300),
              slidingBeginOffset: const Offset(0, 1),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 20, top: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Price',
                            style: TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            "\$${widget.product.price.toString()}",
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 23),
                          ),
                        ],
                      ),
                    ),
                    const CartButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Color choiceColor(String colorName) {
  switch (colorName) {
    case 'red':
      return Colors.red;
    case 'black':
      return Colors.black;
    case 'blue':
      return Colors.blue;
    case 'green':
      return Colors.green;
    case 'white':
      return Colors.white;
    case 'yellow':
      return Colors.yellow;

    default:
      return Colors.transparent;
  }
}
