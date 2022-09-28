import 'package:flutter/material.dart';
import 'package:okoul_quizu/ui/pages/home_page/home_page.dart';
import 'package:okoul_quizu/utils/constants.dart';

import '../ui/pages/profile_page/settings_page.dart';

Route<dynamic> geneateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homePage:
      return MaterialPageRoute(builder: (context) => const HomePage());

    case settingsPage:
      return MaterialPageRoute(
        builder: (context) => const SettingsPage(),
      );

    default:
      return MaterialPageRoute(builder: (context) => const HomePage());
  }
}
