import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:livingseed_media/screens/common/custom_route.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({super.key});

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  @override
  Widget build(BuildContext context) {
    return _bookGridView(context);
  }

  Widget _bookGridView(BuildContext context){
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).go('${LivingSeedAppRouter.publicationsPath}/${LivingSeedAppRouter.aboutBookPath}');
      },
      child: Container(
        margin: const EdgeInsets.all(2),
        width: 130,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8))
        ),
        child: Column(
          children: [
            Container(
              height: 170,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(7)),
                color: Theme.of(context).canvasColor,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/bookPicture.png')
                )
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Becoming like Jesus",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17.0,
                    ),
                  ),
                  Text(
                    "Gbile Akanni",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            '4.8',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange,
                            ),
                          ),
                          SizedBox(width: 5,),
                          Icon(
                            Icons.star,
                            color: Colors.deepOrange,
                            size: 12,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.deepOrange,
                            size: 12,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.deepOrange,
                            size: 12,
                          ),
                          Icon(
                            Icons.star_rate_sharp,
                            color: Colors.deepOrange,
                            size: 12,
                          ),
                          Icon(
                            Icons.star_outline,
                            color: Colors.deepOrange,
                            size: 12,
                          ),
                        ],
                      ),
                    ],
                  ),               
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}