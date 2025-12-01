
import 'package:flutter/material.dart';

class HighliteTile extends StatelessWidget {
  final Color bgColor;
  final Color iconColor;
  final String title;
  final String subtitle;
  final IconData icon;
  final Color containerColor;

  const HighliteTile({
    super.key,
    required this.bgColor,
    required this.iconColor,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: bgColor.withOpacity(0.2),
            radius: 25,
            child: Icon(icon, color: iconColor),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(subtitle, style: TextStyle(color: Colors.black54)),
            ],
          ),
        ],
      ),
    );
  }
}
