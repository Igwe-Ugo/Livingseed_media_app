import 'package:flutter/material.dart';
import 'package:livingseed_media/screens/pages/publications/publications.dart';

class AllPage extends StatefulWidget {
  const AllPage ({super.key});

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Books',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'We think you will like these',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Theme.of(context).disabledColor,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'More',
                    style: TextStyle(
                      fontSize: 17,
                      color: Theme.of(context).primaryColor
                    )
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15,),
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
          const SizedBox(height: 20,),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Bible Study Materials',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'We think you will like these',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Theme.of(context).disabledColor,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'More',
                    style: TextStyle(
                      fontSize: 17,
                      color: Theme.of(context).primaryColor
                    )
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15,),
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
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Seminar Papers',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'We think you will like these',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Theme.of(context).disabledColor,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'More',
                    style: TextStyle(
                      fontSize: 17,
                      color: Theme.of(context).primaryColor
                    )
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15,),
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
          const SizedBox(height: 20,),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Magazines',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'We think you will like these',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Theme.of(context).disabledColor,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'More',
                    style: TextStyle(
                      fontSize: 17,
                      color: Theme.of(context).primaryColor
                    )
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15,),
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
    );
  }
}