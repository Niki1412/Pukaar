import 'package:flutter/material.dart';

import './models/homepage.dart';

List<HomePage> HOME_PAGE_DUMMY = [
  HomePage(
    title: 'Sleep',
    color: const Color.fromRGBO(63, 55, 201, 1),
    icon: const Icon(
      Icons.bedtime,
      color: Colors.white,
    ),
    call: '72 hours',
  ),
  HomePage(
    title: 'Music',
    color: const Color.fromRGBO(63, 55, 201, 1),
    icon: const Icon(
      Icons.music_note,
      color: Colors.white,
    ),
    call: 'Playing : Weightless',
  ),
];
