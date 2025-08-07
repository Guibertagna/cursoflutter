import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTile extends StatelessWidget {
  final Widget title;
  final Color color;
  final Widget leading;
  final Widget subtitle;
  final Widget trailing;
  final void Function() pertaaIsso;
  const CustomTile({
    super.key,
    required this.title,
    required this.color,
    required this.leading,
    required this.subtitle,
    required this.trailing,
    required this.pertaaIsso,
  });

  @override
  Widget build(BuildContext context) {
    final gap = SizedBox(height: 8, width: 16);
    return InkWell(
      onTap: () {
        pertaaIsso();
      },
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end, // <- adiciona isso aqui
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                leading,
                gap,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [title, gap, subtitle],
                ),
              ],
            ),

            Column(children: [trailing]),
          ],
        ),
      ),
    );
  }
}
