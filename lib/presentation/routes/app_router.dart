import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:next_starter/presentation/layouts/home/home_main_page.dart';
import 'package:next_starter/presentation/layouts/home/home_mission_page.dart';
import 'package:next_starter/presentation/pages/discussion/chat_list_page.dart';
import 'package:next_starter/presentation/pages/discussion/chat_page.dart';
import 'package:next_starter/presentation/pages/hero_empty_router_page.dart';
import 'package:next_starter/presentation/pages/home/home_page.dart';
import 'package:next_starter/presentation/pages/karma/main/karma_main_page.dart';
import 'package:next_starter/presentation/pages/login/login_page.dart';
import 'package:next_starter/presentation/pages/mission/mission_detail_page.dart';
import 'package:next_starter/presentation/pages/onboarding_page.dart';
import 'package:next_starter/presentation/pages/profile/profile_page.dart';
import 'package:next_starter/presentation/pages/register/institution/register_institution_page.dart';
import 'package:next_starter/presentation/pages/register/register_congratulation_page.dart';
import 'package:next_starter/presentation/pages/register/volunteer/register_volunteer_page.dart';
import 'package:next_starter/presentation/pages/splash_page.dart';

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
        AutoRoute(
          page: HeroEmptyRouterPage,
          name: 'HomeMainRoute',
          initial: true,
          children: [
            AutoRoute(page: HomeDashboardPage, initial: true),
            AutoRoute(page: MissionDetailPage),
          ],
        ),
        AutoRoute(page: HomeMissionPage),
        AutoRoute(
          page: HeroEmptyRouterPage,
          name: 'HomeDiscussionRoute',
          children: [
            AutoRoute(page: ChatListPage, initial: true),
          ],
        ),
      ],
    ),
    AutoRoute(page: LoginPage),
    AutoRoute(page: KarmaMainPage),
    AutoRoute(page: ProfilePage),
    AutoRoute(page: ChatPage),
  ],
)
class AppRouter extends _$AppRouter {}
