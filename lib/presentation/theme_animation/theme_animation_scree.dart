import 'package:basics/application/theme_service.dart';
import 'package:basics/presentation/widget_examples/widgets/moon.dart';
import 'package:basics/presentation/widget_examples/widgets/star.dart';
import 'package:basics/presentation/widget_examples/widgets/sun.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeAnimation extends StatelessWidget {
  const ThemeAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text("Theme Animation"),
        centerTitle: true,
      ),
      body: Consumer<ThemeService>(
        builder: (context, ThemeService, child) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(.0),
              child: Material(
                elevation: 20,
                child: Container(
                 
                  decoration: BoxDecoration(
                    boxShadow: const [BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0,3),
                      blurRadius: (7),
                      spreadRadius: (7)

                    )],
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                          colors: ThemeService.isDarkMode
                              ? const [
                                  Color(0xFF94A9FF),
                                  Color(0xFF6B66CC),
                                  Color(0xFF200F75),
                                ]
                              : const [
                                  Color(0xDDFFFA66),
                                  Color(0xDDFFA057),
                                  Color(0xDD940B99)
                                ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter)),
                  height: size.height * 0.7,
                  width: size.width * 0.9,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 130,
                        right: 30,
                        child: AnimatedOpacity(
                          opacity: ThemeService.isDarkMode? 1:0,
                          duration: Duration(milliseconds: 150),
                          child: Star())
                          ),
                          Positioned(
                        top: 80,
                        right: 43,
                        child: AnimatedOpacity(
                          opacity: ThemeService.isDarkMode? 1:0,
                          duration: Duration(milliseconds: 150),
                          child: Star())
                          ),
                       Positioned(
                        top: 100,
                        right: 200,
                        child: AnimatedOpacity(
                          opacity: ThemeService.isDarkMode? 1:0,
                          duration: Duration(milliseconds: 100),
                          child: Star())
                          ),
                      AnimatedPositioned(
                        top: ThemeService.isDarkMode? 100: 130,
                        right: ThemeService.isDarkMode? 100: 50,
                        duration: Duration(milliseconds: 500),
                        child: AnimatedOpacity(
                          opacity: ThemeService.isDarkMode? 1:0,
                          duration: const Duration(milliseconds: 300),
                          child: Moon()),
                      ),
                      AnimatedPadding(
                         padding:  EdgeInsets.only(top : ThemeService.isDarkMode? 110 : 0),
                         duration: Duration(milliseconds: 200),
                         child: const Center(
                          child: Sun()
                          ),
                       ),

                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          
                          height: size.height * 0.35,
                          width: size.width,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                            color: ThemeService.isDarkMode
                                ? Colors.grey[850]
                                : Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                ThemeService.isDarkMode
                                    ? 'To dark?'
                                    : 'to light',
                                style: TextStyle(
                                    color: ThemeService.isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                ThemeService.isDarkMode
                                    ? 'Let the sun rise'
                                    : 'let the sun set',
                                style: TextStyle(
                                    color: ThemeService.isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 18,
                                    fontStyle: FontStyle.italic),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Switch(
                                  value: ThemeService.isDarkMode,
                                  onChanged: (_) {
                                    ThemeService.toggleMode();
                                  })
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
