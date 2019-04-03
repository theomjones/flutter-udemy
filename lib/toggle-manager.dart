import 'package:flutter/cupertino.dart';

class ToggleManager extends StatefulWidget {
  final Widget leftWidget;
  final Widget rightWidget;

  ToggleManager({this.leftWidget, this.rightWidget});

  @override
  State<StatefulWidget> createState() {
    return _ToggleManagerState();
  }
}

class _ToggleManagerState extends State<ToggleManager> {
  bool on = false;
  Widget _left;
  Widget _right;
  
  @override
  void initState() {
    super.initState();
    _left = widget.leftWidget;
    _right = widget.rightWidget;
  }
  
  void _toggle(bool val) {
    setState(() {
      this.on = val;
    });
  }

  @override
  Widget build(BuildContext ctx) {

    Widget toRender = this.on ? _left : _right;

    return Column(
      children: <Widget>[
        CupertinoSwitch(onChanged: _toggle, value: on),
        Expanded(
          child: toRender,
        )
      ],
    );
  }
}
