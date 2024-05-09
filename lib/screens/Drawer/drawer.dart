import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/screens/Drawer/drawer.dart';
import 'package:flutter/services.dart';
class drawerPage extends StatefulWidget {
  const drawerPage({super.key});

  @override
  State<drawerPage> createState() => _drawerPageState();
}

class _drawerPageState extends State<drawerPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: Drawer(

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              DrawerHeader(child: Padding(
                padding:  EdgeInsets.only(right:190),
                child: Text('Gmail',style: TextStyle(fontSize: 28,color: Colors.red),),
              )),
              ListTile(leading: Icon(Icons.all_inbox),title: Text('All Inboxes'),
              ), ListTile(leading: Icon(Icons.inbox), title: Text('Inbox'),
              ),ListTile(leading: Icon(Icons.star_border), title: Text('Starred'),
              ), ListTile(leading: Icon(Icons.label_important_outline_rounded), title: Text('Important'),
              ), ListTile(leading: Icon(Icons.send), title: Text('Sent'),
              ),ListTile(leading: Icon(Icons.drafts_outlined), title: Text('Drafts'),
              ), ListTile(leading: Icon(Icons.mail_outline_rounded), title: Text('All Mail'),
              ), ListTile(leading: Icon(Icons.error_outline_outlined), title: Text('Spam'),
              ), ListTile(leading: Icon(Icons.delete), title: Text('Trash'),
              ), ListTile(leading: Icon(Icons.add), title: Text('Create new'),
              ), ListTile(leading: Icon(Icons.settings), title: Text('Setting'),
              ),
            ],
          ),
        ),
      ),
    );

  }
}