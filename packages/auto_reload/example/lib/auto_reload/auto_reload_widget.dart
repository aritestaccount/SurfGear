// Copyright (c) 2019-present,  SurfStudio LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:auto_reload/auto_reload.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Demo widget for [AutoReloadMixin]
class DemoAutoReloadWidget extends StatefulWidget {
  const DemoAutoReloadWidget({Key key}) : super(key: key);
  @override
  _DemoAutoReloadWidgetState createState() => _DemoAutoReloadWidgetState();
}

abstract class _AutoReloadState extends State<DemoAutoReloadWidget>
    implements AutoReloader {}

class _DemoAutoReloadWidgetState extends _AutoReloadState with AutoReloadMixin {
  @override
  // ignore: overridden_fields
  final Duration autoReloadDuration = const Duration(seconds: 3);

  int _countOfReload = 0;

  @override
  void initState() {
    super.initState();
    startAutoReload();
  }

  @override
  void dispose() {
    cancelAutoReload();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        Text(
          'auto reload example:',
          style: TextStyle(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text('count of reload $_countOfReload'),
        const Spacer(),
      ],
    );
  }

  @override
  void autoReload() {
    setState(() {
      _countOfReload = _countOfReload + 1;
    });
  }
}
