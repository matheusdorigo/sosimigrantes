import '../database.dart';

class EstadosTable extends SupabaseTable<EstadosRow> {
  @override
  String get tableName => 'Estados';

  @override
  EstadosRow createRow(Map<String, dynamic> data) => EstadosRow(data);
}

class EstadosRow extends SupabaseDataRow {
  EstadosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EstadosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get estado => getField<String>('Estado');
  set estado(String? value) => setField<String>('Estado', value);

  String? get sigla => getField<String>('Sigla');
  set sigla(String? value) => setField<String>('Sigla', value);
}
