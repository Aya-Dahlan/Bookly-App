import 'package:bookly_app/Features/home/presentaion/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/similar_books_listview.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/similar_books_section.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
     
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 40.h,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 30.h,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
        var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.20),
          child: const CustomBookImage(),
        ),
        SizedBox(
          height: 43.h,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5.h,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 37.h,
        ),
        const BooksAction(),
      ],
    );
  }
}
