import 'package:flutter/material.dart';

import '../../../resource/app_colors.dart';

class TrueScreen extends StatefulWidget {
  const TrueScreen({super.key});

  @override
  State<TrueScreen> createState() => _TrueScreenScreenState();
}

class _TrueScreenScreenState extends State<TrueScreen> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: isLoading
            ? const Column(
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
        )
            : const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              color: AppColors.primary,
              size: 100,
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Text(
                  "Password Changed",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Password change successfully",
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.grey,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
