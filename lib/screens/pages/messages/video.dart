import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoMessages extends StatefulWidget {
  const VideoMessages({super.key});

  @override
  State<VideoMessages> createState() => _VideoMessagesState();
}

class _VideoMessagesState extends State<VideoMessages> {
  final TextEditingController _searchVideoController = TextEditingController();
  late VideoPlayerController videoPlayerController;
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25.0),
        child: Column(
          children: [
            const SizedBox(height: 15,),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Theme.of(context).disabledColor.withOpacity(0.5),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                controller: _searchVideoController,
                onChanged: (text) {},
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  hintText: 'search video',
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                    color: Theme.of(context).disabledColor,
                  ),
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Theme.of(context).disabledColor,
                    fontSize: 20,
                    fontFamily: 'Satoshi',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            ListView(
              shrinkWrap: true,
              children: [
                ...buildVideoMessages(context, [
                  {
                    'videoPath': 'assets/images/bookPicture.png',
                    'size': '345',
                    'title': 'Becoming like Jesus',
                    'speaker': 'Gbile Akanni',
                    'time': '2:00:35'
                  },
                  {
                    'videoPath': 'assets/images/bookPicture.png',
                    'size': '200',
                    'title': 'Silent steps to becoming prodigal',
                    'speaker':'Emmanuel Akhemibe',
                    'time': '1:35:56'
                  },
                ]),
              ],
            )
          ],
        ),
      ),
    );
  }

  List<Widget> buildVideoMessages(BuildContext context, List<Map<String, String>> books) {
    return books.map((video) => videos(
      context,
      videoPath: video['videoPath']!,
      size: video['size']!,
      title: video['title']!,
      speaker: video['speaker']!,
      time: video['time']!
    )).toList();
  }

  Widget videos(BuildContext context,{
      required String videoPath,
      required String size,
      required String title,
      required String speaker,
      required String time,
    }) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 70,
                    width: 140,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        image: AssetImage(videoPath),
                        fit: BoxFit.fill
                      )
                    )
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      Text(
                        speaker,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '$size MB',
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0),
                          ),
                          const IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.more_vert
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}