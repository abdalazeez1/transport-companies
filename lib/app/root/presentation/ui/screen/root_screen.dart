import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:transport_companies/app/check/presentation/ui/screen/check_Screen.dart';
import 'package:transport_companies/app/profile/presentation/ui/screen/profile_Screen.dart';
import 'package:transport_companies/app/root/presentation/state/root_provider.dart';
import 'package:transport_companies/app/root/presentation/ui/widget/app_page_view.dart';
import 'package:transport_companies/app/trips/presentation/ui/screen/trips_screen.dart';

import '../../../../home/presentation/ui/screen/home_screen.dart';

class RootScreen extends StatefulWidget {
  static const routePath = '/';
  const RootScreen({Key? key}) : super(key: key);
  static Page pageBuilder(BuildContext context, GoRouterState state) {
    return MaterialPage<void>(
      key: state.pageKey,
      child: const RootScreen(),
    );
  }

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  late Widget icon;

  late List<String> titles;

  late List<Widget> _pages;
  late PageStorageBucket _bucket;

  @override
  void initState() {
    _initState();
    super.initState();
  }

  void _initState() {
    _bucket = PageStorageBucket();

    titles = ['home', 'check', 'trips', 'profile'];
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => RootProvider(),
      child: Builder(builder: (context) {
        return Consumer<RootProvider>(
          builder: (context, provider, child) {
            return Scaffold(
              drawer: Drawer(
                child: Column(
                  children: const [
                    UserAccountsDrawerHeader(
                      accountEmail: Text('abdalazeezalyosfi@gmail'),
                      accountName: Text('abd alazeez'),
                    ),
                    ListTile(
                      leading: Icon(Icons.logout),
                      title: Text('log out '),
                    )
                  ],
                ),
              ),
              appBar: AppBar(
                title: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 450),
                  child: Text(
                    titles[provider.index],
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              body: AppPageView(
                  bucket: _bucket,
                  controller: provider.pageController,
                  pages: [
                    const HomeScreen(),
                    CheckScreen(provider: provider),
                    TripsScreen(),
                    const ProfileScreen()
                  ]),
              bottomNavigationBar: NavigationBar(
                onDestinationSelected: (index) {
                  provider.moveToPage(index);
                },
                selectedIndex: provider.index,
                destinations: const [
                  NavigationDestination(
                    icon: Icon(
                      Icons.home_outlined,
                    ),
                    selectedIcon: Icon(Icons.home),
                    label: 'home',
                  ),
                  NavigationDestination(
                    icon: Icon(
                      Icons.fact_check_outlined,
                    ),
                    selectedIcon: Icon(Icons.fact_check_rounded),
                    label: 'check',
                  ),
                  NavigationDestination(
                    icon: Icon(
                      Icons.directions_bus,
                    ),
                    selectedIcon: Icon(Icons.directions_bus),
                    label: 'trips',
                  ),
                  NavigationDestination(
                    icon: Icon(
                      Icons.person_outline,
                    ),
                    selectedIcon: Icon(Icons.person_pin),
                    label: 'profile',
                  ),
                ],
                animationDuration: const Duration(milliseconds: 500),
              ),
            );
          },
        );
      }),
    );
  }
}
