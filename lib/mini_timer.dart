// ignore_for_file: prefer_const_constructors

import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class MiniTimer extends StatelessWidget {
  const MiniTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Neumorphic(
          style: NeumorphicStyle(depth: 6),
          child: Container(
            width: 300,
            height: 100,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Pomodoro Sync Timer',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: NeumorphicTheme.defaultTextColor(context),
                        letterSpacing: 2,
                        fontFamily: 'bariol',
                      ),
                    ),
                    const SizedBox(height: 8),
                    Neumorphic(
                      style: NeumorphicStyle(
                        depth: 2,
                        intensity: 1,
                        oppositeShadowLightSource: true,
                      ),
                      child: SizedBox(
                        width: 200,
                        height: 48,
                        child: Center(
                          child: Text(
                            '09:32',
                            style: TextStyle(
                              fontSize: 32,
                              color: NeumorphicTheme.defaultTextColor(context),
                              letterSpacing: 4,
                              fontFamily: 'bariol',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NeumorphicButton(
                      onPressed: () {},
                      style: NeumorphicStyle(
                        intensity: 1,
                        depth: 2,
                        shape: NeumorphicShape.convex,
                        boxShape: NeumorphicBoxShape.circle(),
                      ),
                      child: Icon(
                        Icons.open_in_full,
                        size: 16,
                        color: NeumorphicTheme.defaultTextColor(context),
                      ),
                    ),
                    NeumorphicButton(
                      onPressed: () {},
                      style: NeumorphicStyle(
                        intensity: 1,
                        depth: 2,
                        shape: NeumorphicShape.convex,
                        boxShape: NeumorphicBoxShape.circle(),
                      ),
                      child: Icon(
                        Icons.remove,
                        size: 16,
                        color: NeumorphicTheme.defaultTextColor(context),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
