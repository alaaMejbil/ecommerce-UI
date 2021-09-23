import 'package:flutter/material.dart';
import 'package:my_store/model/product.dart';

import '../../constans.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product, required this.onPress})
      : super(key: key);

  final Product product;
  final onPress;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: size.height * 0.03),
        height: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 25,
              offset: Offset(0, 15),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                //margin: EdgeInsets.symmetric(horizontal: 20),
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  // borderRadius: BorderRadius.circular(22),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(22),
                    topLeft: Radius.circular(22),
                  ),
                ),
                child: Image.asset(
                  product.image,
                  //fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  //color: Colors.black12,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  product.name,
                                  style: const TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 19,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.more_vert,
                                color: kPrimaryColor,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            product.band,
                            overflow: TextOverflow.visible,
                            style: const TextStyle(
                              color: Colors.grey,
                              // fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${product.price}\$',
                              style: const TextStyle(
                                color: kPrimaryColor,
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_border,
                                color: kPrimaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
