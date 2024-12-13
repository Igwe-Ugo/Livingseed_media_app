import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/LSeed-Logo-1.png',
                      scale: 2.3,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      'Living Seed Media',
                      style: TextStyle(
                        fontFamily: 'Playfair',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Welcome\nElijah Nwamadi',
                      style: TextStyle(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Playfair',
                      ),
                    ),
                    CircleAvatar(
                      radius: 20,
                      child: Image.asset('assets/images/profile.png'),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    border: Border.all(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Theme.of(context).disabledColor.withOpacity(0.15),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Search for books, videos, or messages...',
                      prefixIcon: const Icon(Iconsax.search_favorite_1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      fillColor:
                          Theme.of(context).disabledColor.withOpacity(0.2),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Main Content Area
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Books Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionTitle(title: 'Books'),
                      TextButton(
                        onPressed: () {},
                        child: Text('More...',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            )),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  HorizontalList(
                      items: List.generate(5, (index) => 'Book $index')),

                  const SizedBox(height: 20),

                  // Videos Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionTitle(title: 'Video Messages'),
                      TextButton(
                        onPressed: () {},
                        child: Text('More...',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            )),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  HorizontalList(
                      items: List.generate(5, (index) => 'Video $index')),

                  const SizedBox(height: 20),

                  // Songs Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionTitle(title: 'Audio Messages'),
                      TextButton(
                        onPressed: () {},
                        child: Text('More...',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            )),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  HorizontalList(
                      items: List.generate(5, (index) => 'Song $index')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}

class HorizontalList extends StatelessWidget {
  final List<String> items;
  const HorizontalList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return Container(
            width: 120,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                items[index],
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
