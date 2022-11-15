import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state1/pages/counter_repository.dart';

final counterProvider = StateNotifierProvider<CounterRepository, int>((ref) {
  return CounterRepository();
});
