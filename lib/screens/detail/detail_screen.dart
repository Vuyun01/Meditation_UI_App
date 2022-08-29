import 'package:flutter/material.dart';
import 'package:meditation_app/widgets/custombottombar.dart';

import 'components/body.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Body()),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}