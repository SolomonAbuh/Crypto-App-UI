import 'package:flutter/material.dart';

extension SizedBoxExt on num {
  Widget  get sH  => SizedBox(
        height: toDouble(),
      );
  Widget get  sW => SizedBox(
        width: toDouble(),
      );
}
