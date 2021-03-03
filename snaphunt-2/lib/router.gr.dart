// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'model/game.dart';
import 'model/hunt.dart';
import 'model/player.dart';
import 'ui/how_to_play.dart';
import 'ui/login.dart';
import 'ui/multiplayer/create_room.dart';
import 'ui/multiplayer/lobby.dart';
import 'ui/multiplayer/multiplayer.dart';
import 'ui/multiplayer/multiplayer_result.dart';
import 'ui/multiplayer/room.dart';
import 'ui/singleplayer/single_result.dart';
import 'ui/singleplayer/single_settings.dart';
import 'ui/singleplayer/singleplayer.dart';

class Routes {
  static const String login = '/';
  static const String lobby = '/Lobby';
  static const String createRoom = '/create-room';
  static const String multiPlayer = '/multi-player';
  static const String room = '/Room';
  static const String resultMultiPlayer = '/result-multi-player';
  static const String singlePlayerSettings = '/single-player-settings';
  static const String singlePlayer = '/single-player';
  static const String resultScreenSinglePlayer = '/result-screen-single-player';
  static const String howToPlay = '/how-to-play';
  static const all = <String>{
    login,
    lobby,
    createRoom,
    multiPlayer,
    room,
    resultMultiPlayer,
    singlePlayerSettings,
    singlePlayer,
    resultScreenSinglePlayer,
    howToPlay,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.login, page: Login),
    RouteDef(Routes.lobby, page: Lobby),
    RouteDef(Routes.createRoom, page: CreateRoom),
    RouteDef(Routes.multiPlayer, page: MultiPlayer),
    RouteDef(Routes.room, page: Room),
    RouteDef(Routes.resultMultiPlayer, page: ResultMultiPlayer),
    RouteDef(Routes.singlePlayerSettings, page: SinglePlayerSettings),
    RouteDef(Routes.singlePlayer, page: SinglePlayer),
    RouteDef(Routes.resultScreenSinglePlayer, page: ResultScreenSinglePlayer),
    RouteDef(Routes.howToPlay, page: HowToPlay),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    Login: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const Login(),
        settings: data,
      );
    },
    Lobby: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => Lobby(),
        settings: data,
      );
    },
    CreateRoom: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => CreateRoom(),
        settings: data,
      );
    },
    MultiPlayer: (data) {
      final args = data.getArgs<MultiPlayerArguments>(
        orElse: () => MultiPlayerArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => MultiPlayer(
          key: args.key,
          userId: args.userId,
          players: args.players,
          game: args.game,
        ),
        settings: data,
      );
    },
    Room: (data) {
      final args = data.getArgs<RoomArguments>(
        orElse: () => RoomArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => Room(
          key: args.key,
          game: args.game,
          userId: args.userId,
          isHost: args.isHost,
        ).wrappedRoute(context),
        settings: data,
      );
    },
    ResultMultiPlayer: (data) {
      final args = data.getArgs<ResultMultiPlayerArguments>(
        orElse: () => ResultMultiPlayerArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ResultMultiPlayer(
          key: args.key,
          gameId: args.gameId,
          title: args.title,
          duration: args.duration,
        ),
        settings: data,
      );
    },
    SinglePlayerSettings: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SinglePlayerSettings(),
        settings: data,
      );
    },
    SinglePlayer: (data) {
      final args = data.getArgs<SinglePlayerArguments>(
        orElse: () => SinglePlayerArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SinglePlayer(
          key: args.key,
          numOfObjects: args.numOfObjects,
          duration: args.duration,
        ),
        settings: data,
      );
    },
    ResultScreenSinglePlayer: (data) {
      final args = data.getArgs<ResultScreenSinglePlayerArguments>(
        orElse: () => ResultScreenSinglePlayerArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ResultScreenSinglePlayer(
          key: args.key,
          isHuntFinished: args.isHuntFinished,
          objects: args.objects,
          duration: args.duration,
        ),
        settings: data,
      );
    },
    HowToPlay: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => HowToPlay(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension AppRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushLogin() => push<dynamic>(Routes.login);

  Future<dynamic> pushLobby() => push<dynamic>(Routes.lobby);

  Future<dynamic> pushCreateRoom() => push<dynamic>(Routes.createRoom);

  Future<dynamic> pushMultiPlayer({
    Key key,
    String userId,
    List<Player> players,
    Game game,
  }) =>
      push<dynamic>(
        Routes.multiPlayer,
        arguments: MultiPlayerArguments(
            key: key, userId: userId, players: players, game: game),
      );

  Future<dynamic> pushRoom({
    Key key,
    Game game,
    String userId,
    bool isHost,
  }) =>
      push<dynamic>(
        Routes.room,
        arguments:
            RoomArguments(key: key, game: game, userId: userId, isHost: isHost),
      );

  Future<dynamic> pushResultMultiPlayer({
    Key key,
    String gameId,
    String title,
    int duration,
  }) =>
      push<dynamic>(
        Routes.resultMultiPlayer,
        arguments: ResultMultiPlayerArguments(
            key: key, gameId: gameId, title: title, duration: duration),
      );

  Future<dynamic> pushSinglePlayerSettings() =>
      push<dynamic>(Routes.singlePlayerSettings);

  Future<dynamic> pushSinglePlayer({
    Key key,
    int numOfObjects,
    int duration,
  }) =>
      push<dynamic>(
        Routes.singlePlayer,
        arguments: SinglePlayerArguments(
            key: key, numOfObjects: numOfObjects, duration: duration),
      );

  Future<dynamic> pushResultScreenSinglePlayer({
    Key key,
    bool isHuntFinished,
    List<Hunt> objects,
    Duration duration,
  }) =>
      push<dynamic>(
        Routes.resultScreenSinglePlayer,
        arguments: ResultScreenSinglePlayerArguments(
            key: key,
            isHuntFinished: isHuntFinished,
            objects: objects,
            duration: duration),
      );

  Future<dynamic> pushHowToPlay() => push<dynamic>(Routes.howToPlay);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// MultiPlayer arguments holder class
class MultiPlayerArguments {
  final Key key;
  final String userId;
  final List<Player> players;
  final Game game;
  MultiPlayerArguments({this.key, this.userId, this.players, this.game});
}

/// Room arguments holder class
class RoomArguments {
  final Key key;
  final Game game;
  final String userId;
  final bool isHost;
  RoomArguments({this.key, this.game, this.userId, this.isHost});
}

/// ResultMultiPlayer arguments holder class
class ResultMultiPlayerArguments {
  final Key key;
  final String gameId;
  final String title;
  final int duration;
  ResultMultiPlayerArguments(
      {this.key, this.gameId, this.title, this.duration});
}

/// SinglePlayer arguments holder class
class SinglePlayerArguments {
  final Key key;
  final int numOfObjects;
  final int duration;
  SinglePlayerArguments({this.key, this.numOfObjects, this.duration});
}

/// ResultScreenSinglePlayer arguments holder class
class ResultScreenSinglePlayerArguments {
  final Key key;
  final bool isHuntFinished;
  final List<Hunt> objects;
  final Duration duration;
  ResultScreenSinglePlayerArguments(
      {this.key, this.isHuntFinished, this.objects, this.duration});
}
