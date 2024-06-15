import 'package:belajar_statemanagement/provider/done_module_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ModuleList extends StatefulWidget {
  final List<String> doneModuleList;
  const ModuleList({Key? key, required this.doneModuleList}) : super(key: key);

  @override
  State<ModuleList> createState() => _ModuleListState();
}

class _ModuleListState extends State<ModuleList> {
  final List<String> _moduleList = const [
    'Modul 1 - Bangun Tidur',
    'Modul 2 - Tidur Lagi',
    'Modul 3 - Mandi',
    'Modul 4 - Makan',
    'Modul 5 - Belajar Flutter',
    'Modul 6 - Tidur Lagi',
    'Modul 7 - Mandi lagi',
    'Modul 8 - Belajar Flutter lagi',
    'Modul 9 - Makan Lagi',
    'Modul 10 - Tidur Lagi',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Consumer<DoneModuleProvider>(
          builder: (context, doneModuleProvider, child) {
            return ModuleTile(
              moduleName: _moduleList[index],
              isDone: doneModuleProvider.doneModuleList
                  .contains(_moduleList[index]),
              onClick: () {
                doneModuleProvider.complete(_moduleList[index]);
              },
            );
          },
        );
      },
      itemCount: _moduleList.length,
    );
  }
}

class ModuleTile extends StatefulWidget {
  final String moduleName;
  final bool isDone;
  final Function() onClick;
  const ModuleTile(
      {super.key,
      required this.moduleName,
      required this.isDone,
      required this.onClick});

  @override
  State<ModuleTile> createState() => _ModuleTileState();
}

class _ModuleTileState extends State<ModuleTile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
        title: Text(widget.moduleName),
        trailing: widget.isDone
            ? const Icon(Icons.done)
            : ElevatedButton(onPressed: widget.onClick, child: Text('Done')));
  }
}
