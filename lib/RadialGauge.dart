import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'wheelselector.dart';

class RadialGauge extends StatelessWidget {
  const RadialGauge(
      {required this.yellow,
      required this.green,
      required this.orange,
      required this.red,
      required this.axixline,
      required this.needle1,
      required this.needle2,
      required this.baseTextColor,
      required this.baseTextSize,
      required this.animate});
  final Color yellow;
  final Color green;
  final Color orange;
  final Color red;
  final Color needle1;
  final Color needle2;
  final Color axixline;
  final Color baseTextColor;
  final double baseTextSize;
  final bool animate;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
            startAngle: 160,
            endAngle: 20,
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                widget: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text('Normal',
                        style: TextStyle(
                            fontSize: baseTextSize,
                            fontWeight: FontWeight.bold,
                            color: baseTextColor))),
                angle: 90,
                positionFactor: 0.5,
              )
            ],
            radiusFactor: 0.8,
            showLabels: false,
            showTicks: false,
            minimum: 0,
            maximum: 8,
            pointers: <GaugePointer>[
              NeedlePointer(
                value: bmivalue,
                enableAnimation: animate,
                animationDuration: 4000,
                needleStartWidth: 1,
                needleEndWidth: 4,
                gradient: LinearGradient(colors: <Color>[needle2, needle2]),
                knobStyle: KnobStyle(knobRadius: 0.08, color: needle1),
              ),
            ],
            ranges: <GaugeRange>[
              GaugeRange(
                startValue: 0,
                endValue: 2,
                color: yellow,
              ),
              GaugeRange(
                startValue: 2,
                endValue: 4,
                color: green,
              ),
              GaugeRange(
                startValue: 4,
                endValue: 6,
                color: orange,
              ),
              GaugeRange(
                startValue: 6,
                endValue: 8,
                color: red,
              ),
            ])
      ],
      enableLoadingAnimation: true,
      animationDuration: 3500,
    ));
  }
}
