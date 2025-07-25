import 'dart:ui';

import 'package:flutter/material.dart';

class TaskModels {
  final String title;
  final String startTime;
  final String EndTime;
  final String desc;
  static String? stutes;
  final Color TaskColor;

  TaskModels({
    required this.title,
    required this.startTime,
    required this.EndTime,
    required this.desc,
    required this.TaskColor,
  });

  static String formatTaime(context, TimeOfDay time) {
    final localization = MaterialLocalizations.of(context);
    final formattedTimeOfDay = localization.formatTimeOfDay(time);
    return formattedTimeOfDay.toString();
  }

  static List<TaskModels> tasks = [];
}
