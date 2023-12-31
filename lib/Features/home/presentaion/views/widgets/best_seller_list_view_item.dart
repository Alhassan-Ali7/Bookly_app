import 'package:bookly_app/Features/home/data/models/BookModel.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/custom_book_item.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.books});
  final BookModel books;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetailsView , extra: books);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: SizedBox(
          height: 105,
          child: Row(
            children: [
              CustomBookImage(imageUrl: books.volumeInfo!.imageLinks?.thumbnail ??  ''),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0,right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.491,
                        child: Text(
                          // 'Harry Potter and the Goblet of Fire',
                          books.volumeInfo!.title!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        books.volumeInfo!.authors![0],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle14.copyWith(color: const Color(0xffD8D8D8)),
                      ),
                      Row(
                        children: [
                          Text(
                            'Free',
                            style: Styles.textStyle20.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          BookRating(
                            rating: books.volumeInfo!.averageRating ?? 0,
                            count: books.volumeInfo!.ratingsCount ?? 0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


