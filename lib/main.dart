import 'package:flutter/material.dart';
import 'package:payment_app/app_colors/app_colors.dart';

void main() {
  runApp(const RootApp());
}

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: _pages().elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          selectedItemColor: AppColors.accentColor,
          currentIndex: _selectedIndex,
          backgroundColor: AppColors.secondaryColor,
          onTap: (int value){
            setState((){
              _selectedIndex = value;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings")
          ],

        ),
      ),
    );
  }

  List<Widget> _pages(){
    return [const HomePage(), const SettingsPage()];
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 400,
                  child: CustomPaint(
                    painter: HeaderPainter(
                        backgroundColor: AppColors.primaryColor),
                  ),
                ),
                Positioned(
                  top: 325,
                  left: 20,
                  right: 20,
                  child: Container(
                    height: 70,
                    decoration: HighlightContainer(),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              color: Colors.blue.withOpacity(0.5),
            ),
            Container(
              height: 450,
              color: Colors.green.withOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.secondaryColor,
    );
  }
}

class HeaderPainter extends CustomPainter{
  HeaderPainter({required this.backgroundColor});
  final Color backgroundColor;

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - 40);
    path.quadraticBezierTo(
        size.width, size.height - 20,
        size.width - 20, size.height - 20);
    path.lineTo(20, size.height - 20);
    path.quadraticBezierTo(
        0, size.height - 20, 0, size.height);
    path.lineTo(0, size.height);
    path.close();

    Paint paint = Paint()..color = backgroundColor
    ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}

class HighlightContainer extends Decoration{
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _HighlightContainerPainter();

}

class _HighlightContainerPainter extends BoxPainter{
  @override
  void paint(Canvas canvas, Offset offset,
      ImageConfiguration configuration) {

    Paint paint = Paint()..color = AppColors.accentColor;
    
    canvas.drawRRect(RRect.fromRectAndRadius(
        offset & configuration.size!, const Radius.circular(10.0)), paint);
  }

}



