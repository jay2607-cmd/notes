import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';


class Radial extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RadialState();
}

class _RadialState extends State<Radial> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Radial view"),
        ),
        body: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.settings,
                    ),
                  )
                ],
              ),
              Expanded(
                child: SfRadialGauge(
                  title: GaugeTitle(text: "dB Meter"),
                  enableLoadingAnimation: true,
                  axes: [
                    RadialAxis(
                      minimum: 0,
                      maximum: 160,
                      pointers: [
                        NeedlePointer(
                          value: kFloatingActionButtonMargin,
                          enableAnimation: true,
                        )
                      ],
                      ranges: [
                        GaugeRange(
                            startValue: 0, endValue: 50, color: Colors.green),
                        GaugeRange(
                            startValue: 50,
                            endValue: 100,
                            color: Colors.orange),
                        GaugeRange(
                            startValue: 100, endValue: 160, color: Colors.red),
                      ],
                      annotations: [
                        GaugeAnnotation(
                          widget: Text(
                            '$kFloatingActionButtonMargin MPH' ,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          positionFactor: 0.5,
                          angle: 90,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              // Expanded(child: )
            ],
          ),
        ),
      ),
    );
  }
}
