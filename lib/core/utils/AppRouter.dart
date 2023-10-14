import 'package:booking_app/features/home/presentaion/views/BookDetailsView.dart';
import 'package:booking_app/features/home/presentaion/views/homeView.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/splash/presentation/views/SplashView.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>  const SplashView(),
      ),
      GoRoute(
        path: kHomeView ,
        builder: (BuildContext context, GoRouterState state) =>  const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView ,
        builder: (BuildContext context, GoRouterState state) =>  const BookDetailsView(),
      ),
    ],
  );

}