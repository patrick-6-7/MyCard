import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mi_card_flutter/my_info_tile.dart';

void main(){
  runApp(
    const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Color.fromARGB(255, 0, 103, 93), 
            statusBarIconBrightness: Brightness.light,
          ),
          backgroundColor: Colors.teal,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                color: Colors.white,
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.teal,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  // Update the state of the app
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  // Update the state of the app
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              // Add more list tiles here
            ],
          ),
        ),
        backgroundColor: Colors.teal,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //profile picture
              PhysicalModel(
                shape: BoxShape.circle,
                color: Colors.transparent,
                elevation: 18.0,
                shadowColor: Colors.black,
                child: Container(
                  
                  width: 110, // radius * 2 + border width
                  height: 110, // radius * 2 + border width
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white, // border color
                      width: 5.0, // border width
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/My_image.jpg'),
                  ),
                ),
              ),
              
              //user name
              const Text(
                'Prateek',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              
        
              Padding(
                padding: const EdgeInsets.only(left: 130, right: 130, bottom: 180),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.white
                  ),
                  height: 2,
                ),
              ),

              
              //designation
              Text(
                'F L U T T E R     D E V E L O P E R',
                style: TextStyle(
                  color: Colors.teal.shade100,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
        
              const SizedBox(
                height: 8,
              ),
        
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 126),
                child: Container(
                  
                  height: 1,
                  color: const Color.fromARGB(152, 255, 255, 255),
                ),
              ),
        
              const SizedBox(
                height: 14,
              ),
        
              //contact number 
              InfoTile(
                info: '+91 95992 48749',
                display: '+91 95992 48749',
                icon: Icon(
                  Icons.phone,
                  color: Colors.teal.shade500,
                  size: 30,
                ),
              ),
        
              const SizedBox(
                height: 14,
              ),
        
              //Email id
              InfoTile(
                info: 'prateek@gmail.com',
                display: 'prateekprajapati062004@gmail.com',
                icon: Icon(
                  Icons.mail,
                  color: Colors.teal.shade500,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}