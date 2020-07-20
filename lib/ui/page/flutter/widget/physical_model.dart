import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_two/ui/page/flutter/widget/base_page.dart';

class PhysicalModelDemo extends BasePage {
  @override
  _PhysicalModelDemoState createState() => _PhysicalModelDemoState();
}

class _PhysicalModelDemoState extends BaseState<PhysicalModelDemo>
    with BasicPage {
  @override
  String screenName() => "PhysicalModelDemo";

  @override
  Widget body() {
    return PhysicalModel(
      elevation: 6.0,
      shape: BoxShape.rectangle,
      shadowColor: Colors.black,
      color: Colors.white,
      child: Container(
        height: 120.0,
        width: 120.0,
        color: Colors.blue[50],
        child: FlutterLogo(
          size: 60,
        ),
      ),
    );
  }

  @override
  Future<void> neverSatisfied() {
    return showDialog<void>();
  }
}
