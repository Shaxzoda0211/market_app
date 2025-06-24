import 'package:flutter/material.dart';
import 'package:market_app/presentation/ui/main/main_screen.dart';
import 'package:market_app/presentation/ui/screens/verfications/widgets/true_screen.dart';

class PleaseWaitScreenScreen extends StatefulWidget {
  final String page;

  const PleaseWaitScreenScreen({super.key, required this.page});

  @override
  State<PleaseWaitScreenScreen> createState() => _PleaseWaitScreenScreenState();
}

class _PleaseWaitScreenScreenState extends State<PleaseWaitScreenScreen> {
  @override
  void initState() {
    getScreen();
    super.initState();

  }

  Future<void> getScreen()async{
    if(widget.page == "Login"){
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MainScreen()),
        );
      });
    }else if(widget.page == ""){
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MainScreen()),
        );
      });
    }else if (widget.page == "Forgot"){
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const TrueScreen()),
        );
      });
    }

  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              strokeWidth: 6,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            ),
            SizedBox(height: 20),
            Text(
              "Please Wait",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
