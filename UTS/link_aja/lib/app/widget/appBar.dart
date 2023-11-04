import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {

  @override
  _NavbarState createState() => _NavbarState ();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex= 0;
  
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Cek rute saat ini
    final currentRoute = ModalRoute.of(context)!.settings.name;

    // Atur indeks berdasarkan rute saat ini
    if (currentRoute == '/history') {
      _currentIndex = 1; 
    } else {
      _currentIndex = 0; 
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 10,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 14,
            currentIndex: _currentIndex,
            selectedItemColor: Colors.red,
            unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
            onTap: (index){
              if (index == 0) {
                Navigator.of(context).pushNamed('/home');
              } else if (index == 1){
                Navigator.of(context).pushNamed('/history');
              } else if (index == 3){
                Navigator.of(context).pushNamed('/inbox');
              } 
            }, 
            items: [
              itemBar(Icons.home, "Home"),
              itemBar(Icons.history, "History"),
              BottomNavigationBarItem(
                icon: Material( // Wrap the Container with Material
                  elevation: 8, // Adjust the elevation value as needed
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                child:ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    width: 50, // Set the desired width
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.red, 
                    ),
                    child: Center(
                      child: Icon(
                        Icons.qr_code_2_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  ),
                ),
                label: "Pay",
              ),
              itemBar(Icons.inbox, "Inbox"),
              itemBar(Icons.account_circle, "Account"),
            ],
          ),
        ],
      ),
    );
  }
    BottomNavigationBarItem itemBar(IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}