import 'package:belajar_statemanagement/view/pages/done_module_list.dart';
import 'package:belajar_statemanagement/view/widgets/module_list.dart';
import 'package:flutter/material.dart';

class ModulePage extends StatefulWidget {
  const ModulePage({Key? key}) : super(key: key);

  @override
  _ModulePageState createState() => _ModulePageState();
}

class _ModulePageState extends State<ModulePage> {
  final List<String> doneModuleList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Module Page'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DoneModuleList(
                        doneModuleList: doneModuleList,
                      ),
                    ));
              },
              icon: const Icon(
                Icons.done,
                color: Colors.black87,
              ))
        ],
      ),
      body: ModuleList(
        doneModuleList: doneModuleList,
      ),
    );
  }
}
