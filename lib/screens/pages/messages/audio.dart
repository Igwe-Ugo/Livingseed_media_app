import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:livingseed_media/screens/common/custom_route.dart';
import '../../models/models.dart';

class AudioMessages extends StatefulWidget {
  const AudioMessages({super.key});

  @override
  State<AudioMessages> createState() => _AudioMessagesState();
}

class _AudioMessagesState extends State<AudioMessages> {
  late TextEditingController searchAudioController;
  @override
  void initState() {
    super.initState();
    searchAudioController = TextEditingController();
  }

  @override
  void dispose() {
    searchAudioController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    List<AudioMessage> audio = AudioMessage.audioMessage;

    void navigateToAudioScreen(AudioMessage audio) {
      GoRouter.of(context).go('${LivingSeedAppRouter.messagesPath}/${LivingSeedAppRouter.audioScreenPath}', extra: audio);
    }

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 17.0),
        child: Column(
          children: [
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
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: searchAudioController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Theme.of(context).disabledColor.withOpacity(0.15),
                  prefixIcon: const Icon(Icons.audio_file_outlined, size: 17,),
                  errorStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700
                  ),
                  hintText: 'Search Audio',
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  hintStyle: TextStyle(
                    color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Theme.of(context).disabledColor,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            ListView.builder(
              shrinkWrap: true,
              itemCount: audio.length,
              itemBuilder: (context, index){
                var audioSound = audio[index];
                return InkWell(
                  onTap: () => navigateToAudioScreen(audioSound),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                    margin: const EdgeInsets.only(bottom:  10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).disabledColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            audioSound.audioImage,
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 20,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                audioSound.title,
                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)
                              ),
                              Text(
                                audioSound.speaker,
                                maxLines: 2,
                                style: Theme.of(context).textTheme.bodySmall
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}