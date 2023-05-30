import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'teste_flag_model.dart';
export 'teste_flag_model.dart';

class TesteFlagWidget extends StatefulWidget {
  const TesteFlagWidget({Key? key}) : super(key: key);

  @override
  _TesteFlagWidgetState createState() => _TesteFlagWidgetState();
}

class _TesteFlagWidgetState extends State<TesteFlagWidget> {
  late TesteFlagModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TesteFlagModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 605.0,
          height: 314.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
        ),
      ],
    );
  }
}
