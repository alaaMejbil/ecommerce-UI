import 'package:flutter/material.dart';
import 'package:my_store/constans.dart';
import 'package:my_store/model/product.dart';

class ReviewCard extends StatelessWidget {
  final Review review;

  const ReviewCard({Key? key, required this.review}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          CircleAvatar(
            backgroundColor: kPrimaryColor,
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      review.userName,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Augest 12,2020',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orangeAccent.shade200,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      review.rating.toString(),
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(review.comment),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
