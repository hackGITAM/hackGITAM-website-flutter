import 'package:flutter/material.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
    return Scaffold(
      backgroundColor: const Color(0xff2E3440),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 100),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // color: const Color(0xff2E3440),
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "hackGITAM 2020",
                        style: TextStyle(
                          color: Color(0xffECEFF4),
                          fontSize: 50,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        "24hrs hackathon",
                        style: TextStyle(
                          color: Color(0xffD8DEE9),
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        "COMING SOON!",
                        style: TextStyle(
                          color: Color(0xffD8DEE9),
                          fontSize: 25,
                        ),
                      )
                    ],
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.redAccent,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
