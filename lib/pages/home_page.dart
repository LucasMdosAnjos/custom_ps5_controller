import 'package:custom_ps5_controller/pages/painter/ps5_controller_painter.dart';
import 'package:custom_ps5_controller/utils/ps5_controller_colors.dart';
import 'package:custom_ps5_controller/utils/ps5_controller_custom_designs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool edit = false;
  bool showColorOptions = false;
  Color baseColor = Ps5ControllerColors.blueGrey.color;
  List<Ps5ControllerCustomDesigns> selectedCustomDesigns = [];

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              setState(() {
                edit = true;
              });
            }
          });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedAlign(
          alignment: edit ? Alignment.topCenter : Alignment.center,
          curve: Curves.easeIn,
          duration: const Duration(milliseconds: 300),
          onEnd: () {
            setState(() {
              showColorOptions = true;
            });
          },
          child: !showColorOptions
              ? CustomPaint(
                  size: Size(width, (width * 1.25).toDouble()),
                  painter: Ps5ControllerPainter(
                      animation: _controller,
                      baseColor: baseColor,
                      enableType1CustomDesign: selectedCustomDesigns
                          .contains(Ps5ControllerCustomDesigns.type1),
                      enableType2CustomDesign: selectedCustomDesigns
                          .contains(Ps5ControllerCustomDesigns.type2)),
                )
              : Column(
                  children: [
                    CustomPaint(
                      size: Size(width, (width * 1.25).toDouble()),
                      painter: Ps5ControllerPainter(
                          animation: _controller,
                          baseColor: baseColor,
                          enableType1CustomDesign: selectedCustomDesigns
                              .contains(Ps5ControllerCustomDesigns.type1),
                          enableType2CustomDesign: selectedCustomDesigns
                              .contains(Ps5ControllerCustomDesigns.type2)),
                    ),
                    Expanded(
                      child: Transform.translate(
                        offset: Offset(0, -width * 0.3),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: AnimateList(
                                  interval: 200.ms,
                                  effects: const [
                                    FadeEffect(),
                                    MoveEffect(
                                        begin: Offset(-30, 0), end: Offset(0, 0))
                                  ],
                                  children: Ps5ControllerColors.values
                                      .map(itemColor)
                                      .toList(),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Custom Designs',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: AnimateList(
                                  interval: 200.ms,
                                  effects: const [
                                    FadeEffect(),
                                    MoveEffect(
                                        begin: Offset(-30, 0), end: Offset(0, 0))
                                  ],
                                  children: Ps5ControllerCustomDesigns.values
                                      .map(itemCustomDesign)
                                      .toList(),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }

  Widget itemColor(Ps5ControllerColors e) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: InkWell(
        onTap: () {
          setState(() {
            baseColor = e.color;
          });
          _controller.reset();
          _controller.forward();
        },
        child: Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: e.color,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.black)),
          child: baseColor == e.color ? const Icon(Icons.check) : null,
        ),
      ),
    );
  }

  Widget itemCustomDesign(Ps5ControllerCustomDesigns e) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: InkWell(
        onTap: () {
          setState(() {
            if (selectedCustomDesigns.contains(e)) {
              selectedCustomDesigns.remove(e);
            } else {
              selectedCustomDesigns.add(e);
            }
          });
          _controller.reset();
          _controller.forward();
        },
        child: Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: e.color,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Container(
              width: 28,
              height: 28,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: selectedCustomDesigns.contains(e)
                  ? const Icon(Icons.check)
                  : null),
        ),
      ),
    );
  }
}
