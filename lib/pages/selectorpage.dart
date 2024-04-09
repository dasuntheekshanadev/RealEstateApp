import 'package:flutter/material.dart';

import 'login_page.dart';
import 'normal_marketplace.dart';

class SelectionPageWidget extends StatefulWidget {
  const SelectionPageWidget({Key? key}) : super(key: key);

  @override
  _SelectionPageWidgetState createState() => _SelectionPageWidgetState();
}

class _SelectionPageWidgetState extends State<SelectionPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: const Image(
                  image: AssetImage('assets/images/selectorscreen.jpeg'),
                  width: 406,
                  height: 853,
                  fit: BoxFit.cover,
                ),
              ),
              const Align(
                alignment: AlignmentDirectional(0, 0),
                child: Stack(
                  children: [],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.04, 0.29),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF252323),
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Investor Page',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.01, 0.05),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Marketplace()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF252323),
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Marketplace',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Stack(
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
