import 'package:auto_route/auto_route_annotations.dart';
import 'package:snaphunt/ui/home.dart';
import 'package:snaphunt/ui/how_to_play.dart';
import 'package:snaphunt/ui/login.dart';
import 'package:snaphunt/ui/multiplayer/create_room.dart';
import 'package:snaphunt/ui/multiplayer/lobby.dart';
import 'package:snaphunt/ui/multiplayer/multiplayer.dart';
import 'package:snaphunt/ui/multiplayer/multiplayer_result.dart';
import 'package:snaphunt/ui/multiplayer/room.dart';
import 'package:snaphunt/ui/singleplayer/single_result.dart';
import 'package:snaphunt/ui/singleplayer/single_settings.dart';
import 'package:snaphunt/ui/singleplayer/singleplayer.dart';
@MaterialAutoRouter(
  generateNavigationHelperExtension: true,

  routes: <AutoRoute>[
    // initial route is named "/"
    AdaptiveRoute(page: Login, initial: true),
    AdaptiveRoute(page: Lobby),
    AdaptiveRoute(page: CreateRoom),
    AdaptiveRoute(page: MultiPlayer),
    AdaptiveRoute(page: Room),
    AdaptiveRoute(page: ResultMultiPlayer),
    AdaptiveRoute(page: SinglePlayerSettings),
    AdaptiveRoute(page: SinglePlayer),
    AdaptiveRoute(page: ResultScreenSinglePlayer),
    AdaptiveRoute(page: HowToPlay),

  ],
)
class $AppRouter {}

// @MaterialAutoRouter(
//   generateNavigationHelperExtension: true,
// )
// class $Router {
//   Home home;
//
//   // @initial
//   // Login login;
//
//   // Lobby lobby;
//   //
//   // CreateRoom createRoom;
//
//   // MultiPlayer multiPlayer;
//
//   // Room room;
//   //
//   // ResultMultiPlayer resultMultiPlayer;
//
//   // SinglePlayerSettings singlePlayerSettings;
//
//   // SinglePlayer singlePlayer;
//
//   ResultScreenSinglePlayer resultScreenSinglePlayer;
//
//   HowToPlay howToPlay;
// }
