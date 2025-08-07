import 'package:flutter/material.dart';

class DefautlDialogContainer extends StatelessWidget {
  final Widget child;
  const DefautlDialogContainer({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      child: child,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
