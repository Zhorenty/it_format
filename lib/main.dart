import 'dart:async';
import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:it_format/presentation/screens/home/view.dart';

void main() => runZonedGuarded<void>(
      () => runApp(const HomeView()),
      (error, stackTrace) => dev.log(
        'A error has occurred',
        stackTrace: stackTrace,
        error: error,
        name: 'main',
        level: 1000,
      ),
    );
