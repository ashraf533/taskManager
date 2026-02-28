import '/backend/ai_agents/ai_agent.dart';
import '/components/select_options_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'agent_test_model.dart';
export 'agent_test_model.dart';

class AgentTestWidget extends StatefulWidget {
  const AgentTestWidget({
    super.key,
    String? parameter1,
    String? parameter2,
    String? parameter3,
    String? parameter4,
  })  : this.parameter1 = parameter1 ?? 'false',
        this.parameter2 = parameter2 ?? 'false',
        this.parameter3 = parameter3 ?? 'false',
        this.parameter4 = parameter4 ?? '';

  final String parameter1;
  final String parameter2;
  final String parameter3;
  final String parameter4;

  @override
  State<AgentTestWidget> createState() => _AgentTestWidgetState();
}

class _AgentTestWidgetState extends State<AgentTestWidget> {
  late AgentTestModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AgentTestModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Form(
          key: _model.formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).alternate,
                  borderRadius: 60.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  icon: Icon(
                    Icons.add_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.6,
                            child: SelectOptionsWidget(
                              action: (image, video, audio, pdf) async {
                                safeSetState(() {});
                              },
                            ),
                          ),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  },
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          child: TextFormField(
                            controller: _model.textController,
                            focusNode: _model.textFieldFocusNode,
                            autofocus: true,
                            textCapitalization: TextCapitalization.sentences,
                            textInputAction: TextInputAction.send,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Start typing here...',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontStyle,
                                  ),
                              errorStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).error,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 56.0, 16.0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                            maxLines: 12,
                            minLines: 1,
                            cursorColor: FlutterFlowTheme.of(context).primary,
                            validator: _model.textControllerValidator
                                .asValidator(context),
                            inputFormatters: [
                              if (!isAndroid && !isiOS)
                                TextInputFormatter.withFunction(
                                    (oldValue, newValue) {
                                  return TextEditingValue(
                                    selection: newValue.selection,
                                    text: newValue.text.toCapitalization(
                                        TextCapitalization.sentences),
                                  );
                                }),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 6.0, 4.0),
                          child: FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context).accent1,
                            icon: Icon(
                              Icons.send_rounded,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 20.0,
                            ),
                            onPressed: () async {
                              if (_model.formKey.currentState == null ||
                                  !_model.formKey.currentState!.validate()) {
                                return;
                              }
                              await callAiAgent(
                                context: context,
                                prompt: _model.textController.text,
                                imageUrl: widget!.parameter1,
                                audioUrl: widget!.parameter2,
                                videoUrl: widget!.parameter3,
                                pdfUrl: widget!.parameter4,
                                threadId: random_data.randomString(
                                  6,
                                  10,
                                  true,
                                  true,
                                  true,
                                ),
                                agentCloudFunctionName: 'contentChecking',
                                provider: 'GOOGLE',
                                agentJson:
                                    '{\"status\":\"LIVE\",\"identifier\":{\"name\":\"contentChecking\",\"key\":\"rvvg8\"},\"name\":\"ContentChecking\",\"description\":\"Detects and flags inappropriate or offensive user-generated content, such as explicit language or NSFW images, video, and audio in the app. Notifies administrators to prevent harmful data entry.\",\"aiModel\":{\"provider\":\"GOOGLE\",\"model\":\"gemini-2.5-pro\",\"parameters\":{\"temperature\":{\"inputValue\":1},\"maxTokens\":{\"inputValue\":32000},\"topP\":{\"inputValue\":0.95}},\"messages\":[{\"role\":\"SYSTEM\",\"text\":\"You are a content moderation agent. Your job is to analyze user input—text, video, audio, images, and files—and determine whether the content is inappropriate. If the content includes profanity, hate speech, adult or explicit material, mark it as \\\"Flagged\\\". Otherwise, mark it as \\\"Clean\\\". Be strict with adult content and sensitive to inappropriate expressions.\"},{\"role\":\"USER\",\"text\":\"You’re such a bitch, stop talking!\"},{\"role\":\"ASSISTANT\",\"text\":\"Flagged\"},{\"role\":\"USER\",\"text\":\"Hello, I need help with my account settings.\"},{\"role\":\"ASSISTANT\",\"text\":\"Clean\"},{\"role\":\"USER\",\"text\":\"Upload video and Image of NSF\"},{\"role\":\"ASSISTANT\",\"text\":\"Flagged\"},{\"role\":\"USER\",\"text\":\"audio with inappropriate word\"},{\"role\":\"ASSISTANT\",\"text\":\"Flagged\"},{\"role\":\"USER\",\"text\":\"PDF and files with NSF and inaapropriate content that can\'t be show to public\"},{\"role\":\"ASSISTANT\",\"text\":\"Flagged\"}]},\"requestOptions\":{\"requestTypes\":[\"PLAINTEXT\",\"IMAGE\",\"AUDIO\",\"VIDEO\",\"PDF\"]},\"responseOptions\":{\"responseType\":\"PLAINTEXT\"}}',
                                responseType: 'PLAINTEXT',
                              ).then((generatedText) {
                                safeSetState(
                                    () => _model.agentReply = generatedText);
                              });

                              safeSetState(() {});
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
