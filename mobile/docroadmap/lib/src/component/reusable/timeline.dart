import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CustomTimelineTile extends StatelessWidget {
  final String startText;
  final String endText;
  final bool isFirst;
  final bool isLast;
  final VoidCallback? onStartTap;

  const CustomTimelineTile({
    super.key,
    required this.startText,
    required this.endText,
    this.isFirst = false,
    this.isLast = false,
    this.onStartTap,
  });

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.5,
      isFirst: isFirst,
      isLast: isLast,
      indicatorStyle: IndicatorStyle(
        width: 40,
        color: Colors.black,
        padding: const EdgeInsets.all(8),
        iconStyle: IconStyle(
          iconData: Icons.check,
          color: Colors.white,
        ),
      ),
      beforeLineStyle: const LineStyle(
        color: Colors.black,
        thickness: 6,
      ),
      afterLineStyle: isLast ? null : const LineStyle(
        color: Colors.black,
        thickness: 6,
      ),
      startChild: InkWell(
        onTap: onStartTap,
        child: Container(
          constraints: const BoxConstraints(
            minHeight: 120,
          ),
          child: Center(
            child: Text(startText),
          ),
        ),
      ),
      endChild: InkWell(
        onTap: onStartTap != null ? () => onStartTap!() : null,
        child: Container(
          constraints: const BoxConstraints(
            minHeight: 120,
          ),
          child: Center(
            child: Text(endText),
          ),
        ),
      ),
    );
  }
}
