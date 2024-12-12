import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:livingseed_media/screens/common/custom_route.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  List<bool> stars = [false, false, false, false, false];
  bool showWriteReviewTextField = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 17,
              )),
          title: const Align(
            alignment: Alignment.center,
            child: Text(
              'Reviews',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'Playfair'),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () => GoRouter.of(context).go(
                  '${LivingSeedAppRouter.publicationsPath}/${LivingSeedAppRouter.aboutBookPath}/${LivingSeedAppRouter.reviewsPath}/${LivingSeedAppRouter.writeReviewPath}'),
              icon: const Icon(Icons.edit_outlined),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Column(
                      children: [
                        Text(
                          '4.8',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'out of 5',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Iconsax.star1,
                              color: Colors.orange,
                              size: 12,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 12,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 12,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 12,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 12,
                            ),
                            LinearPercentIndicator(
                              barRadius: const Radius.circular(2),
                              width: MediaQuery.of(context).size.width * .5,
                              lineHeight: 6.0,
                              percent: 0.4,
                              progressColor: Colors.black45,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 12,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 12,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 12,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 12,
                            ),
                            LinearPercentIndicator(
                              barRadius: const Radius.circular(2),
                              width: MediaQuery.of(context).size.width * .5,
                              lineHeight: 6.0,
                              percent: 0.7,
                              progressColor: Colors.black45,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 12,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 12,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 12,
                            ),
                            LinearPercentIndicator(
                              barRadius: const Radius.circular(2),
                              width: MediaQuery.of(context).size.width * .5,
                              lineHeight: 6.0,
                              percent: 0.6,
                              progressColor: Colors.black45,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 12,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 12,
                            ),
                            LinearPercentIndicator(
                              barRadius: const Radius.circular(2),
                              width: MediaQuery.of(context).size.width * .5,
                              lineHeight: 6.0,
                              percent: 0.3,
                              progressColor: Colors.black45,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 12,
                            ),
                            LinearPercentIndicator(
                              barRadius: const Radius.circular(2),
                              width: MediaQuery.of(context).size.width * .5,
                              lineHeight: 6.0,
                              percent: 0.2,
                              progressColor: Colors.black45,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text('2,706 Ratings',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 12)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(4, (index) {
                        return IconButton(
                          onPressed: null,
                          icon: Icon(
                            Iconsax.star1,
                            color: Colors.orange.withOpacity(0.5),
                            size: 30,
                          ),
                        );
                      }),
                    ),
                    Icon(
                      Icons.star_half,
                      size: 30,
                      color: Colors.orange.withOpacity(0.5),
                    ),
                  ],
                ),
                Divider(
                  color: Theme.of(context).disabledColor,
                ),
                ListView(
                  shrinkWrap: true,
                  children: [
                    ...buildBooks(context, [
                      {
                        'reviewText':
                            'Amazing book! Read it thrice. Inspiring principle for a Christian life',
                        'date': 'Aug 26, 2023',
                        'rateTitle': 'Best book ever',
                        'reviewer': "Emmanuel Okeke",
                      },
                      {
                        'reviewText':
                            'This is the first book I\'ve read in years. And it sparked my love for living the Christian life',
                        'date': 'Nov 26, 2023',
                        'rateTitle': 'Basic Biblical principles',
                        'reviewer': "Anna Bright",
                      },
                      {
                        'reviewText':
                            'Very profound bibical truth. No more! No less',
                        'date': 'Dec 2, 2023',
                        'rateTitle': 'Great Quality',
                        'reviewer': "Gift Okhaimbe",
                      },
                      {
                        'reviewText':
                            'The victory that overcomes the SELF life and the world lies within it\'s pages',
                        'date': 'Dec 11, 2023',
                        'rateTitle': 'What a powerful book',
                        'reviewer': "Nwamadi Chisomaga",
                      },
                      {
                        'reviewText':
                            'Normally, I would have ignored this book, but it cannot be ignored, such a captivating and truthful book',
                        'date': 'Dec 20, 2023',
                        'rateTitle': 'Heaven\'s gain',
                        'reviewer': "Okorocha Ebubechukwu",
                      },
                      {
                        'reviewText':
                            'How I wish Christians everywhere can just take a bite out of this bread of life. Truly the Christian life would not be hard to emulate and imbibe in the society',
                        'date': 'Jan 2, 2024',
                        'rateTitle': 'More than gold is this book',
                        'reviewer': "Bod Scott",
                      },
                    ]),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  List<Widget> buildBooks(
      BuildContext context, List<Map<String, String>> reviews) {
    return reviews
        .map((reviewed) => review(
              context,
              reviewText: reviewed['reviewText']!,
              date: reviewed['date']!,
              rateTitle: reviewed['rateTitle']!,
              reviewer: reviewed['reviewer']!,
            ))
        .toList();
  }

  Widget review(BuildContext context,
      {required String reviewText,
      required String date,
      required String rateTitle,
      required String reviewer}) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  rateTitle,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 12,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 12,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 12,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 12,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey.withOpacity(0.3),
                      size: 12,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  '$reviewer - $date',
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 11.0),
                ),
              ],
            ),
            Text(
              reviewText,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const Divider(
          thickness: 0.4,
        )
      ],
    );
  }
}
