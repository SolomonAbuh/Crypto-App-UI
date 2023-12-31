import 'package:crypto_app_ui/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AssetGraph extends StatefulWidget {
  const AssetGraph({super.key});

  @override
  State<AssetGraph> createState() => _AssetGraphState();
}

class _AssetGraphState extends State<AssetGraph> {
  late TrackballBehavior _trackballBehavior;

  @override
  void initState() {
    _trackballBehavior = TrackballBehavior(
        enable: true, activationMode: ActivationMode.singleTap);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      child: SfCartesianChart(
        plotAreaBorderWidth: 0,
        primaryXAxis: DateTimeAxis(
          dateFormat: DateFormat.MMM(),
          interval: 4,
          intervalType: DateTimeIntervalType.months,
          minimum: DateTime(2016),
          maximum: DateTime(2016, 10),
          majorGridLines: const MajorGridLines(width: 0),
        ),
        primaryYAxis: NumericAxis(
          minimum: 60,
          maximum: 140,
          interval: 20,
          labelFormat: r'${value}',
          axisLine: const AxisLine(width: 0),
        ),
        series: candleSeriesData(),
        trackballBehavior: _trackballBehavior,
      ),
    )
        .animate(delay: 300.ms)
        .fadeIn()
        .slideY(begin: 0.3, duration: 200.ms)
        .scale(
          begin: const Offset(0.8, 1),
        );
  }
}
