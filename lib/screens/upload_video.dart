import 'dart:io';
import 'package:flutter/material.dart';

import 'package:path_provider/path_provider.dart';
import 'package:file_picker/file_picker.dart';

class UploadVideo extends StatefulWidget {
  const UploadVideo({super.key});

  @override
  State<UploadVideo> createState() => _UploadVideoState();
}

class _UploadVideoState extends State<UploadVideo> {
  Future<void> _uploadVideo() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.video,
    );

    if (result != null) {
      File file = File(result.files.single.path!);

      Directory directory = await getApplicationDocumentsDirectory();
      String filePath = '${directory.path}/video.mp4';

      await file.copy(filePath);

      // Show a success message to the user
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Video uploaded successfully!'),
        ),
      );
    } else {
      // User canceled the file picker
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: _uploadVideo,
                child: const Text("Upload video"),
              ),
              ElevatedButton(
                onPressed: _uploadVideo,
                child: const Text("Upload video"),
              ),
            ],
          ),
        ));
  }
}
