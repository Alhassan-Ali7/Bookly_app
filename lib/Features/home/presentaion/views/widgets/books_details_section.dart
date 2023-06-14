import 'package:bookly_app/Features/home/data/models/BookModel.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/custom_book_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2, vertical: 30),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          bookModel.volumeInfo!.title!,
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          bookModel.volumeInfo!.authors![0],
          style: Styles.textStyle18.copyWith(
            color: Colors.white70,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
          ),
          maxLines: 12,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 18,
        ),
         BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          count: bookModel.volumeInfo!.ratingsCount ?? 0,
          rating: bookModel.volumeInfo!.averageRating ?? 0,
        ),
        const SizedBox(
          height: 37,
        ),
         BooksAction(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
