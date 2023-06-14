import 'package:bookly_app/Features/home/presentaion/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/custom_book_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2, vertical: 30),
          child: const  CustomBookImage(
            imageUrl: 'https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_square.jpg',
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
            color: Colors.white70,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
