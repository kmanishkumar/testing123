import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:snaphunt/data/repository.dart';
import 'package:snaphunt/services/auth.dart';
import 'package:snaphunt/services/connectivity.dart';
import 'package:snaphunt/utils/utils.dart';
import 'package:snaphunt/widgets/common/custom_scroll.dart';
import 'package:snaphunt/router.gr.dart';

List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  cameras = await availableCameras();
  openDB().then((_) async {
    initDB();
    runApp(App(auth: await Auth.create()));
  });
}

class App extends StatefulWidget {
  const App({
    Key key,
    @required this.auth,
  }) : super(key: key);

  final Auth auth;

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  User currentUser;

  @override
  void initState() {
    super.initState();
    Repository.instance.updateLocalWords();
    currentUser = widget.auth.init(_onUserChanged);
  }

  void _onUserChanged() {
    final user = widget.auth.currentUser.value;

    if (user != null) {
      ExtendedNavigator.of(context).push(Routes.login);
    } else {
      ExtendedNavigator.of(context).push(Routes.login);
    }
  }

  @override
  void dispose() {
    widget.auth.dispose(_onUserChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Auth>.value(value: widget.auth),
        ValueListenableProvider<User>.value(value: widget.auth.currentUser),
        StreamProvider<ConnectivityStatus>(
          create: (_) =>
              ConnectivityService().connectionStatusController.stream,
        ),
      ],
      child: MaterialApp(
        title: 'SnapHunt',
        theme: ThemeData(
          primaryColor: Colors.orange,
          fontFamily: 'SF_Atarian_System',
        ),
        builder: ExtendedNavigator.builder<AppRouter>(router: AppRouter())


        //     (context, child) {
        //   return ScrollConfiguration(
        //     behavior: NoOverFlowScrollBehavior(),
        //     ExtendedNavigator.builder<AppRouter>(router: AppRouter()),
        //   );
        // },
      ),
    );
  }
}
