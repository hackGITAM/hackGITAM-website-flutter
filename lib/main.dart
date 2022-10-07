import 'package:flutter/material.dart';
//import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:hack_gitam/theme/main_theme.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hackGITAM',
      debugShowCheckedModeBanner: false,
      theme: MainTheme.darkTheme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                          colors: [Colors.black, Colors.transparent],
                          begin: Alignment.topCenter,
                          end: Alignment(0.0, 0.7))
                      .createShader(bounds),
                  blendMode: BlendMode.dstIn,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: const AssetImage('res/imgs/vaporwave.png'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Theme.of(context).backgroundColor.withAlpha(226),
                              BlendMode.color)),
                    ),
                    height: MediaQuery.of(context).size.height + 140,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: (size.width > 1400) ? 800 / 4.5 : 500 / 2.5),
                  height: MediaQuery.of(context).size.height + 100,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      GradientText(
                        "hackGITAM",
                        gradientDirection: GradientDirection.ttb,
                        colors: [
                          Theme.of(context).indicatorColor,
                          Theme.of(context).indicatorColor.withAlpha(10)
                        ],
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: (size.width >= 1350) ? 70 : 60),
                      ),
                      GradientText(
                        "Hackathon Event",
                        gradientDirection: GradientDirection.ttb,
                        colors: [
                          Theme.of(context).shadowColor,
                          Theme.of(context).shadowColor.withAlpha(10)
                        ],
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(fontSize: (size.width >= 1350) ? 66 : 56),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 120)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () => {}, child: const Text("HOME")),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                          ),
                          TextButton(
                              onPressed: () => {}, child: const Text("HOME")),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                          ),
                          TextButton(
                            onPressed: () => {},
                            style: TextButton.styleFrom(
                              minimumSize: const Size(217, 69),
                              textStyle: const TextStyle(
                                fontFamily: "HandelGothic",
                                fontSize: 30,
                                color: Color(0xFF2E3440),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              foregroundColor: const Color(0xFF2E3440),
                              //backgroundColor: const Color(0xFFD08770),
                              backgroundColor: const Color(0xFF81A1C1),
                            ),
                            child: const Text("HOME"),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                          ),
                          TextButton(
                              onPressed: () => {}, child: const Text("HOME")),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 100),
              height: MediaQuery.of(context).size.height - 10,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xff3B4252),
            ),
          ],
        ),
      ),
    );
  }
}
