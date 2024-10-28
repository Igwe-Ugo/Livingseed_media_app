import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:livingseed_media/screens/pages/messages/library.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({super.key,});

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  late final StatefulNavigationShell navigationShell;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding:  EdgeInsets.all(8.0),
          child: Text(
            'Messages',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'Playfair',
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: InkWell(
              onTap: (){},
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    const Icon(Icons.notifications_rounded),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.8),
                        shape: BoxShape.circle,
                      ),
                      child: const Text(
                        '2',
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      dividerColor: Colors.transparent,
                      indicatorColor: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                      indicator: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                      ),
                      tabs: [
                        Tab(
                          child: Text(
                            'Audio',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12.0,
                              color: Theme.of(context).brightness == Brightness.dark
                                  ? Colors.grey
                                  : Colors.black,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Video',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12.0,
                              color: Theme.of(context).brightness == Brightness.dark
                                  ? Colors.grey
                                  : Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: const TabBarView(
                      children: [
                        AudioMessages(),
                        VideoMessages()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}