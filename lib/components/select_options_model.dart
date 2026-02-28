import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'select_options_widget.dart' show SelectOptionsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SelectOptionsModel extends FlutterFlowModel<SelectOptionsWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadImagesAgent = false;
  FFUploadedFile uploadedLocalFile_uploadImagesAgent =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadImagesAgent = '';

  bool isDataUploading_uploadVideoAgent = false;
  FFUploadedFile uploadedLocalFile_uploadVideoAgent =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadVideoAgent = '';

  bool isDataUploading_uploadAudioAgent = false;
  FFUploadedFile uploadedLocalFile_uploadAudioAgent =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadAudioAgent = '';

  bool isDataUploading_uploadPdfAgent = false;
  FFUploadedFile uploadedLocalFile_uploadPdfAgent =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadPdfAgent = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
