import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_state_management/controllers/counter_controller.dart';

final counterProvider = ChangeNotifierProvider<CounterController>((ref) => CounterController());
