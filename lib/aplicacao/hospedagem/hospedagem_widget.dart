import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'hospedagem_model.dart';
export 'hospedagem_model.dart';

class HospedagemWidget extends StatefulWidget {
  const HospedagemWidget({Key? key}) : super(key: key);

  @override
  _HospedagemWidgetState createState() => _HospedagemWidgetState();
}

class _HospedagemWidgetState extends State<HospedagemWidget> {
  late HospedagemModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HospedagemModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Divider(
                height: 40.0,
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              Container(
                width: 120.0,
                height: 120.0,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://picsum.photos/seed/831/600',
                  fit: BoxFit.cover,
                ),
              ),
              Divider(
                height: 40.0,
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('PaginaInicial');
                    },
                    child: ListTile(
                      title: Text(
                        FFLocalizations.of(context).getText(
                          'gw5wc41w' /* Pagina Inicial */,
                        ),
                        style: FlutterFlowTheme.of(context).labelLarge,
                      ),
                      subtitle: Text(
                        FFLocalizations.of(context).getText(
                          'gz8eunak' /* Clique aqui para acessar */,
                        ),
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w200,
                            ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).accent2,
                        size: 20.0,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('Documentacao');
                    },
                    child: ListTile(
                      title: Text(
                        FFLocalizations.of(context).getText(
                          'q7u75cfn' /* Documentação */,
                        ),
                        style: FlutterFlowTheme.of(context).labelLarge,
                      ),
                      subtitle: Text(
                        FFLocalizations.of(context).getText(
                          'sj8z9gy4' /* Clique aqui para acessar */,
                        ),
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w200,
                            ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).accent2,
                        size: 20.0,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('Hospedagem');
                    },
                    child: ListTile(
                      title: Text(
                        FFLocalizations.of(context).getText(
                          'ml7xer3o' /* Hospedagem */,
                        ),
                        style: FlutterFlowTheme.of(context).labelLarge,
                      ),
                      subtitle: Text(
                        FFLocalizations.of(context).getText(
                          'fc5p2ywu' /* Clique aqui para acessar */,
                        ),
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w200,
                            ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).accent2,
                        size: 20.0,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('Hospitais');
                    },
                    child: ListTile(
                      title: Text(
                        FFLocalizations.of(context).getText(
                          'w4jnz85n' /* Saúde */,
                        ),
                        style: FlutterFlowTheme.of(context).labelLarge,
                      ),
                      subtitle: Text(
                        FFLocalizations.of(context).getText(
                          '744ubpq1' /* Clique aqui para acessar */,
                        ),
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w200,
                            ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).accent2,
                        size: 20.0,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('LoginInicial');
                    },
                    child: ListTile(
                      title: Text(
                        FFLocalizations.of(context).getText(
                          'c1kbhj08' /* Sair */,
                        ),
                        style: FlutterFlowTheme.of(context).labelLarge,
                      ),
                      subtitle: Text(
                        FFLocalizations.of(context).getText(
                          'yxxpj9gz' /* Clique aqui para sair */,
                        ),
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w200,
                            ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).accent2,
                        size: 20.0,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  scaffoldKey.currentState!.openDrawer();
                },
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.1, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '1qv3wdpm' /*     Hospedagem - Housing - Alo... */,
                  ),
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ],
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Container(
                width: 100.0,
                height: 686.7,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).accent4,
                      ),
                      Container(
                        width: double.infinity,
                        color: FlutterFlowTheme.of(context).btnText,
                        child: ExpandableNotifier(
                          initialExpanded: false,
                          child: ExpandablePanel(
                            header: Align(
                              alignment: AlignmentDirectional(0.25, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 20.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'rf3uzjj4' /* Abrigos Públicos */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                ),
                              ),
                            ),
                            collapsed: Container(
                              width: MediaQuery.of(context).size.width * 1.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'xahwkohp' /* Federal Government Program */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .customColor1,
                                        fontWeight: FontWeight.w800,
                                      ),
                                ),
                              ),
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'r0gsat2v' /* Onde conseguir abrigamento?
Se... */
                                    ,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0x8A000000),
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).accent4,
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: ExpandableNotifier(
                          initialExpanded: false,
                          child: ExpandablePanel(
                            header: Align(
                              alignment: AlignmentDirectional(0.25, 0.15),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 10.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'je70ktki' /* CRAS - Centro de Referência da... */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                ),
                              ),
                            ),
                            collapsed: Container(
                              width: MediaQuery.of(context).size.width * 1.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '66qktaom' /* Federal Government Program */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .customColor1,
                                        fontWeight: FontWeight.w800,
                                      ),
                                ),
                              ),
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'ok79l904' /* O que é CRAS?

O Centro de Ref... */
                                    ,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0x8A000000),
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
