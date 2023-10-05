import 'package:flutter/material.dart';

extension ListAddBetween on List<Widget> {
  List<Widget> addBetween(Widget between) {
    List<Widget> result = [];

    return <Widget>[
      for (int i = 0; i < length; i++)...[
        this[i],
        if (i != length - 1) between,
      ],
    ];
  }
}
