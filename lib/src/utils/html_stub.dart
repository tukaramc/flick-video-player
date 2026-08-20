// Stub implementations for non-web platforms. These provide the minimal
// symbols the library expects so the analyzer and non-web builds don't fail.
// At runtime on non-web platforms these are never used because calls are
// guarded by kIsWeb checks.

library flick_video_player.html_stub;

import 'dart:async';

class Event {}

class KeyboardEvent {}

class DocumentElement {
  Stream<Event> get onFullscreenChange => const Stream<Event>.empty();
  Stream<KeyboardEvent> get onKeyDown => const Stream<KeyboardEvent>.empty();
  void requestFullscreen() {}
}

class Document {
  dynamic get fullscreenElement => null;
  DocumentElement? get documentElement => null;
  void exitFullscreen() {}
}

final Document document = Document();
final dynamic window = null;
