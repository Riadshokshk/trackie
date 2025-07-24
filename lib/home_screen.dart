import 'package:flutter/material.dart';
import 'package:trackie_app/body_model_screen.dart';


class HabitHomePage extends StatefulWidget {
  const HabitHomePage({super.key});

  @override
  _HabitHomePageState createState() => _HabitHomePageState();
}

class _HabitHomePageState extends State<HabitHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trackie 🐇'),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () {
              // (We’ll add dark mode toggle later)
            },
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Text(
                'Trackie 🐇',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
             onTap: () {
              Navigator.pop(context); // close drawer first
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BodyModelScreen()),
              );
             },

            ),
          ],
        ),
      ),

        body: Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 5, right: 5, bottom: 13),
        child: Column(
           children: [
            Container(
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
           width: 500,
           height: 80,
           child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  children: [
                    SizedBox(height: 5 , width: 4),
                    Text('Hight :', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 5, width: 4),
                    Text('184cm :', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 5, width: 4),
                  ],
                ),
              ),
        )
          ],
      
              ),
       
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // (We’ll add habit adding screen here later)
        },
        child: Icon(Icons.add),
      ),
    );
  }
}