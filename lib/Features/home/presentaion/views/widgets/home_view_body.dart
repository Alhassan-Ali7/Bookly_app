import 'package:bookly_app/Features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/fetured_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CustomAppBar(),
        FeaturedBooksListView(),
        Padding(
          padding: EdgeInsets.only(left: 30.0, top: 49, bottom: 20),
          child: Text(
            'Best Seller',
            style: Styles.titleMedium,
          ),
        ),
      ],
    );
  }
}
