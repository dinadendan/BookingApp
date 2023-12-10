import 'package:booking_app/constants.dart';
import 'package:booking_app/core/utils/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/utils/ServiceLocator.dart';
import 'features/home/data/repos/homeRepoImplement.dart';
import 'features/home/presentaion/Manager/FeaturedBooksCubit/FeaturedBooksCubit.dart';
import 'features/home/presentaion/Manager/NewestBooksCubit/NewestBooksCubit.dart';
import 'features/search/presentaion/Manager/searchCubit/searchCubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  setupServiceLocator();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomRepoImplement>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomRepoImplement>(),
          )..fetchNewestBooks(),
        ),
        BlocProvider(
          create: (context) =>
              SearchBooksCubit(
                  getIt.get<HomRepoImplement>()),
        )
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        child: MaterialApp.router(
          routerConfig:AppRouter.router,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme: GoogleFonts.montserratTextTheme(ThemeData
                .dark()
                .textTheme),
          ),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}



