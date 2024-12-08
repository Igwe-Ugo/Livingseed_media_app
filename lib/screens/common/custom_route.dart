import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:livingseed_media/screens/common/custom_bottomnav.dart';
import 'package:livingseed_media/screens/pages/accounts/accounts.dart';
import 'package:livingseed_media/screens/pages/messages/library.dart';
import 'package:livingseed_media/screens/pages/publications/publications.dart';
import '../models/models.dart';
import '../pages/auth/auth.dart';
import '../pages/widget.dart';

class LivingSeedAppRouter {
  static final LivingSeedAppRouter _instance = LivingSeedAppRouter._internal();
  static LivingSeedAppRouter get instance => _instance;
  static late final GoRouter router;
  static final GlobalKey<NavigatorState> parentNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> homeTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> booksTabNavigationKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> messagesTabNavigationKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> accountTabNavigationKey =
      GlobalKey<NavigatorState>();
  BuildContext get context =>
      router.routerDelegate.navigatorKey.currentContext!;
  GoRouterDelegate get routerDelegate => router.routerDelegate;
  GoRouteInformationParser get routeInformationParser =>
      router.routeInformationParser;

  factory LivingSeedAppRouter() {
    return _instance;
  }

  static const String homePath = '/home';
  static const String publicationsPath = '/books';
  static const String messagesPath = '/messages';
  static const String accountPath = '/account';
  static const String aboutBookPath = 'about_book';
  static const String cartPath = 'cart';
  static const String editAccountPath = 'editAccount';
  static const String loginPath = '/login';
  static const String signUpPath = '/signup';
  static const String reviewsPath = 'reviews';
  static const String writeReviewPath = 'write_review';
  static const String videoMessagesPath = 'video_messages';
  static const String audioScreenPath = 'audio_screen';
  static const String changePasswordPath = 'change_password';
  static const String notificationPath = 'notifications';

  LivingSeedAppRouter._internal() {
    final routes = <RouteBase>[
      GoRoute(
        path: loginPath,
        builder: (context, state) => const LivingSeedSignIn(),
      ),
      GoRoute(
        path: signUpPath,
        builder: (context, state) => const LivingSeedSignUp(),
      ),
      StatefulShellRoute.indexedStack(
          parentNavigatorKey: parentNavigatorKey,
          builder: (context, state, navigationShell) {
            return LivingSeedNavBar(navigationShell: navigationShell);
          },
          branches: <StatefulShellBranch>[
            StatefulShellBranch(
                navigatorKey: homeTabNavigatorKey,
                routes: <RouteBase>[
                  GoRoute(
                      path: homePath,
                      builder: (context, state) => const HomePage(),
                      routes: [
                        GoRoute(
                            path: notificationPath,
                            builder: (context, state) => const Notifications(
                                  index: 1,
                                ))
                      ]),
                ]),
            StatefulShellBranch(
                navigatorKey: booksTabNavigationKey,
                routes: <RouteBase>[
                  GoRoute(
                      path: publicationsPath,
                      builder: (context, state) => const PublicationsPage(),
                      routes: [
                        GoRoute(
                            path: notificationPath,
                            builder: (context, state) => const Notifications(
                                  index: 2,
                                )),
                        GoRoute(
                            path: aboutBookPath,
                            builder: (context, state) => const AboutBook(),
                            routes: [
                              GoRoute(
                                  path: reviewsPath,
                                  builder: (context, state) => const Reviews(),
                                  routes: [
                                    GoRoute(
                                      path: writeReviewPath,
                                      builder: (context, state) =>
                                          const WriteReview(),
                                    ),
                                  ]),
                            ]),
                      ]),
                ]),
            StatefulShellBranch(
                navigatorKey: messagesTabNavigationKey,
                routes: <RouteBase>[
                  GoRoute(
                      path: messagesPath,
                      builder: (context, state) => const MessagesPage(),
                      routes: [
                        GoRoute(
                            path: notificationPath,
                            builder: (context, state) => const Notifications(
                                  index: 3,
                                )),
                        GoRoute(
                            path: videoMessagesPath,
                            builder: (context, state) => const VideoMessages()),
                        GoRoute(
                          path: audioScreenPath,
                          builder: (context, state) {
                            final audioSongs = state.extra as AudioMessage;
                            return AudioScreen(
                              audioSongs: audioSongs,
                            );
                          },
                        ),
                      ]),
                ]),
            StatefulShellBranch(
                navigatorKey: accountTabNavigationKey,
                routes: <RouteBase>[
                  GoRoute(
                      path: accountPath,
                      builder: (context, state) => const AccountPage(),
                      routes: [
                        GoRoute(
                            path: notificationPath,
                            builder: (context, state) => const Notifications(
                                  index: 4,
                                )),
                        GoRoute(
                          path: cartPath,
                          builder: (context, state) => const Cart(),
                        ),
                        GoRoute(
                          path: editAccountPath,
                          builder: (context, state) => const Profile(),
                        ),
                        GoRoute(
                          path: changePasswordPath,
                          builder: (context, state) => const ChangePassword(),
                        )
                      ]),
                ]),
          ])
    ];

    router = GoRouter(
      navigatorKey: parentNavigatorKey,
      initialLocation: loginPath,
      routes: routes,
    );
  }
}
