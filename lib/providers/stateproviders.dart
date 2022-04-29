import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'statenotifiers.dart';

final msgListProvider =
    StateNotifierProvider<MsgList>((_) => MsgList());