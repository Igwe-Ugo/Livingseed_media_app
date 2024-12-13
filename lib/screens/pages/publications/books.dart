// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../common/widget.dart';

class Books extends StatelessWidget {
  const Books({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...buildBooks(context, [
          {
            'imagePath': 'assets/images/becoming_like_jesus.png',
            'date': '2012',
            'title': 'Becoming like Jesus',
            'price': "NGN 1,000.00",
            'author': 'Gbile Akanni',
            'rating': '4.8'
          },
          {
            'imagePath': 'assets/images/becoming_like_jesus.png',
            'date': '2022',
            'title': 'Silent steps to becoming prodigal',
            'price': 'NGN 1,200.00',
            'author': 'Lanre Adeboye',
            'rating': '4.6'
          },
          {
            'imagePath': 'assets/images/becoming_like_jesus.png',
            'date': '2012',
            'title': 'Becoming like Jesus',
            'price': "NGN 1,000.00",
            'author': 'Gbile Akanni',
            'rating': '4.8'
          },
          {
            'imagePath': 'assets/images/becoming_like_jesus.png',
            'date': '2022',
            'title': 'Silent steps to becoming prodigal',
            'price': 'NGN 1,200.00',
            'author': 'Lanre Adeboye',
            'rating': '4.6'
          },
        ]),
      ],
    );
  }

  List<Widget> buildBooks(
      BuildContext context, List<Map<String, String>> books) {
    return books
        .map((textbook) => book(context,
            imagePath: textbook['imagePath']!,
            date: textbook['date']!,
            title: textbook['title']!,
            author: textbook['author']!,
            price: textbook['price']!,
            rating: textbook['rating']!))
        .toList();
  }

  Widget book(BuildContext context,
      {required String imagePath,
      required String date,
      required String title,
      required String price,
      required String rating,
      required String author}) {
    return Column(
      children: [
        InkWell(
          onTap: () => GoRouter.of(context).go(
              '${LivingSeedAppRouter.publicationsPath}/${LivingSeedAppRouter.aboutBookPath}'),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 100,
                      width: 100,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Image.asset(
                        imagePath,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                            Text(
                              author,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 14.0),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              rating,
                              style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.deepOrange,
                              size: 12,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.deepOrange,
                              size: 12,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.deepOrange,
                              size: 12,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.deepOrange,
                              size: 12,
                            ),
                            const Icon(
                              Icons.star_outline,
                              color: Colors.deepOrange,
                              size: 12,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          price,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13.0),
                        ),
                        Text(
                          date,
                          style: const TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 12.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Divider(
          thickness: 0.4,
        )
      ],
    );
  }
}
