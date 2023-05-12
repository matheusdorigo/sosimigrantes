import '../database.dart';

class TelaLoginTable extends SupabaseTable<TelaLoginRow> {
  @override
  String get tableName => 'TelaLogin';

  @override
  TelaLoginRow createRow(Map<String, dynamic> data) => TelaLoginRow(data);
}

class TelaLoginRow extends SupabaseDataRow {
  TelaLoginRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TelaLoginTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get senha => getField<String>('senha');
  set senha(String? value) => setField<String>('senha', value);

  String? get login => getField<String>('login');
  set login(String? value) => setField<String>('login', value);
}
