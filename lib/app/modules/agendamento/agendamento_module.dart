import 'package:projetoE/app/modules/agendamento/agendamento_controller.dart';
import 'package:projetoE/app/repositories/agendamento_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projetoE/app/modules/agendamento/agendamento_page.dart';

class AgendamentoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AgendamentoRepository()),
        Bind((i) => AgendamentoController(i.get<AgendamentoRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router(
          Modular.initialRoute,
          child: (_, args) => AgendamentoPage(
            fornecedor: args.data['fornecedor'],
            servicos: args.data['servicos'],
          ),
        ),
      ];

  static Inject get to => Inject<AgendamentoModule>.of();
}
