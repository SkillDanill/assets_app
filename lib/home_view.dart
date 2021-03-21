// Flutter imports:
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key, this.counter}) : super(key: key);
  final int counter;
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    print(mounted);
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => {
        print("add Persistent Frame Call back"),
      },
    );
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
      print("приложение на паузе");
    }
    if (state == AppLifecycleState.resumed) {
      print('приложение работает');
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('did Change Dependencies');
    print(Theme.of(context).brightness);
  }

  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('did Update Widget');
    print(oldWidget.counter);
  }

  @override
  void deactivate() {
    super.deactivate();
    print('diactivate');
  }

  @override
  void dispose() {
    super.dispose();
    print('dsipise');
  }

  @override
  Widget build(BuildContext context) {
    return Text('data ${widget.counter}');
  }
}
