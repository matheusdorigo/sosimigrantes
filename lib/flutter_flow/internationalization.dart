import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['pt', 'en', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? ptText = '',
    String? enText = '',
    String? esText = '',
  }) =>
      [ptText, enText, esText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // PaginaInicial
  {
    '6cjgmifl': {
      'pt': 'Utilidades - Telefones úteis',
      'en': 'Utilities - Useful telephones',
      'es': 'Utilidades - Teléfonos útiles',
    },
    'pz706m3g': {
      'pt': 'Pagina Inicial',
      'en': 'Home page',
      'es': 'Página de inicio',
    },
    'qt8py1qz': {
      'pt': 'Clique aqui para acessar',
      'en': 'Click here to access',
      'es': 'Haga clic aquí para acceder',
    },
    'jvcttjk2': {
      'pt': 'Documentação',
      'en': 'Documentation',
      'es': 'Documentación',
    },
    'qim7zf2c': {
      'pt': 'Clique aqui para acessar',
      'en': 'Click here to access',
      'es': 'Haga clic aquí para acceder',
    },
    'r6hsxp7v': {
      'pt': 'Hospedagem',
      'en': 'accommodation',
      'es': 'alojamiento',
    },
    'zcvs8o5f': {
      'pt': 'Clique aqui para acessar',
      'en': 'Click here to access',
      'es': 'Haga clic aquí para acceder',
    },
    'biom6lkz': {
      'pt': 'Saúde',
      'en': 'Health',
      'es': 'Salud',
    },
    '97nrrdqm': {
      'pt': 'Clique aqui para acessar',
      'en': 'Click here to access',
      'es': 'Haga clic aquí para acceder',
    },
    'pedaxtzf': {
      'pt': 'Sair',
      'en': 'To go out',
      'es': 'Salir',
    },
    'rmcqjua5': {
      'pt': 'Clique aqui para sair',
      'en': 'Click here to leave',
      'es': 'Haga clic aquí para salir',
    },
    'ouyfem8b': {
      'pt': 'Telefones Úteis',
      'en': 'Useful Telephones',
      'es': 'Teléfonos Útiles',
    },
    '6xyib6bg': {
      'pt': 'Utilidade',
      'en': 'Utility',
      'es': 'Utilidad',
    },
    '4neqfs94': {
      'pt': 'Telefone',
      'en': 'Telephone',
      'es': 'Teléfono',
    },
    'qmznn39s': {
      'pt': 'Tipo',
      'en': 'Type',
      'es': 'Tipo',
    },
    'ka9bqqjv': {
      'pt': 'Telefones Úteis',
      'en': 'Useful Telephones',
      'es': 'Teléfonos Útiles',
    },
    'p2b4aan4': {
      'pt': 'Menu',
      'en': 'Menu',
      'es': 'Menú',
    },
  },
  // Documentacao
  {
    'dactk3y4': {
      'pt': '   Documentação',
      'en': 'Documentation - Documentation - Documentation',
      'es': 'Documentación - Documentación - Documentación',
    },
    '749k498q': {
      'pt': 'Carteira de Registro Nacional Migratório (CRNM)',
      'en': 'National Migration Registry Card (CRNM)',
      'es': 'Tarjeta de Registro Nacional de Migración (CRNM)',
    },
    'f5l136t4': {
      'pt': 'O que é?',
      'en': 'What is it?',
      'es': '¿Qué es?',
    },
    'ju3l2pee': {
      'pt':
          'O CRNM é a Carteira de Registro Nacional Migratório - também conhecido popularmente como “Carteira do estrangeiro ou Documento de identificação do estrangeiro”, trata-se do documento mais importante na vida de um migrante que se deseja morar no Brasil.',
      'en':
          'The CRNM is the National Migratory Registration Card - also popularly known as “Foreigner\'s License or Foreigner\'s Identification Document”, it is the most important document in the life of a migrant who wants to live in Brazil.',
      'es':
          'El CRNM es la Tarjeta Nacional de Registro Migratorio - también conocida popularmente como “Licencia de Extranjería o Documento de Identidad de Extranjero”, es el documento más importante en la vida de un migrante que quiere vivir en Brasil.',
    },
    'pah1mzxv': {
      'pt': 'Quem pode solicitar?',
      'en': 'Who can apply?',
      'es': 'Quién puede aplicar?',
    },
    '3ld8whuw': {
      'pt': 'Estrangeiros que possuem...',
      'en': 'Foreigners who own...',
      'es': 'Extranjeros propietarios...',
    },
    '0icuebv2': {
      'pt':
          'Após a entrevista no CONARE, você receberá a informação por meio do Sisconare se foi reconhecido como refugiado.\n\nPara solicitar a sua CRNM será preciso:\n\nReunir os documentos necessários. Para saber quais são, acesse o site da Polícia Federal\nVerifique os custos da emissão da sua carteira no site da Polícia Federal.\nPreencha o formulário;\nRealize o agendamento para comparecer à Polícia Federal e retirar a sua CRNM.\nCaso você precise de ajuda nesse processo, entre em contato com a organização parceira do ACNUR mais próxima.',
      'en':
          'After the interview at CONARE, you will receive information through Sisconare if you have been recognized as a refugee.\n\nTo apply for your CRNM you will need:\n\nGather the necessary documents. To find out what they are, visit the Federal Police website\nCheck the costs of issuing your license on the Federal Police website.\nFill the form;\nMake an appointment to attend the Federal Police and collect your CRNM.\nIf you need help with this process, please contact the nearest UNHCR partner organisation.',
      'es':
          'Después de la entrevista en CONARE, recibirá información a través de Sisconare si ha sido reconocido como refugiado.\n\nPara solicitar tu CRNM necesitarás:\n\nReúna los documentos necesarios. Para saber cuáles son, visite el sitio web de la Policía Federal\nConsulte los costos de emisión de su licencia en el sitio web de la Policía Federal.\nCompleta el formulario;\nHaga una cita para asistir a la Policía Federal y recoger su CRNM.\nSi necesita ayuda con este proceso, comuníquese con la organización socia de ACNUR más cercana.',
    },
    '1b6j05qu': {
      'pt': 'Sian – Sistema de Informações do Arquivo Nacional',
      'en': 'Sian – National Archive Information System',
      'es': 'Sian - Sistema de Información del Archivo Nacional',
    },
    'sufwbw6f': {
      'pt': 'O Arquivo Nacional sobre estrangeiros no Brasil.',
      'en': 'The National Archive on Foreigners in Brazil.',
      'es': 'El Archivo Nacional de Extranjería en Brasil.',
    },
    'm0fs817x': {
      'pt':
          'O Arquivo Nacional possui milhares de documentos sobre estrangeiros no Brasil. O usuário que deseja localizar informações ou até mesmo fazer pesquisas históricas sobre imigração pode recorrer a muitos desses conjuntos documentais custodiados pela instituição. Para obter um documento que comprove a nacionalidade de algum antepassado a fim de solicitar dupla cidadania a um governo estrangeiro, o cidadão deve seguir um roteiro  de pesquisa. Para mais informacções consulte o site www. sian.an.gov.br\n',
      'en':
          'The National Archive has thousands of documents about foreigners in Brazil. The user who wants to locate information or even carry out historical research on immigration can resort to many of these document sets guarded by the institution. To obtain a document that proves the nationality of an ancestor in order to apply for dual citizenship to a foreign government, the citizen must follow a research guide. For more information, consult the website www. sian.an.gov.br',
      'es':
          'El Archivo Nacional tiene miles de documentos sobre extranjeros en Brasil. El usuario que quiera localizar información o incluso realizar investigaciones históricas sobre inmigración puede recurrir a muchos de estos conjuntos documentales custodiados por la institución. Para obtener un documento que acredite la nacionalidad de un antepasado para poder solicitar la doble ciudadanía a un gobierno extranjero, el ciudadano debe seguir una guía de investigación. Para obtener más información, consulte el sitio web www. sian.an.gov.br',
    },
    'yxsct2tz': {
      'pt': 'Refugiado x Migrante',
      'en': 'Refugee x Migrant',
      'es': 'Refugiado x Migrante',
    },
    '9jf44rb0': {
      'pt': 'Entenda a diferença...',
      'en': 'Understand the difference...',
      'es': 'Entiende la diferencia...',
    },
    'qlch7axf': {
      'pt':
          'Refugiados: Pessoas que foram forçadas a deixar seu país pois suas vidas ou integridade corriam risco, e que não podem voltar a seu país de origem porque não contam com proteção estatal. Contam com proteção internacional da Convenção de Pessoas refugiadas de 1951, do Protocolo de 1967 e da Declaração de Cartagena. Estão sob o mandato da Agência da ONU para Pessoas refugiadas (ACNUR). No Brasil, a implementação da proteção de pessoas refugiadas é definida pela Lei n.º 9.474/97. As pessoas refugiadas têm direito à proteção internacional específica definida pelo direito internacional dos refugiados, além de proteção geral dos direitos humanos.\n\n\nMigrante: Deslocamento voluntário em busca de melhores condições de vida, podem retornar a seu país de origem sem riscos e contam com proteção estatal. Não contam com proteção internacional específica, dependem das leis e processos internos de cada país. ',
      'en':
          'Refugees: People who were forced to leave their country because their lives or integrity were at risk, and who cannot return to their country of origin because they do not have state protection. They enjoy international protection under the 1951 Refugee Convention, the 1967 Protocol and the Cartagena Declaration. They are under the mandate of the UN Refugee Agency (UNHCR). In Brazil, the implementation of the protection of refugees is defined by Law n.º 9.474/97. Refugees are entitled to the specific international protection defined by international refugee law, in addition to general human rights protection.\n\n\nMigrant: Voluntary displacement in search of better living conditions, they can return to their country of origin without risk and have state protection. They do not have specific international protection, they depend on the laws and internal processes of each country.',
      'es':
          'Refugiados: Personas que se vieron obligadas a salir de su país por estar en riesgo su vida o integridad, y que no pueden regresar a su país de origen por no contar con protección estatal. Gozan de protección internacional bajo la Convención de Refugiados de 1951, el Protocolo de 1967 y la Declaración de Cartagena. Están bajo el mandato de la Agencia de la ONU para los Refugiados (ACNUR). En Brasil, la implementación de la protección de los refugiados está definida por la Ley n.º 9.474/97. Los refugiados tienen derecho a la protección internacional específica definida por el derecho internacional de los refugiados, además de la protección general de los derechos humanos.\n\n\nMigrante: Desplazamiento voluntario en busca de mejores condiciones de vida, pueden regresar a su país de origen sin riesgo y cuentan con protección estatal. No tienen protección internacional específica, dependen de las leyes y procesos internos de cada país.',
    },
    'ryrgkmfj': {
      'pt': 'Pagina Inicial',
      'en': 'Home page',
      'es': 'Página de inicio',
    },
    'myg9qojs': {
      'pt': 'Clique aqui para acessar',
      'en': 'Click here to access',
      'es': 'Haga clic aquí para acceder',
    },
    'ras9m1lc': {
      'pt': 'Documentação',
      'en': 'Documentation',
      'es': 'Documentación',
    },
    'nku9a5wf': {
      'pt': 'Clique aqui para acessar',
      'en': 'Click here to access',
      'es': 'Haga clic aquí para acceder',
    },
    '7vq4b2ao': {
      'pt': 'Hospedagem',
      'en': 'accommodation',
      'es': 'alojamiento',
    },
    'm94nvj1i': {
      'pt': 'Clique aqui para acessar',
      'en': 'Click here to access',
      'es': 'Haga clic aquí para acceder',
    },
    'eyrvo4m2': {
      'pt': 'Saúde',
      'en': 'Health',
      'es': 'Salud',
    },
    'bws8186s': {
      'pt': 'Clique aqui para acessar',
      'en': 'Click here to access',
      'es': 'Haga clic aquí para acceder',
    },
    'usxjtkm7': {
      'pt': 'Sair',
      'en': 'To go out',
      'es': 'Salir',
    },
    'dqjs8hxc': {
      'pt': 'Clique aqui para sair',
      'en': 'Click here to leave',
      'es': 'Haga clic aquí para salir',
    },
    'vvuzwwu3': {
      'pt': 'Documentação',
      'en': 'Documentation',
      'es': 'Documentación',
    },
  },
  // Hospedagem
  {
    '1qv3wdpm': {
      'pt': '    Hospedagem - Housing - Alojamiento',
      'en': 'Accommodation - Housing - Accommodation',
      'es': 'Alojamiento - Vivienda - Alojamiento',
    },
    'rf3uzjj4': {
      'pt': 'Abrigos Públicos',
      'en': 'public shelters',
      'es': 'albergues públicos',
    },
    'xahwkohp': {
      'pt': 'Federal Government Program',
      'en': 'Federal Government Program',
      'es': 'Programa del Gobierno Federal',
    },
    'r0gsat2v': {
      'pt':
          'Onde conseguir abrigamento?\nSe você chegar no país e não tiver lugar para ficar, deve procurar o Centro de Referência Especializado de Assistência Social mais próximo para informações (de segunda a sexta-feira, 08-18h). A estadia nos abrigos públicos é gratuita, no entanto, as vagas são limitadas.\n\nEmbora existam alguns abrigos especificamente projetados para receber solicitantes de refúgio e refugiados, eles têm vagas limitadas. A maioria das vagas dos abrigos estão abertas para brasileiros, refugiados e migrantes em situação de vulnerabilidade. Os abrigos costumam ter limites em relação ao período de estadia, os quais vão desde apenas uma noite até alguns meses.\n\nEm caso de dificuldades para conseguir vaga nos abrigos públicos, busque pelas organizações parceiras do ACNUR.',
      'en':
          'Where to get shelter?\nIf you arrive in the country and have no place to stay, you should contact the nearest Specialized Social Assistance Reference Center for information (Monday to Friday, 8am to 6pm). The stay in public shelters is free, however, places are limited.\n\nWhile there are some shelters specifically designed to receive asylum seekers and refugees, they have limited spaces. Most places in the shelters are open to Brazilians, refugees and migrants in vulnerable situations. Shelters often have limits on length of stay, ranging from just one night to a few months.\n\nIn case of difficulties to get a place in public shelters, look for UNHCR partner organizations.',
      'es':
          '¿Dónde conseguir refugio?\nSi llega al país y no tiene donde hospedarse, debe comunicarse con el Centro de Referencia de Asistencia Social Especializada más cercano para obtener información (de lunes a viernes, de 8 a 18 horas). La estancia en los albergues públicos es gratuita, sin embargo, las plazas son limitadas.\n\nSi bien existen algunos albergues diseñados específicamente para recibir a solicitantes de asilo y refugiados, tienen espacios limitados. La mayoría de los lugares en los albergues están abiertos para brasileños, refugiados y migrantes en situación de vulnerabilidad. Los refugios a menudo tienen límites en la duración de la estadía, que van desde solo una noche hasta algunos meses.\n\nSi tiene dificultades para conseguir un lugar en los albergues públicos, busque las organizaciones socias de ACNUR.',
    },
    'je70ktki': {
      'pt': 'CRAS - Centro de Referência da Assistência Social',
      'en': 'CRAS - Social Assistance Reference Center',
      'es': 'CRAS - Centro de Referencia de Asistencia Social',
    },
    '66qktaom': {
      'pt': 'Federal Government Program',
      'en': 'Federal Government Program',
      'es': 'Programa del Gobierno Federal',
    },
    'ok79l904': {
      'pt':
          'O que é CRAS?\n\nO Centro de Referência de Assistência Social (CRAS) é um equipamento público no qual são oferecidos serviços, programas e benefícios com o objetivo de prevenir situações de risco e de fortalecer os vínculos familiares e comunitários.\n\nO Sistema Único de Assistência Social (SUAS) está organizado por meio de uma rede de proteção social, que pode ser básica ou especial. As unidades que ofertam serviços e programas desse sistema descentralizado e participativo são chamados de CRAS e CREAS (Centro de Referência Especializado de Assistência Social).',
      'en':
          'What is CRAS?\n\nThe Social Assistance Reference Center (CRAS) is a public facility in which services, programs and benefits are offered with the aim of preventing risk situations and strengthening family and community ties.\n\nThe Unified Social Assistance System (SUAS) is organized through a social protection network, which can be basic or special. The units that offer services and programs in this decentralized and participatory system are called CRAS and CREAS (Specialized Reference Center for Social Assistance).',
      'es':
          '¿Qué es CRAS?\n\nEl Centro de Referencia de Asistencia Social (CRAS) es un establecimiento público en el que se ofrecen servicios, programas y beneficios con el objetivo de prevenir situaciones de riesgo y fortalecer los vínculos familiares y comunitarios.\n\nEl Sistema Único de Asistencia Social (SUAS) se organiza a través de una red de protección social, que puede ser básica o especial. Las unidades que ofrecen servicios y programas en este sistema descentralizado y participativo se denominan CRAS y CREAS (Centro de Referencia Especializado en Asistencia Social).',
    },
    'gw5wc41w': {
      'pt': 'Pagina Inicial',
      'en': 'Home page',
      'es': 'Página de inicio',
    },
    'gz8eunak': {
      'pt': 'Clique aqui para acessar',
      'en': 'Click here to access',
      'es': 'Haga clic aquí para acceder',
    },
    'q7u75cfn': {
      'pt': 'Documentação',
      'en': 'Documentation',
      'es': 'Documentación',
    },
    'sj8z9gy4': {
      'pt': 'Clique aqui para acessar',
      'en': 'Click here to access',
      'es': 'Haga clic aquí para acceder',
    },
    'ml7xer3o': {
      'pt': 'Hospedagem',
      'en': 'accommodation',
      'es': 'alojamiento',
    },
    'fc5p2ywu': {
      'pt': 'Clique aqui para acessar',
      'en': 'Click here to access',
      'es': 'Haga clic aquí para acceder',
    },
    'w4jnz85n': {
      'pt': 'Saúde',
      'en': 'Health',
      'es': 'Salud',
    },
    '744ubpq1': {
      'pt': 'Clique aqui para acessar',
      'en': 'Click here to access',
      'es': 'Haga clic aquí para acceder',
    },
    'c1kbhj08': {
      'pt': 'Sair',
      'en': 'To go out',
      'es': 'Salir',
    },
    'yxxpj9gz': {
      'pt': 'Clique aqui para sair',
      'en': 'Click here to leave',
      'es': 'Haga clic aquí para salir',
    },
    '3s0aw18n': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // Hospitais
  {
    'y0dvwa5k': {
      'pt': '       Hospitais',
      'en': 'Hospitals - Hospitals - Hospitals',
      'es': 'Hospitales - Hospitales - Hospitales',
    },
    '567ms1d8': {
      'pt': 'Pagina Inicial',
      'en': 'Home page',
      'es': 'Página de inicio',
    },
    '696075wy': {
      'pt': 'Clique aqui para acessar',
      'en': 'Click here to access',
      'es': 'Haga clic aquí para acceder',
    },
    'lvtcljwx': {
      'pt': 'Documentação',
      'en': 'Documentation',
      'es': 'Documentación',
    },
    '4a0dhw4y': {
      'pt': 'Clique aqui para acessar',
      'en': 'Click here to access',
      'es': 'Haga clic aquí para acceder',
    },
    '2851qvj1': {
      'pt': 'Hospedagem',
      'en': 'accommodation',
      'es': 'alojamiento',
    },
    'sm6zuq7m': {
      'pt': 'Clique aqui para acessar',
      'en': 'Click here to access',
      'es': 'Haga clic aquí para acceder',
    },
    'vwwq4w5w': {
      'pt': 'Saúde',
      'en': 'Health',
      'es': 'Salud',
    },
    'f2kfmno1': {
      'pt': 'Clique aqui para acessar',
      'en': 'Click here to access',
      'es': 'Haga clic aquí para acceder',
    },
    'xe3xdxrx': {
      'pt': 'Sair',
      'en': 'To go out',
      'es': 'Salir',
    },
    '67k97166': {
      'pt': 'Clique aqui para sair',
      'en': 'Click here to leave',
      'es': 'Haga clic aquí para salir',
    },
    '1js06w98': {
      'pt': '            Ambulância Pública - SAMU',
      'en': 'Public Ambulance - SAMU',
      'es': 'Ambulancia Publica - SAMU',
    },
    'qce6094i': {
      'pt': 'Federal Government Program',
      'en': 'Federal Government Program',
      'es': 'Programa del Gobierno Federal',
    },
    'fz205eku': {
      'pt':
          'O Serviço de Atendimento Móvel de Urgência (SAMU 192) tem como objetivo chegar precocemente à vítima após ter ocorrido alguma situação de urgência ou emergência que possa levar a sofrimento, a sequelas ou mesmo à morte. São urgências situações de natureza clínica, cirúrgica, traumática, obstétrica, pediátrica, psiquiátrica, entre outras.\n\n\nImportante: O SAMU 192 é um serviço gratuito, que funciona 24 horas, por meio da prestação de orientações e do envio de veículos tripulados por equipe capacitada, acessado pelo número \"192\" e acionado por uma Central de Regulação das Urgências.',
      'en':
          'The Mobile Emergency Care Service (SAMU 192) aims to reach the victim early after an urgent or emergency situation has occurred that could lead to suffering, sequelae or even death. Urgent situations are of a clinical, surgical, traumatic, obstetric, pediatric, psychiatric nature, among others.\n\n\nImportant: SAMU 192 is a free service, which operates 24 hours a day, providing guidance and sending vehicles manned by a trained team, accessed by the number \"192\" and activated by an Emergency Regulation Center.',
      'es':
          'El Servicio Móvil de Atención de Urgencias (SAMU 192) tiene como objetivo llegar de forma temprana a la víctima después de que se haya producido una situación de urgencia o emergencia que pueda derivar en sufrimiento, secuelas o incluso la muerte. Las situaciones de urgencia son de carácter clínico, quirúrgico, traumático, obstétrico, pediátrico, psiquiátrico, entre otros.\n\n\nImportante: SAMU 192 es un servicio gratuito, que opera las 24 horas del día, brindando orientación y envío de vehículos atendidos por un equipo capacitado, accedido por el número “192” y activado por un Centro de Regulación de Emergencias.',
    },
    'tyqv1j1w': {
      'pt': '      Unidade Básica de Saúde - UBS',
      'en': 'Basic Health Unit - UBS',
      'es': 'Unidad Básica de Salud - UBS',
    },
    't61y8m8n': {
      'pt': 'Federal Government Program',
      'en': 'Federal Government Program',
      'es': 'Programa del Gobierno Federal',
    },
    'hnyao3qp': {
      'pt':
          'Unidades Básicas de Saúde ou UBS é a designação adotada desde 2007 no Brasil por meio do Programa de Aceleração do Crescimento sendo que tais unidades desempenham as mesmas funções dos antigos Postos de Saúde sendo tal denominação gradativamente substituída por Unidade Básica de Saúde.',
      'en':
          'Basic Health Units or UBS is the designation adopted since 2007 in Brazil through the Growth Acceleration Program, and such units perform the same functions as the former Health Posts, and such denomination is gradually replaced by Basic Health Unit.',
      'es':
          'Unidades Básicas de Salud o UBS es la designación adoptada desde 2007 en Brasil a través del Programa de Aceleración del Crecimiento, y dichas unidades cumplen las mismas funciones que los antiguos Puestos de Salud, y esa denominación es reemplazada gradualmente por Unidad Básica de Salud.',
    },
    'voydsag8': {
      'pt': ' Unidades de Pronto Atendimento - UPA',
      'en': 'Emergency Care Units - UPA',
      'es': 'Unidades de Atención de Urgencias - UPA',
    },
    'sbf805nv': {
      'pt': 'Federal Government Program',
      'en': 'Federal Government Program',
      'es': 'Programa del Gobierno Federal',
    },
    '4m019cat': {
      'pt':
          'Unidade de Pronto Atendimento, abreviadamente UPA ou UPA 24h, é uma espécie de posto de saúde instalada em diversas cidades do Brasil. São responsáveis por concentrar os atendimentos de saúde de média complexidade, compondo uma rede organizada em conjunto com a atenção básica e a atenção hospitalar.',
      'en':
          'Urgent Care Unit, abbreviated UPA or UPA 24h, is a kind of health post installed in several cities in Brazil. They are responsible for concentrating medium-complexity health care, composing a network organized together with primary care and hospital care.',
      'es':
          'La Unidad de Atención de Urgencias, abreviada UPA o UPA 24h, es una especie de puesto de salud instalado en varias ciudades de Brasil. Son los encargados de concentrar la atención sanitaria de mediana complejidad, componiendo una red organizada junto con la atención primaria y la atención hospitalaria.',
    },
    'y8juhcjn': {
      'pt': 'Encontre um hospital',
      'en': 'find a hospital',
      'es': 'encontrar un hospital',
    },
    '5mdack0p': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // TesteMapa
  {
    '8je87pjx': {
      'pt': 'Pesquisar no Mapa',
      'en': 'Search on Map',
      'es': 'Buscar en el mapa',
    },
    'xghird1k': {
      'pt': 'Selecionar região',
      'en': 'select region',
      'es': 'seleccione región',
    },
    '5r25f0sc': {
      'pt': 'Buscar Hospitais',
      'en': 'Search Hospitals',
      'es': 'Buscar hospitales',
    },
  },
  // LoginInicial
  {
    'f70u3j5i': {
      'pt': 'SOS Imigrantes',
      'en': 'SOS Immigrantes',
      'es': 'Inmigrantes SOS',
    },
    'wa4bnl9h': {
      'pt': 'Um app para facilitar a sua chegada ao Brasil.',
      'en': 'An app to facilitate your arrival in Brazil.',
      'es': 'Una aplicación para facilitar su llegada a Brasil.',
    },
    'utr4znio': {
      'pt': 'Acessar',
      'en': 'Access',
      'es': 'Acceso',
    },
    'wbyjc2af': {
      'pt': 'Criar Conta',
      'en': 'Create an account',
      'es': 'Crea una cuenta',
    },
    '2xabn8v9': {
      'pt': 'Bem vindo',
      'en': 'Welcome - Welcome - Bienvenido',
      'es': 'Bienvenido - Bienvenido - Bienvenido',
    },
    'otmkduob': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // Logar
  {
    'tjtvebyr': {
      'pt': 'Autenticação',
      'en': 'Authentication',
      'es': 'Autenticación',
    },
    'fvmhe8dy': {
      'pt': 'Bem vindo,',
      'en': 'Welcome,',
      'es': 'Bienvenido,',
    },
    '6nhzrumg': {
      'pt': 'Email Address',
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
    },
    'd1q5ewyu': {
      'pt': 'Insira seu e-mail aqui...',
      'en': 'Enter your email here...',
      'es': 'Introduzca su correo electrónico aquí...',
    },
    '1873p6ga': {
      'pt': 'Password',
      'en': 'Password',
      'es': 'Contraseña',
    },
    'wjm2titb': {
      'pt': 'Insira sua senha aqui...',
      'en': 'Enter your password here...',
      'es': 'Ingrese su contraseña aquí...',
    },
    'lzcmru4l': {
      'pt': 'Esqueceu sua senha ?',
      'en': 'Forgot your password ?',
      'es': 'Olvidaste tu contraseña ?',
    },
    'wxqm34f4': {
      'pt': 'Login',
      'en': 'Login',
      'es': 'Acceso',
    },
    'ib0oekpg': {
      'pt': 'Criar Conta',
      'en': 'Create an account',
      'es': 'Crea una cuenta',
    },
    '0frzxpya': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // Registrar
  {
    '2sidvvor': {
      'pt': 'Criar conta',
      'en': 'Create an account',
      'es': 'Crea una cuenta',
    },
    'pww62s8q': {
      'pt':
          'Crie sua conta, preenchendo as informações abaixo para acessar o aplicativo.',
      'en':
          'Create your account by filling in the information below to access the application.',
      'es':
          'Cree su cuenta completando la información a continuación para acceder a la aplicación.',
    },
    'o07q5sn4': {
      'pt': 'Seu endereço de e-mail',
      'en': 'Your email address',
      'es': 'Su dirección de correo electrónico',
    },
    'af4rfjcd': {
      'pt': 'Insira seu e-mail aqui....',
      'en': 'Enter your email here....',
      'es': 'Introduzca su correo electrónico aquí....',
    },
    'wmycs8ju': {
      'pt': 'Senha',
      'en': 'Password',
      'es': 'Contraseña',
    },
    'n7wkn039': {
      'pt': 'Insira sua senha aqui....',
      'en': 'Enter your password here....',
      'es': 'Ingrese su contraseña aquí....',
    },
    's2vpbdse': {
      'pt': 'Senha',
      'en': 'Password',
      'es': 'Contraseña',
    },
    'e9gfvt8e': {
      'pt': 'Repita sua senha aqui....',
      'en': 'Repeat your password here....',
      'es': 'Repite aquí tu contraseña....',
    },
    'wdrpw4oi': {
      'pt': 'Criar Conta',
      'en': 'Create an account',
      'es': 'Crea una cuenta',
    },
    'k3hpb548': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // RecuperarSenha
  {
    'j7l6sjj9': {
      'pt': 'Recuperar Senha',
      'en': 'Recover Password',
      'es': 'Recuperar contraseña',
    },
    'v3we6g26': {
      'pt':
          'Nós lhe enviaremos um e-mail com um link para redefinir sua senha, digite abaixo o e-mail associado à sua conta.',
      'en':
          'We will send you an email with a link to reset your password, enter the email associated with your account below.',
      'es':
          'Le enviaremos un correo electrónico con un enlace para restablecer su contraseña, ingrese el correo electrónico asociado con su cuenta a continuación.',
    },
    'd6bzqr2c': {
      'pt': 'Seu endereço de e-mail...',
      'en': 'Your email address...',
      'es': 'Su dirección de correo electrónico...',
    },
    '0ggjm3by': {
      'pt': 'Insira seu endereço de e-mail...',
      'en': 'Enter your email address...',
      'es': 'Introduzca su dirección de correo electrónico...',
    },
    '7410z1hh': {
      'pt': 'Enviar Link',
      'en': 'Send Link',
      'es': 'Enviar enlace',
    },
    'vds65jog': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // Idioma
  {
    'bskkkvqj': {
      'pt': 'Selecionar Idioma',
      'en': 'Select Language',
      'es': 'Seleccione el idioma',
    },
    'bc4twiui': {
      'pt': 'Home',
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // Miscellaneous
  {
    'qt66cuae': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '1wlgvxcr': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'ttmo2x7c': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'tcunsius': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'xy692dtb': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '8acvvz4w': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '5u549ubn': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '8k6bc5su': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'v5owyqa6': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '3zd9g6py': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'kt1qotz5': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '9z91yzol': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '26a34c97': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'sdul98m9': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '7elxef8n': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'r9mc1sr1': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'qkb3d9mc': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '3h2l00n6': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '9g1g5f97': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'w7607zk3': {
      'pt': '',
      'en': '',
      'es': '',
    },
    '7vlh5pui': {
      'pt': '',
      'en': '',
      'es': '',
    },
    'x450ionk': {
      'pt': '',
      'en': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
