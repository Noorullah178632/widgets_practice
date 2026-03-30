import 'package:flutter/material.dart';
import 'package:widgets_revision/medium_widgets/chat_screen.dart';
import 'package:widgets_revision/medium_widgets/setting_screen.dart';
import 'package:widgets_revision/medium_widgets/status_screen.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("whatsapp"),
          backgroundColor: Colors.green.withOpacity(0.2),
          bottom: const TabBar(
            tabs: [Text('Chat'), Text('Status'), Text('Setting')],
          ),

          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text("Setting ")),
                  PopupMenuItem(child: Text("Log OUt")),
                ];
              },
            ),
          ],
        ),
        body: TabBarView(
          children: [ChatScreen(), StatusScreen(), SettingScreen()],
        ),
      ),
    );
  }
}
