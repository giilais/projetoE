import 'package:projetoE/app/modules/chat_list/chat/chat_module.dart';
import 'package:projetoE/app/modules/chat_list/chat_list_controller.dart';
import 'package:projetoE/app/repositories/chat_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projetoE/app/modules/chat_list/chat_list_page.dart';

class ChatListModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ChatRepository()),
        Bind((i) => ChatListController(i.get())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ChatListPage()),
        Router('/chat', module: ChatModule()),
      ];

  static Inject get to => Inject<ChatListModule>.of();
}
