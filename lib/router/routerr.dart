import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Routerr {
  static RouteFactory onGenerateRouter = (RouteSettings settings) {
    /*switch (settings.name) {

      case HelpInOnTheWayS:
        return _generateMaterialRoute(AnnotatedRegion(
            value: SystemUiOverlayStyle(
              systemNavigationBarColor: AppColor.primaryColorRed,
              systemNavigationBarIconBrightness: Brightness.light,
            ),
            child: HelpInOnTheWay()));
      case ProfilePages:
        return _generateMaterialRoute(ProfilePage());
      case Contents:
        return _generateMaterialRoute(ContentsView());
      case UserNotifications:
        return _generateMaterialRoute(UserNotification());
      case Historys:
        return _generateMaterialRoute(History());
      case Settings:
        return _generateMaterialRoute(SettingsView());
      case Devices:
        return _generateMaterialRoute(DeviceList());
      case DangerZoneScreenS:
        return _generateMaterialRoute(DangerZoneScreen());
      case SplashScreens:
        return _generateMaterialRoute(SplashScreen());
      case LocationSearchS:
        return _generateMaterialRoute(LocationSearch());
      case AreYouInDangers:
        return _generateMaterialRoute(AreYouInDanger());
      case MapViewLocationDesti:
        return _generateMaterialRoute(MapViewLocationDestination());
      case ContentsDetails:
        final arg = settings.arguments! as PacketList;
        return _generateMaterialRoute(ContentDetailsView(arg));
      default:
        return _generateMaterialRoute(Center(
          child: Text(
            "On Unknown Router",
            style: TextStyle(
              color: Colors.red,
              fontSize: 25,
            ),
          ),
        ));
    }*/
  };
}

/*
PageTransition _generateMaterialRoute(Widget screen) {
  return PageTransition(child: screen, type: PageTransitionType.rightToLeftWithFade);
}
*/
