
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*.3,
      child: AspectRatio(aspectRatio: 2.8/4,
        child: Container(
         
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.amber,
              image: const DecorationImage(
                fit: BoxFit.fill,
                
                image: AssetImage(AssetsData.book1))),
        ),
      ),
    );
  }
}
