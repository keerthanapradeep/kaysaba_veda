import 'package:flutter/material.dart';

class StudyContainer extends StatelessWidget {
  const StudyContainer({
    super.key,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.iconColor,
  });
  final Color color;
  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 170,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [color.withOpacity(0.8), color.withOpacity(0.6)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: iconColor),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(subtitle, style: TextStyle(color: Colors.white70, fontSize: 13)),
        ],
      ),
    );
  }
}
