import 'package:flutter/material.dart';

// to navigat to page
void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => widget,
      ),
    );
void navigatePop(
  context,
) =>
    Navigator.pop(
      context,
    );

void navigateAndRemoveUntil(context, widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (_) => widget,
      ),
      (route) => false,
    );

void navigateToPushNamed(context, widget) =>
    Navigator.pushNamed(context, widget);

void navigateTopushReplacement(context, widget) =>
    Navigator.pushReplacement(context, widget);

void navigateTopushReplacementNamed(context, widget) =>
    Navigator.pushReplacementNamed(context, widget);
