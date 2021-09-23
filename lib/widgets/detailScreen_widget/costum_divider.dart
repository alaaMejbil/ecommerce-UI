import 'package:flutter/material.dart';

import '../../constans.dart';

class CostomDivider extends StatelessWidget {
  const CostomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Divider(
        color: kPrimaryColor,
        thickness: 0.2,
      ),
    );
  }
}
