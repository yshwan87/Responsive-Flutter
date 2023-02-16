import 'package:flutter/material.dart';
import 'package:responsive_flutter/components/side_menu.dart';
import 'package:responsive_flutter/responsive.dart';
import 'package:responsive_flutter/screens/email/email_screen.dart';
import 'components/list_of_emails.dart';
import '../../models/Email.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int idx = 0;

  void updateIdx(value) {
    setState(() {
      idx = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        // Let's work on our mobile part
        mobile: ListOfEmails(
          function: updateIdx,
        ),
        tablet: Row(
          children: [
            Expanded(
              flex: 6,
              child: ListOfEmails(
                function: updateIdx,
              ),
            ),
            Expanded(
              flex: 9,
              child: EmailScreen(
                email: emails[0],
              ),
            ),
          ],
        ),
        desktop: Row(
          children: [
            // Once our width is less then 1300 then it start showing errors
            // Now there is no error if our width is less then 1340
            Expanded(
              flex: size.width > 1340 ? 2 : 4,
              child: const SideMenu(),
            ),
            Expanded(
              flex: size.width > 1340 ? 3 : 5,
              child: ListOfEmails(
                function: updateIdx,
              ),
            ),
            Expanded(
              flex: size.width > 1340 ? 8 : 10,
              child: EmailScreen(
                email: emails[idx],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
