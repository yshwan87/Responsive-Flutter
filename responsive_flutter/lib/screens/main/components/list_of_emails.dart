// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:responsive_flutter/components/side_menu.dart';
import 'package:responsive_flutter/models/Email.dart';
//import 'package:responsive_flutter/models/Email.dart';
import 'package:responsive_flutter/responsive.dart';
//import 'package:responsive_flutter/screens/email/email_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../constants.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'email_card.dart';

// ignore: must_be_immutable
class ListOfEmails extends StatefulWidget {
  Function function;

  ListOfEmails({Key? key, required this.function}) : super(key: key);

  @override
  _ListOfEmailsState createState() => _ListOfEmailsState();
}

class _ListOfEmailsState extends State<ListOfEmails> {
  // ignore: prefer_function_declarations_over_variables

  bool isClicked = false;
  int clickedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 250),
        child: const SideMenu(),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
        color: kBgDarkColor,
        child: SafeArea(
            right: false,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Row(
                    children: [
                      // Once user click the menu icon the menu shows like drawer
                      // Also we want to hide this menu icon on desktop
                      if (!Responsive.isDesktop(context))
                        IconButton(
                          icon: const Icon(Icons.menu),
                          onPressed: () {
                            _scaffoldKey.currentState!.openDrawer();
                          },
                        ),
                      if (!Responsive.isDesktop(context)) const SizedBox(width: 5),
                      Expanded(
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            hintText: "Search",
                            fillColor: kBgLightColor,
                            filled: true,
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(kDefaultPadding * 0.75), //15
                              child: WebsafeSvg.asset(
                                "assets/Icons/Search.svg",
                                width: 24,
                              ),
                            ),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: kDefaultPadding),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Row(
                    children: [
                      WebsafeSvg.asset(
                        "assets/Icons/Angle down.svg",
                        width: 16,
                        color: Colors.black,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "Sort by date",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      MaterialButton(
                        minWidth: 20,
                        onPressed: () {},
                        child: WebsafeSvg.asset(
                          "assets/Icons/Sort.svg",
                          width: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: kDefaultPadding),
                Expanded(
                  child: ListView.builder(
                    itemCount: emails.length,
                    // On mobile this active dosen't mean anything
                    itemBuilder: (context, index) => EmailCard(
                      clickedIndex: clickedIndex,
                      currentIndex: index,
                      email: emails[index],
                      press: () {
                        setState(() {
                          clickedIndex = index;
                        });
                        widget.function(clickedIndex);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => EmailScreen(email: emails[index]),
                        //   ),
                        // );
                      },
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
