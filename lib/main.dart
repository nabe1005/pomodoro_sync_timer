import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pomodoro_sync_timer/mini_timer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NeumorphicApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        baseColor: Color(0xffb0bdcf),
        shadowDarkColor: Color(0xdd181320),
        shadowLightColor: Color(0xFFe0e5ec),
        shadowDarkColorEmboss: Color(0xdd181320),
        shadowLightColorEmboss: Color(0xFFe0e5ec),
        defaultTextColor: Color(0xff404040),
        depth: 6,
        intensity: 1,
        lightSource: LightSource.topLeft,
      ),
      home: Material(
        child: NeumorphicBackground(
          child: SafeArea(
            child: MiniTimer(),
          ),
        ),
      ),
    );
  }
}
