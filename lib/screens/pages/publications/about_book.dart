import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:livingseed_media/screens/common/custom_route.dart';

import 'publications.dart';

class AboutBook extends StatefulWidget {
  const AboutBook({super.key});

  @override
  State<AboutBook> createState() => _AboutBookState();
}

class _AboutBookState extends State<AboutBook> {
  List<bool> stars = [true, true, true, true, false];
  void _onStarPressed(int index) {
    setState(() {
      for (int i = 0; i <= index; i++) {
        stars[i] = !stars[index];
      }
      if (!stars[index]) {
        for (int i = index + 1; i < stars.length; i++) {
          stars[i] = false;
        }
      }
    });
  }

  bool more = false;
  String aboutPreface = "- God has made a great offer to mankind: His whole being and all that He is. Beyond the Creator - creation relationship is this offer of 'sonship'...to inherit God! -";
  String aboutAuthor = 'GBILE AKANNI is a widely travelled teacher of God\'s word. He runs several ministerial trainings combined with regular radio and itinerant preaching. He presently lives in Gboko with his wife and four children. Brother Gbile has authored quite a number of publication including "God\'s pattern for christian services": "Tapping God\'s Resources for Life and Ministering".';
  String aboutBook = "BECOMING LIKE JESUS is a short treatise on DISCIPLESHIP. It mirrors several years of carefully built convictions of God's ultimate goal for manking\n\nThe road to genuine and abundant living must wind through GOLGOTHA with an ever increasing conformity with the man of CALVARY. JESUS CHRIST, the Lord. Satan and the contemporary world would have backmailed this way and made it very unpopular. Many sincere Christians have been subtly diverted to seek victory and fulfillment through several shortcuts; sometimes with seeming 'breakthroughs'.\n\nThere is neither true prosperity nor abundant life for any man who is till under the rule of the natural SELFLIFE! God's unequivocal condition to man is:\n'...let him deny himself; and take up his cross and follow Me.'";
  String whoseAbout = "Christians who really want to become like Jesus and get this key to abundant living. It is God's way to entering heaven.";

  List<String> chapters = [
    'Dedication',
    'Preface To The First Edition',
    'Preface To The Second Edition',
    'Acknowledgement',
    '1. God\'s Great Offer',
    '2. What Is Discipleship',
    '3. Who Is A Disciple',
    '4. Why Become A Disciple',
    '5. Conditions For Discipleship',
    '6. What IS Self?',
    '7. What Then Is The Way Out?',
    '8. God\'s Provision For Our Deliverance',
    '9. What Then Is The Cross?',
    '10. The Daily Cross',
    '11. "And Follow Me"',
    '12. Means Of following JESUS',
  ];

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
            'Becoming like Jesus',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'Playfair'
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 130,
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/bookPicture.png'),
                    )
                  ),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  minimumSize: const Size(10, 60),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'N 1,000',
                       style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 20.0,
                        color: Colors.white
                      ),
                    ),
                    SizedBox(width: 20,),
                    Text(
                      '|',
                       style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 20.0,
                        color: Colors.white
                      ),
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(width: 10,),
                    Text(
                      'Add to Cart',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 20.0,
                        color: Colors.white
                      ),
                      textAlign: TextAlign.start
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Becoming like Jesus',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Gbile Akanni',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        color: Theme.of(context).disabledColor,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      aboutPreface,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                      maxLines: 5,
                    ),
                    const SizedBox(height: 10,),
                    Divider(
                      thickness: 1, 
                      color: Theme.of(context).disabledColor.withOpacity(0.4),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(5, (index){
                            return IconButton(
                              onPressed: () => _onStarPressed(index),
                              icon: Icon(
                                Icons.star,
                                color: stars[index] ? Colors.orange.withOpacity(0.5) :  Colors.grey.withOpacity(0.2),
                                size: 30,
                              ),
                            );
                          }),
                        ),
                        const Text(
                          '4.8',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () => GoRouter.of(context).go('${LivingSeedAppRouter.publicationsPath}/${LivingSeedAppRouter.aboutBookPath}/${LivingSeedAppRouter.reviewsPath}'),
                        child: Text(
                          'See Reviews',
                          style: TextStyle(
                            fontSize: 13,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1, 
                      color: Theme.of(context).disabledColor.withOpacity(0.4),
                    ),
                    const SizedBox(height: 20,),
                    const Text(
                      "What's it about?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      aboutBook,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: more == false ? 5 : 30,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: (){
                          setState(() {
                            more = !more;
                          });
                        },
                        child: Text(
                          more == false ? 'see more...': 'see less...',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 13
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Text(
                      "Who's it about?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      whoseAbout,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      )
                    ),
                    const SizedBox(height: 25,),
                    const Text(
                      'Have 12 Chapters',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    ListView.builder(
                      itemCount: chapters.length,
                      shrinkWrap: true,
                      itemBuilder: ((context, index) {
                        return Container(
                          margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Theme.of(context).disabledColor.withOpacity(0.5),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 13.0, horizontal: 10),
                              child: Text(
                                chapters[index],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17
                                ),
                              ),
                            ),
                          );
                        }
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Text(
                      "Who is the author?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      aboutAuthor,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      )
                    ),
                    const SizedBox(height: 25,),
                    const Text(
                      "Recommended for you",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )
                    ),
                    const SizedBox(height: 20,),
                    const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        BooksPage(),
                        SizedBox(width: 10,),
                        BooksPage(),
                        SizedBox(width: 10,),
                        BooksPage(),
                      ],
                    )
                  ),
                  ],
                ),
              )
            ],
          ),
        )
      )
    );
  }
}