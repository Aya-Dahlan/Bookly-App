import 'package:bookly_app/Features/home/presentaion/views/widgets/book_rating.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.h,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.amber,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.book1),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    'Harry Potter and the Goblet of Fire',
                    style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  'J.K. Rowling',
                  style: Styles.textStyle14,
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  children: [
                    Text(
                      '19.99 \$',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                   const Spacer(), 
                   const  BookRating(),
                  ],
                ), 
            
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
