import 'package:flutter/material.dart';
import 'package:kaysaba_veda/view/screens/calender_screen.dart';
import 'package:kaysaba_veda/view/screens/hiranya_sreen.dart';
import 'package:kaysaba_veda/view/screens/temple_scree.dart';
import 'package:kaysaba_veda/view/widget/highlite_tile.dart';
import 'package:kaysaba_veda/view/widget/study_container.dart';

class NamasteScreen extends StatefulWidget {
  const NamasteScreen({super.key});

  @override
  State<NamasteScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<NamasteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Namaste", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NavigateContainer(
                      text: "Home",
                      emoji: "🏠",
                      selected: true,
                    ),
                    NavigateContainer(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TempleScree(),
                          ),
                        );
                      },
                      text: "Temples",
                      emoji: "🛕",
                      selected: false,
                    ),
                    NavigateContainer(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HiranyaSreen(),
                          ),
                        );
                      },
                      text: "Hiranya",
                      emoji: "📖",
                      selected: false,
                    ),
                    NavigateContainer(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CalenderScreen(),
                          ),
                        );
                      },
                      text: "calender",
                      emoji: "📅",
                      selected: false,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                StudyContainer(
                  icon: Icons.menu_book,
                  color: Colors.deepOrange,
                  title: "Daily Vedic Study",
                  subtitle: "Today's lesson",
                  iconColor: Colors.amberAccent,
                ),
                SizedBox(width: 10),
                StudyContainer(
                  icon: Icons.notifications,
                  color: Colors.purple,
                  title: "Prayer Times",
                  subtitle: "Next:6:00 AM",
                  iconColor: Colors.amberAccent,
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.orange, Colors.deepOrange],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  "Donate Us",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "✨ Today's Highlights",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  HighliteTile(
                    containerColor: Colors.orange.shade100,
                    icon: Icons.auto_awesome,
                    bgColor: Colors.orange,
                    iconColor: Colors.deepPurple,
                    title: "Morning Vedic Chanting",
                    subtitle: "Vedakshetram Temple - 6:30 AM",
                  ),
                  SizedBox(height: 10),
                  HighliteTile(
                    containerColor: Colors.purple.shade100,
                    icon: Icons.auto_stories,
                    bgColor: Colors.purple,
                    iconColor: Colors.white,
                    title: "New Hiranya Issue",
                    subtitle: "Digital Magazine Availabe",
                  ),
                  SizedBox(height: 10),
                  HighliteTile(
                    containerColor: Colors.green.shade50,
                    icon: Icons.notifications,
                    bgColor: Colors.green.shade400,
                    iconColor: Colors.yellow,
                    title: "Vedamrutham",
                    subtitle: "Upcoming event",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigateContainer extends StatelessWidget {
  const NavigateContainer({
    super.key,
    required this.text,
    required this.emoji,
    required this.selected,
    this.onTap,
  });
  final String emoji;
  final String text;
  final bool selected;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Text(emoji, style: const TextStyle(fontSize: 26)),
          const SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: selected ? FontWeight.bold : FontWeight.normal,
              color: selected ? Colors.orange : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
