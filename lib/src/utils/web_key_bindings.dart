import 'package:flick_video_player/src/manager/flick_manager.dart';

void flickDefaultWebKeyDownHandler(dynamic event, FlickManager flickManager) {
  // Cast event to dynamic to access keyCode property
  final keyboardEvent = event as dynamic;
  if (keyboardEvent.keyCode == 70) {
    flickManager.flickControlManager?.toggleFullscreen();
    flickManager.flickDisplayManager?.handleShowPlayerControls();
  } else if (keyboardEvent.keyCode == 77) {
    flickManager.flickControlManager?.toggleMute();
    flickManager.flickDisplayManager?.handleShowPlayerControls();
  } else if (keyboardEvent.keyCode == 39) {
    flickManager.flickControlManager?.seekForward(Duration(seconds: 10));
    flickManager.flickDisplayManager?.handleShowPlayerControls();
  } else if (keyboardEvent.keyCode == 37) {
    flickManager.flickControlManager?.seekBackward(Duration(seconds: 10));
    flickManager.flickDisplayManager?.handleShowPlayerControls();
  } else if (keyboardEvent.keyCode == 32) {
    flickManager.flickControlManager?.togglePlay();
    flickManager.flickDisplayManager?.handleShowPlayerControls();
  } else if (keyboardEvent.keyCode == 38) {
    flickManager.flickControlManager?.increaseVolume(0.05);
    flickManager.flickDisplayManager?.handleShowPlayerControls();
  } else if (keyboardEvent.keyCode == 40) {
    flickManager.flickControlManager?.decreaseVolume(0.05);
    flickManager.flickDisplayManager?.handleShowPlayerControls();
  }
}
