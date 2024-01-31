import "package:flutter/material.dart";
import "package:youtube_player_iframe/youtube_player_iframe.dart";
import "package:image_picker/image_picker.dart";
void ytVideoPicker({
  required BuildContext context,
  required YoutubePlayerController ytController,
}) {
  YoutubePlayerScaffold(
    controller: ytController,
    aspectRatio: 16 / 9,
    builder: (context, player) {
      return Column(
        children: [
          player,
          const Text('Youtube Player'),
        ],
      );
    },
  );
}
//image picker
pickedImage(ImageSource source) async {
  final ImagePicker imagePicker = ImagePicker();
  XFile? file = await imagePicker.pickImage(source: source);
  if (file != null) {
    return await file.readAsBytes();
  }
}
// for displaying snackbars
showSnackBar(BuildContext context, String text) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}