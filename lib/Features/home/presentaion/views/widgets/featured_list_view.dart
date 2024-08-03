import 'package:bookly_app/Features/home/presentaion/views/widgets/custom_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.w),
            child: const CustomListViewItem(),
          );
        },
      ),
    );
  }
}
