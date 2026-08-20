// Conditional import: use real `dart:html` on web, otherwise use the local stub.

import 'package:flick_video_player/src/utils/html_stub.dart'
    if (dart.library.html) 'dart:html'
    as html;

// Re-export the selected implementation so other modules can `import ... as html`.
export 'package:flick_video_player/src/utils/html_stub.dart'
    if (dart.library.html) 'dart:html';
