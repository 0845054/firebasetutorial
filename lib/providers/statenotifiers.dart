import 'package:hooks_riverpod/hooks_riverpod.dart';


class MsgList extends StateNotifier<List<String>> {
  MsgList() : super([]);

  void addMsgList(String input) => {state = [input,...state]};
  void clearMsgList() => {state = []};
}