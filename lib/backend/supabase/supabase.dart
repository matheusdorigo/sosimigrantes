import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://mjkkbmjvcgrzsfiqtwoh.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1qa2tibWp2Y2dyenNmaXF0d29oIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODAyNzg3ODgsImV4cCI6MTk5NTg1NDc4OH0.DLNBG2V8mN-vOL71OIelzdPXZK1VaiEmUCJF2Tserx0';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
      );
}
