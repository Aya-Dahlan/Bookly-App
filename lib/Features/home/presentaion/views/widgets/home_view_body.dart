import 'package:bookly_app/Features/home/presentaion/views/widgets/best_seller_listview.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/best_seller_listview_item.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/featured_list_view.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const FeaturedListViewItem(),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
  }
}
