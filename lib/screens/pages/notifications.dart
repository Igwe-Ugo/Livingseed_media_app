import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../common/widget.dart';

class Notifications extends StatelessWidget {
  final int index;
  const Notifications({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'June 1',
              style: TextStyle(fontSize: 12),
            ),
          ),
        ),
        ...notification(
          context,
          [
            {
              'iconPath': 'assets/images/Profile icon.png',
              'title': 'Payment received, thank you!',
              'description': 'Your payment has been successfully approved.',
            },
            {
              'iconPath': 'assets/images/Profile icon.png',
              'title': '"Money Routine" is making waves',
              'description': '@bisoye just liked your collection'
            },
            {
              'iconPath': 'assets/images/Profile icon.png',
              'title': '"Money Routine" latest review in.',
              'description': '@bisoye dropped a new review on your collection.'
            },
          ],
          index,
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'May 24',
              style: TextStyle(fontSize: 12),
            ),
          ),
        ),
        ...notification(
          context,
          [
            {
              'iconPath': 'assets/images/Profile icon.png',
              'title': 'Payment received, thank you!',
              'description': 'Your payment has been successfully approved.',
            },
            {
              'iconPath': 'assets/images/Profile icon.png',
              'title': '"Money Routine" is making waves',
              'description': '@bisoye just liked your collection'
            },
            {
              'iconPath': 'assets/images/Profile icon.png',
              'title': '"Money Routine" latest review in.',
              'description': '@bisoye dropped a new review on your collection.'
            },
          ],
          index,
        ),
      ],
    );
  }
}

List<Widget> notification(
  BuildContext context,
  List<Map<String, String>> notifications,
  int index,
) {
  return notifications.map((notif) {
    return notify(context,
        iconPath: notif['iconPath']!,
        titleNotify: notif['title']!,
        descriptionNotify: notif['description']!,
        index: index);
  }).toList();
}

String getRoute(int index) {
  try {
    switch (index) {
      case 0:
        return '${LivingSeedAppRouter.homePath}/${LivingSeedAppRouter.notificationPath}';
      case 1:
        return '${LivingSeedAppRouter.publicationsPath}/${LivingSeedAppRouter.notificationPath}';
      case 2:
        return '${LivingSeedAppRouter.messagesPath}/${LivingSeedAppRouter.notificationPath}';
      case 3:
        return '${LivingSeedAppRouter.accountPath}/${LivingSeedAppRouter.notificationPath}';
      default:
        throw Exception('Unknown index: $index');
    }
  } catch (e) {
    debugPrint('Error in getRoute: $e');
    return LivingSeedAppRouter.homePath;
  }
}

void _navigateToOrderBreakdown(BuildContext context, int index) {
  context.go(getRoute(index));
}

Widget notify(
  BuildContext context, {
  required String iconPath,
  required String titleNotify,
  required String descriptionNotify,
  required int index,
}) {
  return ListTile(
    onTap: () {
      _navigateToOrderBreakdown(context, index);
    },
    contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
    leading: Container(
      padding: const EdgeInsets.all(5),
      constraints: const BoxConstraints(
        minWidth: 30,
        minHeight: 30,
      ),
      child: CircleAvatar(
        radius: 15,
        child: Image.asset(iconPath),
      ),
    ),
    title: Text(
      titleNotify,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
    subtitle: SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: Text(
        descriptionNotify,
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 3,
      ),
    ),
    trailing: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.arrow_forward_ios_outlined, size: 17),
    ),
  );
}
