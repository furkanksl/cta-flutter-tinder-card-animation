import 'package:flutter/material.dart';

typedef TriggerListener = void Function(Direction dir);
typedef AppendItem = void Function(Widget item);
typedef EnableSwipe = void Function(bool dir);
typedef DeleteItem = void Function(int index);

class SwipeableCardSectionController {
  late TriggerListener listener;
  late AppendItem addItem;
  late EnableSwipe enableSwipeListener;
  late DeleteItem deleteItem;

  void triggerSwipeLeft() {
    return listener.call(Direction.left);
  }

  void triggerSwipeRight() {
    return listener.call(Direction.right);
  }

  void triggerSwipeUp() {
    return listener.call(Direction.up);
  }

  void triggerSwipeDown() {
    return listener.call(Direction.down);
  }

  void appendItem(Widget item) {
    return addItem.call(item);
  }

  void enableSwipe(bool isSwipeEnabled) {
    return enableSwipeListener.call(isSwipeEnabled);
  }

  void removeItem(int index) {
    return deleteItem.call(index);
  }
}

enum Direction {
  left,
  right,
  up,
  down,
}
