import 'package:auto_route/auto_route.dart';
import 'package:next_starter/presentation/layouts/home/home_discussion_page.dart';
import 'package:next_starter/presentation/layouts/home/home_main_page.dart';
import 'package:next_starter/presentation/layouts/home/home_mission_page.dart';
import 'package:next_starter/presentation/pages/home/home_page.dart';
import 'package:next_starter/presentation/pages/login/login_page.dart';
import 'package:next_starter/presentation/pages/register/institution/register_institution_page.dart';
import 'package:next_starter/presentation/pages/register/register_congratulation_page.dart';
import 'package:next_starter/presentation/pages/register/volunteer/register_volunteer_page.dart';
import 'package:next_starter/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:next_starter/presentation/pages/onboarding_page.dart';

part 'app_router.gr.dart';

@LazySingleton()
@MaterialAutoRouter(
  replaceInRouteName: 'Page|Screen,Route',
  routes: [
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: OnboardingPage),
    AutoRoute(page: RegisterVolunteerPage),
    AutoRoute(page: RegisterInstitutionPage),
    AutoRoute(page: RegisterCongratulationPage),
    AutoRoute(
      page: HomePage,
      children: [
        AutoRoute(page: HomeMainPage, initial: true),
        AutoRoute(page: HomeMissionPage),
        AutoRoute(page: HomeDiscussionPage),
      ],
    ),
    AutoRoute(page: LoginPage),
  ],
)
class AppRouter extends _$AppRouter {}
