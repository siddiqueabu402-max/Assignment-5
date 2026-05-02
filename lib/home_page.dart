import 'package:assignment_5/converter_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(129, 68, 142, 101),
      appBar: AppBar(
        title: Text(
          "Flutter.co",
          style: GoogleFonts.oswald(color: Colors.black),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ConverterPage()),
              );
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.login, color: Colors.black),
                SizedBox(width: 2),
                Text("Sign In", style: TextStyle(color: Colors.black)),
                SizedBox(width: 5),
              ],
            ),
          ),

          /// 👇 এইটা add করো
          Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.menu, color: Colors.black),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ), //AppBar
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Text(
                  "Wellcome to Our",
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(199, 41, 13, 203),
                    fontSize: 50,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), //Padding
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Center(
                child: Text(
                  "Flutter.co",
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 12, 4, 83),
                    fontWeight: FontWeight.w600,
                    fontSize: 70,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 200,
              width: 200,

              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                color: const Color.fromARGB(255, 212, 14, 126),
                child: Center(
                  child: Image.asset(
                    "assets/images/flutter.jpg",
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 200,
              width: 200,

              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                color: const Color.fromARGB(255, 212, 14, 126),
                child: Center(
                  child: Image.network(
                    'https://images.unsplash.com/photo-1775395942058-30ccce5a78d2?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8fA%3D%3D',
                    height: 120,
                    width:150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 200,
              width: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: const Color.fromARGB(255, 187, 212, 23),

                child: Center(
                  child: Text(
                    "You can Choice me !",
                    style: GoogleFonts.lobster(
                      color: const Color.fromARGB(255, 200, 144, 116),
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),

            //Padding
            Container(
              width: 200,
              height: 200,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 163, 95, 95),
                border: Border.all(color: Colors.white, width: 3),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Flutter.co",
                      style: GoogleFonts.lobster(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),

                  Text(
                    "Product Here! ",
                    style: GoogleFonts.lobster(
                      color: const Color.fromARGB(255, 195, 6, 6),
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ), //Container

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        onPressed: () {},
        child: Icon(Icons.add),
      ), //FloatingActionButton
      endDrawer: NavigationDrawer(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        //NavigationDrawer
        children: [
          ListTile(
            //ListTile
            leading: Icon(Icons.home,color: Colors.black,),
            title: Text(
              "HomePage",
              style: GoogleFonts.poppins(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 16),
            ),
            onTap: () {},
          ), //ListTile
          ListTile(
            //ListTile
            leading: Icon(Icons.settings,color: Colors.black,),
            title: Text(
              "Settings",
              style: GoogleFonts.poppins(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 16),
            ),
            onTap: () {},
          ), //ListTile
          ListTile(
            //ListTile
            leading: Icon(Icons.person,color: Colors.black,),
            title: Text(
              "ProfilePage",
              style: GoogleFonts.poppins(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 16),
            ),
            onTap: () {},
          ),
          ListTile(
            //ListTile
            leading: Icon(Icons.call,color: Colors.black,),
            title: Text(
              "Contact",
              style: GoogleFonts.poppins(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 16),
            ),
            onTap: () {},
          ), //ListTile
        ],
      ), //NavigationDrawer
    ); //Scaffold
  }
}
