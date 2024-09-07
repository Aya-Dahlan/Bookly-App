import 'package:bookly_app/Features/home/presentaion/views/widgets/similar_books_listview.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 16.h,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}